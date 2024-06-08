Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6341D2E417
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717865843; cv=none; b=DvyNNJ7AoZbfD81VRVADwzyvoPHrjEDFQ8cbTVYLkLm+72Zh5Hp4pmMblZBz+ULOrrZ3JBLeYPKMmeoyghSamgNpETYjFRhod/roAjfXa5AEbe+1U4cMzn61CLC9kxG9WWNHgYvoK/HlDbIrOUfJptDGoh5TMATuOOKDg3W9Hf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717865843; c=relaxed/simple;
	bh=Zqd84MVKfuihZTynezv7f1aAyHIOWZ1KtBjYWV15g50=;
	h=To:Subject:From:Message-Id:Date; b=TigkgiYa20hGYlbiK4bWT7ffiiXzSJjSieCEDa7ub6XnSCeH+cy8qai1S1SooXEkRV0AtWaGaNfhA7xM4AmVUj3Wogt8pfi85Yq4G1UwNNKmxtSQbd0BU/xLVq4fGYItHO0TWqLCPDbG6I4wv6rJ4ZVlrhffSRxdli/mB8v3DTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzXOnBX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzXOnBX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B94C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717865842;
	bh=Zqd84MVKfuihZTynezv7f1aAyHIOWZ1KtBjYWV15g50=;
	h=To:Subject:From:Date:From;
	b=pzXOnBX4jDEmAVVru04OZsiuRmNxVrD+YtnEEyxQJmuPrF9lgMqGtqtjicMAOK6G1
	 yB5roElZHC8Pn5xGmofKNApicJbrO/i2segqTXoQo3ux9VPU24WxLgjuil7tpEF6Xh
	 jEV+Vh+AQ84hwFZVERPNX09YRyYSyKQCmPbT5bbjQD9h1xDeSlYiVJKD1w3bDbT354
	 njfoOZjbhHyjTEDoRBd6NTNb5EYNVNyDCSBDEHis/q3t6V7bN3cKngMX27mA4kuWyv
	 Gs2YK9CPlxav1G7DSHDifXkVNNucD/LKpixST9/W9OiZ461LUI8NOLLMuzDRjWElkr
	 n/Ih3l18o3Tng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF520C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 16:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171786584283.5885.8731349719014674348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5179355439260eff177dba4f0440c2aeceeca44ef449107cb225e01ab08af1e6
Date: Sat, 08 Jun 2024 16:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717865842
