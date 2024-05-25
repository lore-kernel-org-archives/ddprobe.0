Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642E71272D9
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716666263; cv=none; b=OCdq6CYsKWMmHViIzjzJ0hpd5Y9WnkRFsDHSaGVkUbAGq6v8ERjIcxoMoXkf2ySbY2PAjxj2ApzyGGC8b+8WfJv4jkmPtEu6YDLt0oULCGuaMYb0M3nLpn28sS+drnfHR8cpHnb7Ojm8UbMOPiCmFRDmuqn2FaRxm2HE8F121l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716666263; c=relaxed/simple;
	bh=V1qwVd1WniYuDsotrGfSY2oERKiTNC10l276q4Y9v+0=;
	h=To:Subject:From:Message-Id:Date; b=Eq8X8Xv7ugQ95LJQHdy74UXoJ29Zxbm1ZapJzrOixze8Yhzll/YqxXxV6N146KHoefmEHT9mOVNg91GdroVd7HziwMl36BALnmiR6WpTg8SDmqba2419QU4Sc7En7Q/Dq7ZWQ3ocIZyXuNHEkPl3zSfbtOsxhyhKRHYZAheKk5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZ91Evhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZ91Evhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCE0C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716666262;
	bh=V1qwVd1WniYuDsotrGfSY2oERKiTNC10l276q4Y9v+0=;
	h=To:Subject:From:Date:From;
	b=QZ91Evhp3B8w+0JNLhh5/F19XxX9HNk/EFvRUM1ViP2xqQv9rEYxcPtz/nLvz5Jek
	 hQA5rt+g+A3yefMG2DaajSVMCdE5qRELi7Uo68oMSa1X8DP5RVKvqBs8I2jGINp4Tc
	 PwIppn7NM300sfA5aiR8+8wuYyDV1jFmjAY3HGz0+Dk6N43wBp7Q4+VvxwxIB8SWek
	 wUNxMX6eloZLftYh+IBVXNRmnvxyAr8hdfDqe9OgV+brQHfgv8y4guqYRniQhhJn//
	 qYaPHefPwEXSmVibmYwYllgSB3jngZWWeY3yGH5cOKBh2i5WTCvwCpz3cY761a2daQ
	 fmAstjLse20Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C20A2C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 19:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171666626277.9271.5811241536425205990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3900806df477f4d746008d93de0f200cc406cd84fc5e8b5d623b0ba3f3acc48
Date: Sat, 25 May 2024 19:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716666262
