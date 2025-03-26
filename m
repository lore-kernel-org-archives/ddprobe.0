Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCF12940D
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742953194; cv=none; b=l+GpoSQtYoRdPYSma00JfMyBCkwItzh+vR17wDXOv90V8yRFuKdb7ZyQziO8mk5mYJy7u2fMV79fjfvAukVGc+pud3GNs+fg1OxPZGs/TYhOpN1C/Th6vXGpvke88Ptd3KyzsoUkMCHlJVu/r3mkHYh1iwQFX6f0nNSdgBRBhqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742953194; c=relaxed/simple;
	bh=UjVBLVNRmDt5jai1vUgli1rvFDd1+sTjt/qSUzYl2oo=;
	h=To:Subject:From:Message-Id:Date; b=aRZRxBXF2SQQomm91Cmcl/WXnmjaVdvN5SbFAnsEIMIRPGjTiSZZvEuNVDmQmpdGjjIFZwLDsdEdSMDxsGD69ROPr09kyv7w8N2wzE+9QaxUlUZEzEtPdBskiCrHGc7hJ6pwrpxL53vFIJxRJMD9fa88t4s2QWjFs8Cj4ESY4xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5jtlZUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5jtlZUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8632C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742953193;
	bh=UjVBLVNRmDt5jai1vUgli1rvFDd1+sTjt/qSUzYl2oo=;
	h=To:Subject:From:Date:From;
	b=h5jtlZUo3WLqX0xQzn4QaNF1dTEdvxra+qsrOoLw1NmO+ihGNbjRplRmL/JFX7v+2
	 zcmfgvyH6HbYRTuDe+2zxczKSohHEu6/MRuKv8T3Wit766gZyj3U9FLyGmE7yXREaJ
	 s4+D2xeJPW2oCLtJy6vWRjnzPQ8ntXG/lb5+1JEmeCBh9dbUeih8eZN2OMIrlSab1c
	 ibS8s9PTqDoaXAI9LSB27vqjaHAlh8OpcaeOWrEi0W3aj/Msy2NZ7skNYf/bj5tzUt
	 nTAhrJ4tDYWD1yNCSyjSge78tuGiWrCwgMtS7d0aeVcASUec0Q/odM/JmM5rvc3G0p
	 HGN45PfwYpmUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96721C36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174295319360.18068.1368025739338398303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a01242ac32da1b1fef083ef378c6be70453a10c8d2f555b787657b43353df1
Date: Wed, 26 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742953193
