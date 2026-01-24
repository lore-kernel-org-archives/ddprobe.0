Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268BA1CD1E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769282034; cv=none; b=ouxbARDkMrLvKNMz+doG5J/6gYDBdm/xRUyUMRHac2GThzRi9HMdWB/WZcIj/z5nCoaoZxAiv5pMDEljLE5uE8IL/w4VAR75ZoRQlgul4GhSA7edO4+uWp905gDQz9Nv8WOcyqGL1Te9vBGxYC7HYuBMN/dgZXy/gBLBkLqKVP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769282034; c=relaxed/simple;
	bh=6dXJqEOOss+hwtF+IQObMbxkpjLUob7PtwxnGIzmiFs=;
	h=To:Subject:From:Message-Id:Date; b=BjgezpJC5T7cIW2NcSmx/GJMQS5GeIXME9XtziIYiBHpaZDEKS0uWTuR0KO8EVWjFE/w9KoeUg2WJCsfwUdXe0UvKMQLsVPSX4pMMJ8JUcPEDY+rvPn/zZL0aFhnHSeiFeq4KXLlL670LwChaBe+OciWbz8r1wnIexqYyXttf0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNABtKEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNABtKEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B5DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769282033;
	bh=6dXJqEOOss+hwtF+IQObMbxkpjLUob7PtwxnGIzmiFs=;
	h=To:Subject:From:Date:From;
	b=GNABtKEPGDitHuLLK0mK6eRdlENfRZ57tPC2g0vS7Jejbewg7cZLyVII9zB9Epve6
	 3KYDAZW48Uv1KfepGpSAOmnxbffHbMV6z62E11AKPilrvUyMHnU+POge8jYDxWVLA+
	 ZC1vEWbAJyFRRgujUJCse9DHPigKR/7OLN11Mxc4qAyLj6BGPCQocfFL7jOzbucOE6
	 cyG1F2wzXhtIIFL+qlGyWwjnjpEhT527fOHkSWWLZHE+7BZpeevcv/nNmfS9wZ+pO1
	 TBJFuI2O2N5vf/ArRU01SXJC9cWSaU1hQxW/T4R5VZEIhPnqydm2SMCzXzQwYlWC07
	 L5CeVorgoQ85A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525DD715E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928203359.11041.5116817246067546935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2a6596ba6077c5ee0bad1963c5200d4b721fbab45709fda0832918d3d6fe45
Date: Sat, 24 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769282033
