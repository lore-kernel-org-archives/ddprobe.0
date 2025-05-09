Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D0128FA94
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746788994; cv=none; b=WHklJ7vzQ8LbX9VCBUH8DycHeOVwRNdpHhRH6unzTfn5DBWuCOp0ZUuh/B44R7r7VAxZHzAp1W+EYlaWZ5Nxc0qpA/qmwXpP1G/t6v1QMZjIPfqNzLQgwn2Jha6J2fPYXm1qBQUMZBGFL6NSLnaxxJZqwltGIGCVc1E4wX6sr+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746788994; c=relaxed/simple;
	bh=RCt5PkiXbrJRRESGmCbaPGH4+gBZQFK6X6qt8417tng=;
	h=To:Subject:From:Message-Id:Date; b=NBtDLzdJcQhsJ974qWeP0HlJS8MTrK60Nf86M+/FUAHZAzR+egEUivuW/qeVKJqqtKAOT9ZkpTx0ehpkmZMuffgQ/vbdAuwoQ6dUeZ+FbpMl/zClO6VjQ1pn2Wu9lgMfCF6vlKge0sZQtb+dy62WIJETZvn1gw4oqBTeH2mvO8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWAHODYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWAHODYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF55C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746788993;
	bh=RCt5PkiXbrJRRESGmCbaPGH4+gBZQFK6X6qt8417tng=;
	h=To:Subject:From:Date:From;
	b=HWAHODYlt+phqIVMuMdaX6+eo5qOhqqGLYQ/9QQZuH+F6P8vVpJprFicJxRNxTb66
	 JsSoaCLxIuGA6JBWr7Rgk40vGkuCfY2R0ZxymS0g4ls97LV9qbkJeF9kTPtJeMUt0d
	 jwhFw+e0zKgQZSiF8WPWIn3c+v6b5Zq2JPNBXwemxSRAIrLlkAsW6beQWQg+bFTyd6
	 dh5OWK4PZhbxNTdXhBeECPYm58/IftRDlu+gwGrhTFK1iZXwodl9WnKbjAJI7jQndL
	 DqlfKaCmLU8TR5uE2KO4zNUOdhlZBnoit/ZFvLc15jpVD1Jsoac5l5IyI+qIjAVhFu
	 Uoapbd/o2j7+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A149C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678899362.4789.16459570571141686923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77318baaab890d4bf212146a79a6ade2d059c61ea12be06937c9341878b65926
Date: Fri, 09 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746788993
