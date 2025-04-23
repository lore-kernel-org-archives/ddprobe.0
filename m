Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDD9223DDD
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745449194; cv=none; b=kxH/e9RYPiTh8qav+ZtIBlItrsxTliBEuwHr+sdaGWEZtl8+7aGCfAs9lkIs9wCWmsM3B1arvI6Lr5QPejiGFhs/GwkHW8swJbT02NHFkCOqy3IKnzklHZcd3U8pr/b7DMavs+HNr+KJZkaaP2/Oc1kYQyR8UTl264HDsvd1grA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745449194; c=relaxed/simple;
	bh=yTNyQtor08Z7KymUMtXHP1UsXMUf6pKPQu0zqNhLgo0=;
	h=To:Subject:From:Message-Id:Date; b=ZFWWmFFsob3K4Smio1MJzCvYFH+lzHEJlkAytRlg7QLCS8ruBpYnoPfg+tw8mnqYJ3D6tCzHHzfeoyo5SqVr1V/+TF10O+FUA/tFmhQ0ID09Wu7QoH7yucnYyE+L3ljUpMSevnBioaF4l/wfA6WOLpdf47JLOlLZ0QzPodnfKZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pbw05FUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pbw05FUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74F3C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745449193;
	bh=yTNyQtor08Z7KymUMtXHP1UsXMUf6pKPQu0zqNhLgo0=;
	h=To:Subject:From:Date:From;
	b=Pbw05FUBim14BSJMaDUEowyr1ewbuEtfvh1lUIpZ16aP6+A6Q9MqRxil2EmYjlXlu
	 H8COG9KCCE4vaWf7WFf0YZabzH+PhmaotE0Nxr3UOvmZkZSw6UU63aphRQntjHOhOb
	 mY3vDrrBUtMX62qymuNAThWMKEPdVvu7kLP9zmk5+gqpucdFfa/O31paxQxfuQOtS3
	 SpNAoIaeg+VobIwwK1Zal84iHxC8l5pWlipsIuqweAR6tYrDl/HrFC50M3SCHlt7hg
	 5NWAc7feLyH+hySO0ugfmEiY8HIXIehVPY0xGrMBaGJGIjlOswA0/Hr3BupgZ/IhM1
	 ZVTBKmc8ZDOCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F43CC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544919357.26019.1857417986723069430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4456f8ec8d04443b966eaa32cbc0a3006cd2b5d0cf84e9a08aaa584c94879fd0
Date: Wed, 23 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745449193
