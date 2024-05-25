Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFA6138E
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716679463; cv=none; b=Xy+saxtPI+scGpGEIGU+maBDZVzhtybphNV53rqV7e+EkvHkSg15b+ct9MciylSzGNHzd4D5jeIgztUkaB3Y3SJ5Krlb1Idx1pEfD1HQDSE+U+8SNO3twpYTpi+v4ms1KsTZZg4wNDDud7P2yFp9e5zsdEBWkQ5GfuuPnXcLMgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716679463; c=relaxed/simple;
	bh=5e7hjstHpcQtx10cXRIrNaspA7ZeVUTyyktVxHsU2k0=;
	h=To:Subject:From:Message-Id:Date; b=Vmy5VSazZO+6Tjzs6BvmuHoIcgrtw4+7LVttYy1fpQEMO2xRpjU6PRvJX3dZMTIewXW9yT3tlztFcp8DaFELnjF8Z9nLtSBlTEkan9tulJC2raGhxopYBHBlh/Fx12jio4NMfyEc3qq1swBy9Zd3EukpdGX6ioT9a43BgMfkvR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kzuhh/2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kzuhh/2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C32C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716679462;
	bh=5e7hjstHpcQtx10cXRIrNaspA7ZeVUTyyktVxHsU2k0=;
	h=To:Subject:From:Date:From;
	b=Kzuhh/2bvkbNxPjQ8WYS798qAfwm34rSSi1WodAX7pv7hDN6hdnOio+ZNN6Tb+es4
	 SqAa4dE3Komdj51B3UPqB9LeTK5toPLWihLHJ9CTB9OUBfAdHvNT9DSVa2lkbtXkWq
	 Peln00n2NZGH4+6Llpe1AIvAo4p9blOUKljbugwUY7XPpTEpplaU4H0itdra4Yyhna
	 3RQqmJxpK++aHdj0UzWfYkG6usrS6J191JLLkWVYjPF9Oxx+1Tt4cHeyCKDwcCsrG6
	 3m6Z24RHR6AWtb9/zH9iso7fcgmV5p15kWeaDdGwYHRxtLAMMLlEYj10l2A7fkGVRe
	 EdVoBCaaEtYUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D74C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667946279.14667.15676283114088487910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc25c41eafec1a5af82343082fb433ce4d936370368860f37cb48897307ce009
Date: Sat, 25 May 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716679462
