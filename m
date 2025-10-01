Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C36256C6C
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759315795; cv=none; b=pA4GpDhbODzCFrcTsYZkeYK50aKuTg6d2o80xQiIpGi64ieJEsD5x7rlfT8var2c2V0wZvNpkXMLcCdROre99HraF9mezaP18Qq/cm7FlpRyTDJHmeB+h4Ne2ESB29rLWtlg+XKznOOS3au/Y0hUalLOZcfN8WOU/2XEgxnMZeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759315795; c=relaxed/simple;
	bh=fZnmRCsLZ/MZR49YOHsdGcP1R1qbqPjSP7cVdVgMIuc=;
	h=To:Subject:From:Message-Id:Date; b=LJWEvbf6iBDaAi4mtwinrDxZfoydHBdSI5JNPCDglpL4r22K/AYKvGseaYHJPllB11FDKfJQOoFvuRjIkRosAUHGbAWEFngupA5lyQyXce60kiPq6/3b/yJiO5gd5heF8ReYU+Fz5CeNkf4SOJLOr7+TgJQ9lSsZOQsfg4WkBMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WD+BXP4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WD+BXP4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FD2C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759315793;
	bh=fZnmRCsLZ/MZR49YOHsdGcP1R1qbqPjSP7cVdVgMIuc=;
	h=To:Subject:From:Date:From;
	b=WD+BXP4c1ibFi4hM34s8sM3aXnKIOF0Rw6HrEIU1raSvNkmNpCyE2X5Lv/yoxrpoR
	 jicAYniDMqwiLv2L/Xb4ZgvTFzc+BlNrgcDaVpAnUI2zV3NIj8imHMsmEdy2Wo4bER
	 vUSzjNZEW5lKWcWtPxWua1LrsNojoj/u8JoDwH8RoVGJzp7NIKSYOFyY0T1DYzEoE4
	 uskjhgZTqUK9rl2G7gt9BHu1D88CfFrSpkt6CQETaKfCf4qW7PV0IoliqkMtC06BlR
	 Qt1H5IT50liXWt+7wtNThWCKMYsIYIwhmD8OXb10JTLIDuqatYomQk+e/3/OO6fDeM
	 zC5OTHF5VTPdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94375CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931579359.27601.13913529390285510507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fd25afbd17734cd87321cb7b0f1b8dfe1836d22c941b68de0641acdbf56c53
Date: Wed, 01 Oct 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759315793
