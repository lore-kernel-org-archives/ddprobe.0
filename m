Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1409330CD97
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756264194; cv=none; b=tWk/fVgAqJtPmZAFpDjwYmSgbfxY8KoJC5E65wxrtGMLd72JZPI2C6LgHMM8K0E6E2XgLblTN23OyCUu/Ibs6JCkQURGNI+CKEb8kZVm7S+lK9sMt3IIftU+btCEmTccJEZ2SACh7kk/yx2tY1IkMHuuFZDONVVas1AaaM5VoY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756264194; c=relaxed/simple;
	bh=JR2r9gE0lrFoKZEKeyX7aDtKwm/Wgna0JpcEVl+Owxc=;
	h=To:Subject:From:Message-Id:Date; b=HYJx3svCSe/w4n1Vs0w6vCv/eh5otsKmL1ae1+dGsQyrlPVb+zQofgywMpkbIMcdtf1msI5oE48yx/Duv/vcUeegq+yvqtgna9VtNBn0qF9RzWlGOFmAcHntU8RLuUO9YPeJpdpY23qarC9tu/KQBWi9kNH+/2/J4LIb2zikGa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DT2UbPgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DT2UbPgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6B7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756264193;
	bh=JR2r9gE0lrFoKZEKeyX7aDtKwm/Wgna0JpcEVl+Owxc=;
	h=To:Subject:From:Date:From;
	b=DT2UbPgJkbXsPZ8xcD5/5FW0PhubUnhXpQWMrtdGbdtKPaztpDjrUlUlQe9Eoh5Lm
	 icRcC89Gko9CQ5AwDIub06IgD+f7EnMxMz+4D2MZaykMxoDTl6M5tsubjIQe8xkyi7
	 f6sSWEIsUdhcAn/Ngg8OFFB3eNjqKMnREt+3i+yd62DFZFYhM+8HtTA9l6j6NfgRYI
	 yOg6Ewy5Dq/Dernm8g//jUnqsprmmhi7Kiz0brlThXMoHKeDDIOzzA9pAy/c7k1VOp
	 mt0XpKKoWE51tKiwadK96Jt9YlYupZP/db5UUVVsDGCK2MQFyAzKfE6/3N0QZ1agct
	 Y1389lCYz7sRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF3DCA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626419357.11470.1544789525344640899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8e175276bb192d7a4949d03dc6b184e6824516006f9dd9ab7f8fe58e4ef08f
Date: Wed, 27 Aug 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756264193
