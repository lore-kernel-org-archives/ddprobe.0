Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B552233924
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786845634; cv=none; b=MRzNcwUJExl3GRTIe/DBfyL55nYI79E7Pvw9nICX/5wiffN5UQkkHJOMKF2AWBqSFrWhmLIksPS8go8OSmvUqfP5nGL1UAnVIv2m5EARcRADFP0J1y4uh9CYUVXLPkSjVyoRs+A3sygKQFBaGufF/8d0z+wQguvg5ttW2p98l8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786845634; c=relaxed/simple;
	bh=OvaVqE948rVJWuZlr8ozXRZCC2pLXzoUODFWvAlWn3g=;
	h=To:Subject:From:Message-Id:Date; b=NM8eTl2liEgWIyNdVlfnu+cH3bG5UngzEZpCoGclrsbLqACGaQw0DV3rprSHJJrH6OgGLAJ3DVnC63NvtJ2AncH2RrtXLfWoGqEPK1Y5+YvUbt/N3Yiiafia9BCg54GxbVVBGnU5kyjJJ6FPJc+X8Pf9zxcLM2gxNTK1q8bALPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZwGE/06F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZwGE/06F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A09C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786845633;
	bh=OvaVqE948rVJWuZlr8ozXRZCC2pLXzoUODFWvAlWn3g=;
	h=To:Subject:From:Date:From;
	b=ZwGE/06FSZwsVzuVfdqSPqXHL4ZwJsJYG36XDw+U8DS2Gd9Oa02oEGukdepXOvdDq
	 RQ/ufc5M0MwnA8tNcsKlvipcuIndhKd/Bk+tkQGPhbkcD8I+2kYpD8opfmZ1iPbj2s
	 rRI1PkgKb56yA64yLWy9Y9GZ3ptQcMMBwNEieUMSY0gmjACkitBwnRs5e69xZGXQQU
	 6eP4tA++SvMsCBv5PC5vWXzN4+6VJEBz0+CW445oVuxi2DiYUpNHk37gz/P+3xqhG4
	 1Q+6Az41/bN/RMQ5SzV5U5IPv0q5LjeJjPHphG8YB1/EBXriG8LJkJ2u04ohNhuzeJ
	 0udP/3f1VU1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD4FC5DF67
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684563369.27900.11154286925728279577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a5e675170585da95e2a986e2a987b1e5d32d9790dd7b123fde7600a6f4d37b
Date: Sun, 16 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786845633
