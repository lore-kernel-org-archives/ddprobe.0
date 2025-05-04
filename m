Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E0570838
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746346194; cv=none; b=jXPqjZT3g4cNsQE98Xra+Wvo9y5E2tfR5SBmhqn3yvOIIjcnMOUOJir14IujVOB4gord1vvZdw+GZODRRPA7PR+k8ODiPwjIfm7niQw5AotcFRuq1PIp1TQXUnQEOBI+zG7joSqrz5/bXAruhhK4FNBX4CCMbbC+uNIGQZOtQVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746346194; c=relaxed/simple;
	bh=nynHKeadbsdZ89MEUmt7/gHNyXHfCNKYK+zsvSBv1wk=;
	h=To:Subject:From:Message-Id:Date; b=WvFmell8XxRheZeya5rim+at6Cy+BxqAK0ivSlTmzT1cJWmRJsqOvla8+AhxwJogRchLIRz6DZcdffR0bgp/E7bYKy43WVZ8WOUYCBZtT2peE+2nSY5UTu5XzJD/xUZW7fReYNlG1EbruS2spsH1a6rv6vZq8gAWsLEOu5Qv8sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GU8XFGEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GU8XFGEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2906C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746346193;
	bh=nynHKeadbsdZ89MEUmt7/gHNyXHfCNKYK+zsvSBv1wk=;
	h=To:Subject:From:Date:From;
	b=GU8XFGEv36p+7kpteBNLpo5Z/DecMImLq1H1XxnvLPTt5Q3sWRqT+KvuICmjviMcV
	 XLJ4B55kyKSE0tT+QXQ7Slmtbud53OGi/Qv/uc5NE1O3sapFDVIX9J7eKpRcSlzfkz
	 N0uxwPKy5CUfv8Lb0gAOAVEu4AgnTbrCywobQU6wNimoPeOf7/w2HPobJLs8XcuElM
	 S2LJhS3+GVv2T93suvxojnJy1QMO1ugDDybfjowXR9PEiEpEJys4+Nv+AyC9idIzec
	 4abKY572DDDJUFH2/DLrrhkYwhbsQM56lZE46g0dihREkW5g5GDXrPHWW8OJbU+4UN
	 1rWF1DFU7ftJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A21C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634619358.15159.2899065348571480556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0740f2267bfe75a10c2547756f6625028723750171d7948158683033717388ef
Date: Sun, 04 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746346193
