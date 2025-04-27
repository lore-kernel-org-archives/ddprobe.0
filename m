Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C110149DF0
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745719794; cv=none; b=IgPk3ycO5ogsnUnu/Pwb7NmRu7AivFSFXmEK32gAxGFZpBGrsUpnJFuHoA9A5+eUcD9SGFNPi7xbub8oN+cYK6FIM82Z+8k5vfsLHWoXaVEYqyyk+8g0rimsfpWxuOD077pgZyJVMZjmyeoulUQcIcmadnbtVfeXHEr2crvHQB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745719794; c=relaxed/simple;
	bh=IvibitVNK7tuhfbI/TcujyQmKPADMDQBf8O731mYES0=;
	h=To:Subject:From:Message-Id:Date; b=bk0lfEwiEjMsCkFdVYNCdKVpvECOKBmQ0SpY04krOKHCoZaJwpIkdse+nR9odL8TaxzmJXqpy4vRqNwdFQV5jgjuXuQiH6jpx45hfVXlUrUJxb5lLb1PE2zcIUSY8UpAohXqhVs7l72F8jcGdBi2mY1PaqawNM+dQIyg8XHv/0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2/jg1TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2/jg1TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F75C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745719793;
	bh=IvibitVNK7tuhfbI/TcujyQmKPADMDQBf8O731mYES0=;
	h=To:Subject:From:Date:From;
	b=a2/jg1TZbD+iYaXXG6OGIBqINi4tE8Sad0aD0/79aL9BnPuhnDnf+5wxq3dAdr8jm
	 RcKVaSYijKrxybeSu+CuOFooEt0aJWxJbVOgq1pVWRF6VqvUM+2zu8x0xDb2VSMwXN
	 YiibpIbTB8N4dTfO0HOKFUCvzF9MgEZFO1YF01ECofmdPK2WKlCr1FFilKbfKOYTis
	 iO4EED32m79v6SdLGk69rEresNTroq9yK+H/miX1BS1HjkWgu6ChQcXQnqwHa4535i
	 4oyeZMm2gfrnvKFGf0tsEqFlLSWv9HtcVxNIW3R4h0evivSstgrE2xH2mkpLDEGhZm
	 g082TwuqFJUPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDCC369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571979357.13199.9753302127891218514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2416065e73cd6d9a0433157354cf353dde08cbc16f9eac58b011b4bddf192e43
Date: Sun, 27 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745719793
