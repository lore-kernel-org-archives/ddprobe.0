Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AA470803
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733064954; cv=none; b=flJughVxhJ4zo3FfwpHSGaIN/cNki/0abkM5K97awG6oLahPejAiVhA8x9yCHLDVY94SllRGZ+FcTLmVli93HhWe5kBkAA7ZEtv9F5b65DmCvDy/XeGv4eKMdDAUi1dnu9zN7dMo3MckkV8ijwSTe3VkSm6Vdil4m/cDQP0YgWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733064954; c=relaxed/simple;
	bh=bJMU+p+r1NKUsWwxXTwcsITWFnH2pnscHFTTSfjMYoY=;
	h=To:Subject:From:Message-Id:Date; b=aGIOlFexClP4c6AciIyoiUZEYgErf8Lm/HXSRWswn/CU1CowWs6Kvev3If8q0Aq/1VkQV/kuKXEF771fJ7kYaMoZaYu/AN7hf3gPChLvAeCfVh+e4W/v6L2GXMgAXSLppoUZJtgICyxZaGTawdNEex0AjFjjizKtLc4q0QXWmgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/9WG4yB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/9WG4yB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D1C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733064953;
	bh=bJMU+p+r1NKUsWwxXTwcsITWFnH2pnscHFTTSfjMYoY=;
	h=To:Subject:From:Date:From;
	b=c/9WG4yB6CN7/wk07juFfr+bEo5TQ3k1vGC3ZfHLhEBQkP+qqjlphncfvQjyQgFjP
	 ltz1CNmCpBA1trP80Roxr8wIPBo187Jb2YTUts2r0OOX7lzoAkov0iDeJH/azczLty
	 VlPaIzqMiRgyFHUJOPwkXx5dOQDoN4jNHe3j7aNMfO/lgiQ2vEpYXaA6TqcHeieJqt
	 OqUD/iDDTL+7FV8NDlbam9FBbLVZcFuTv3KYdFLtRPo4eIGWOuIlzWZAM9YJceekWH
	 PJ8PV558G8syTm+m3TgA5LDZEjZIcT87IQBKNeT7EuVh97fl2kYVZNzQlGDw1x3yTV
	 hqJvmE2x7Z/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E0D49773
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306495359.18667.16312469550846042679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec90952f9c85304e7c47262cc449304cbcf7c4d134f74d5d2c9b75d48b58b2b2
Date: Sun, 01 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733064953
