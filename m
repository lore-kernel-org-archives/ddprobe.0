Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A3A27B32D
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765354974; cv=none; b=O+bll2eC2tIFsZorYrcz0rAzSJIeGzF7/nZN1UrHB4+YkFcTfdssV/Ozv8DQRqK5COsj59UciRaQNT/0Xri7Vmz7jFPn1GMoeX5h523hymXj+CgpHPZQgBpAJ0K3B99hahtvUTpwTpCIS/BfQUPoPVSdYuFRyd2RhmUdlA2e/5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765354974; c=relaxed/simple;
	bh=YDLVVbv0kEwSRt+7vBkRhoC/AChSWIn6oav9twy9bE4=;
	h=To:Subject:From:Message-Id:Date; b=uy5iAYecyEcnnNbv2H76iTgzh8sQes8nBX+Ejc78d1RjEXKSR7GiCCRjEb958q0vq1O9b8xQ7iDdu/GUwgkU36AbpXjXAMlR807VdmsqZDSO8OuCpxDkVnCkd3wJE7liSx7yTXLD2zimOaonMxFxLM3qJIWRbP+w6F9FlSFbkec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8tCM3mP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8tCM3mP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CE1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765354973;
	bh=YDLVVbv0kEwSRt+7vBkRhoC/AChSWIn6oav9twy9bE4=;
	h=To:Subject:From:Date:From;
	b=l8tCM3mPWmjyVNsO2spZkFGW94OweixePKcFHuYFZNbjKmjRnnNuezfFLnnbXeX9P
	 TaVftpF/VIBXpz0FDs3qKRmUYW8m8TbrwRbItcPrSmSsNbrdshzqF5dxIGb1pwrX/S
	 bc8HxQN9BxXiVLY88exkpqgN4mkUZhV4nm+GCQXvPNgPLkZlUJIf7JMt4OwJRAqzRJ
	 hyxPRY/j5K8U9+KIizigdacBeH80o9O6HeCf/p7j1qiXfr6OlRJNbKhup6hGJ8w3ld
	 GJgcSK/yYpBCuj260sVSas/Kc1sfQVr2OTaXPmxR9xdA+ZJJeZi9A6FoH5a4pyGpMS
	 Q12SbR+5l1PJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C32D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535497359.3123.3800318937515380810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ea7ffd11a6df166d6a951b3379fdc35c87dc940c4805e136c8bd3d90e2b5c7
Date: Wed, 10 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765354973
