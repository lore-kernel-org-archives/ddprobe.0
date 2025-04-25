Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30496222576
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745572194; cv=none; b=cE7rUTimf8DFDD9eJewC5FUpG/KacRLf65pjg0v1JYz57hPgwF1+SDhHYPmOrbBtuXP3VKgvfDWEpuE2qnFvut4fOsqI3CDpU3qXXOKeRSegYJtjpNPOGS3dXgGNI1ycoMQARLa5H9h5qEu/Op1IwTKebYRonFeg2DjK1WJxYqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745572194; c=relaxed/simple;
	bh=d3hSg/3u9HGmmr/JQ0HcAimeAuHO5ie8+t7/wL7JNEs=;
	h=To:Subject:From:Message-Id:Date; b=kuyrwTvd1PPMDd2EDeCv2YtxLdY12puJgLbh0UZTp3sUErPaa/H7ozrzzsI898HEmv56QuYOodKidQHeSC35zc4hfGCA5dYPKVd7B4epGMGncmj/20sDqsmvn0ykxkZ1iWDNhU5ipFB/iNPTiHy4mjYfxNfhl4UuD0MQHxP/CdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOLFUFKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOLFUFKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF82C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745572193;
	bh=d3hSg/3u9HGmmr/JQ0HcAimeAuHO5ie8+t7/wL7JNEs=;
	h=To:Subject:From:Date:From;
	b=YOLFUFKRJ+80G+XmosAJqXYpimPud1ex3jP13NAr/tjLDuVSvhSKM892ZprqD0COI
	 blT6ktu6+6Q34hBTjiIwzaH1mm1u8oWNS1DL0pN/hsfRYJzEQBdm/nUxzHP2H/7xNd
	 BPuiIHQCMyV1VxZBdgFj5HVxRzqu9obcUGE3x05/CMpehHb62omeHmlcPYX9Gxk8Ig
	 RGWHzaj77WjBn6KlFVb0l72Rcs87dZxvN/rNEMnL20AQ2d7asZdx2Uv2ltDjeeIwoR
	 c2ntaTl0bbic/AevvpcPS7i1FK9DAs2GvBr2XVq+oMxu2dPo5U3Z+TtR1r4x4zAn7j
	 PqPcKbYiH9tKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F948C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557219357.7400.511256957243971611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09fe39020308bc986e6a0c850191cc9ed98284e39344b4cc120e4de0b912c6b5
Date: Fri, 25 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745572193
