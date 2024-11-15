Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA1E2C80
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731644754; cv=none; b=pcNpDIy0m2QBnfd4N2pION2mi5jYJ0J+Xy90hO1Th+hqVIkt8ZpVJbbS/WsGKO0tqDxFrY9Aj4tDNVffdMe6iP99PQ5AuSt/aioDkhhGC4z2gAQf1X+szRtUCbqYpVTnFywGL2DiOb2oEPJFvQnzHHrHL7MRRVC2Xm1v3JwuFF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731644754; c=relaxed/simple;
	bh=cVCwv5cjh+rSZPzzGuLiqc0HyKeT/pxuVhKBqrD28Bs=;
	h=To:Subject:From:Message-Id:Date; b=rhe0ha4e/rxT/IecwqkyDoZ9yeGUyN1Ywo/SegForIT8hrTa0OmbxAptKXbuvWGWoZsB9jZ7VwHekryATD/xqLe2ycBouDDu/hhaX2p9YcAy/gZeC6bRHoKNJt4rgdSqn3xlEXW8yD1qBsMOKZ+itXNWtbPrtsOKCKHZCk3tWk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zq3lYSRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zq3lYSRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C688AC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731644753;
	bh=cVCwv5cjh+rSZPzzGuLiqc0HyKeT/pxuVhKBqrD28Bs=;
	h=To:Subject:From:Date:From;
	b=Zq3lYSRMvhGSJWvqaLpUokCHeSDgVcL7N4DDPT39QRrgKAnCZe9PPo1EPNGeddrOU
	 NvPTX8GuuRyhe0cEART3IDeLLtHrDqZQBPNOyHR+RzoMt7qt2iSdJAk0efgW1GOrwz
	 BorEOyOn0xcocP/cK8ROWsuzV6AKsR9Aq7Mm5btwRiJTETPOzole4g7DZMDWGCn2EZ
	 RiPrUkMZlQMUezLEYh8BRbxI29bm6q6xQDB4xzu7ovmxKMvSdToKZkMfvphe4JTAZs
	 1/oJZB2ppDQwNuNTW652JNaKnSO8+qPvq2M8+iMCp/bCxDojCFopRQpIcGYbLxop0O
	 06QMRhIBlenNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF667D6DDCB
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173164475363.12621.1658477194623563494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74a184132f944cff81ce1fb22b58b286ad931c12d95a93404e4361ad6d1a0c1b
Date: Fri, 15 Nov 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731644753
