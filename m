Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38F22C21D8
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775052334; cv=none; b=WHBSy61vsGAQOomeXv0fTtLz+ZZqa5DF9DtRZAHdT/OBRuIP9XPPY7GmTAurrXoVSzocmCkE32IMGU0nhcd3tWJs5fkCyVOmmnbfPEouuaiyXG76hd8muLCqvMllR/YfhIMVkhZbCQa2LBXf7tbmzSXanax2VfUCXQ0JDr1fs1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775052334; c=relaxed/simple;
	bh=hzajctbJD7URzME342m4B4PHxce+YwHdGEDuFFX9dAE=;
	h=To:Subject:From:Message-Id:Date; b=GL5ygvvH4IxfKaObUwk9/KM6nCFyPSQdbMLZnGXdNSSNVg2EyRoSAsoQa6+X08FDxwzWL3RgCwgI/CgzzlV8nyROzrnkYPzzOAxDkMDNrtxCunLW9dZ2SYMSXlFbJRV65nxEoAQ9upy6cEt2moTGNtuHXm+VSCwfLJuCLRgFbPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dn2RT0Ah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dn2RT0Ah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8BDC19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775052333;
	bh=hzajctbJD7URzME342m4B4PHxce+YwHdGEDuFFX9dAE=;
	h=To:Subject:From:Date:From;
	b=dn2RT0AhvQmwmYZaulz2ZcrN2/T2imJhliZ6EEExRUUSd+ZuqUJ7/Y7lU4n44cR2E
	 IDd89LYrGAR6SaMQ9Pxc3FTQXc2LRH+Iu6erFFfns+DqflnVDXXr4G/4pejN/VlCBB
	 6KX7wB2KyetDlfr1HACHpVt/XrMveP8mnJaTWC+1cw7ye6L+RZypGvP2l3UOTYGQLD
	 6k2FgNoCAqeXCmMmZlcJNSIp62UNHVpZi/x7i5Fu1cpZ+YQfAAiuC1f/PFzLTewVLD
	 QRvddE8LDcEQ12OJJCMKob09VutVZ4ZXhspzgVCoTTJSJllHcldaxMQxhz/Db6aem7
	 tUqqPaiY/+EVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC858107637E
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505233369.5807.9860623837961867101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cafb60d4e0899a555295267671abfc809fe6a06e39e16822d81458bc511680ef
Date: Wed, 01 Apr 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775052333
