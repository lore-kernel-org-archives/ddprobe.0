Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD2022615
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735168554; cv=none; b=PawlRQbGpmIZHN7gjnsVRMEmglYq3WxX09T+KXEgOkgy2g9DU1+FXSzHWxR8emI2axm3hxx0RJo+Kstr/zFjbVD5adcec+jEdodN8PGYo4IPHHXT28eO7ydzf9dtzoVSge9stLrDVkzlaD4WPgkG+qXAoZi7Npj86FlZ8EBiLkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735168554; c=relaxed/simple;
	bh=Kni/vCd7Gbf9pd05s5J2SXBnAZ7sKUeUJUNXDth5f/o=;
	h=To:Subject:From:Message-Id:Date; b=NbvxkSDjdgOlwEjCr67h5/KWBTWXonDhpG1DFn2wr2lWF5o67qkWEOj+xZvza07TQ6XaUs0Algx6oW74/X0ZpMIIIY2Jh+gTvCW/pcdCygdOjN1Y+YBfhTeo0RXrLaFrNg6ksows030NS+Nby87nSMCJUKt9A8x3fpbzUOck2B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkHNPC/H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkHNPC/H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6ABC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735168553;
	bh=Kni/vCd7Gbf9pd05s5J2SXBnAZ7sKUeUJUNXDth5f/o=;
	h=To:Subject:From:Date:From;
	b=hkHNPC/HnKoNgDqT3RPajJE7hiz26VF2oEJ/kD/wIwZ7msPQyRwvHCmhb4TW/i160
	 waHu0RHTxX9Bw4shkbFzajiAVcGl0y7zJ3rKVylv8sxaQk4weGxYtxQY8PA7Grf4Nw
	 IqtdYPy5Do8silj7oej/zleZmLn5jSwH7BMbhGM0o3v4Yx0Z1QUvsSM4ARgHyzA5VW
	 hsDb+nlGxxAisegXphTQ9JIVzMJ7Br8gpTKitwVNpRjVSVXCczujdOCVhiJxSM21Hy
	 VHwq3v1Mm/2+wCwEPFnl5ZLYiHDP89iu1Ca3MwD4uhyyQW217nE5FGjXfOgX4TfO+k
	 FNaK+64UqEv3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97710E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173516855361.4597.16417832787421674313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be5c88e169e227f5697b2076ccb0b4fe69f8d5b58dceb0e8cbfdece9bf49e7b
Date: Wed, 25 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735168553
