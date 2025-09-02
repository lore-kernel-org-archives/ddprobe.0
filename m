Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB11283129
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756808994; cv=none; b=qLpjkctM8gatvsoSdrthwtbi4k7WeGKgV38IkPDrtCD0qsyCc/Db+6tgzpptvIuFRpyTcvNLv5JMxlsRox8N/pnpRTfJfj0Q5voWwzJ3REamswAvRouaMLf8Htpcw77NsemJxtPxHVD3sQXEVC7ynh0V+AdbEMn9Uio79LNvDDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756808994; c=relaxed/simple;
	bh=pig0S1iK306RO/eCabYbP1O21Bp9ZORC8Zjcjaxbwm4=;
	h=To:Subject:From:Message-Id:Date; b=tcMCpjhkDicdKVQCo7/OeP6pPr6ePl4Hm2cIKJX1dHRbKQg4wtTZNlNvTOCjbKOz0/TWi8tTd+3Rz0cTGepee6hmDbZxFSBW+f5s7FeZ0jkfbgTrY03r5JPs2W3OiblZH8GrD39DBpvVFd5K0vXnhgn1G4l5oWcXnvhV8wGVU8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZN5gy6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZN5gy6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA78C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756808993;
	bh=pig0S1iK306RO/eCabYbP1O21Bp9ZORC8Zjcjaxbwm4=;
	h=To:Subject:From:Date:From;
	b=bZN5gy6vpLOtx1pa4SOENXe69wrlsG1PG7q1YJqbVqUP1Qj5UuIK9qURfxWwDpEIx
	 J8Zczzn5C6m6LbPCVRcosJmAmAU1aM6OoZhZQEJY/1Eg9xVXj5qsY/W8Ibr2/c6s6u
	 KlHieK8Ppcig+kc1u6lqu9T7W2D+3sGHymmjBZPQTgT2Mj9quf02vdObw5qdKkCsGm
	 KSG7RlLvk88EDwZirSDC98bmI5XwnKC2tBg0mEMHcjBEq/TCNPucHkzwrbRzjiyzYO
	 /K5NFdzIxBJ+rdV0grRsJrzPMjrDQQ6iiWS0uzMSdhdi1xxQ9BxpTXbOYI4YyVacPn
	 dqA134GW5IaQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F515CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680899357.6050.2788759686889811119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd218c7cb6af7ab5d297ee855e694b170436051e2d0faa1e136a8ef281fa251
Date: Tue, 02 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756808993
