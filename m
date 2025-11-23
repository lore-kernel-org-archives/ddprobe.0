Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193FC15E8B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763923914; cv=none; b=cWkCu8wk4qb1RiJYbJ/Dh7YB0R6VnAUbMcfAo1kNosE9B4ziEBZ181oxcTShdZ4zLBUYmF2rqS5/W0hsWHGPMaZ6r4LqDOPSBMcqhwMKPy+obTRoFBY5yXtat/vy7I/9zX6SBexoA1uS3CUVuc12GnZNZqw3K8c/LyWOyLIPyKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763923914; c=relaxed/simple;
	bh=lRsI2KUd31Q4YR48ahnxKLoGvqeBs+PRPAp8CAQ+bjE=;
	h=To:Subject:From:Message-Id:Date; b=heqaeEwbSM4hiUM0dLrY/GuzJoVApopvIJZjgl4CkRt13A1JA1GQLmYey5/qwgAp/uf6LszlxUeJbSe06Hdy5ArSHfSmKT29cuR/WnPIDa9skTOFB4lmPyUqrLh1egBitUYeWcrMDnOY7ocqim5DVefMKLxcjKyDP7D8Mjk3rCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCeZMl7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCeZMl7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3053C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763923913;
	bh=lRsI2KUd31Q4YR48ahnxKLoGvqeBs+PRPAp8CAQ+bjE=;
	h=To:Subject:From:Date:From;
	b=BCeZMl7QIV7jWh9B3RWsyTybSkU0kNLSAJWfRZPntFSViozXhPGXqiAD87+EqILIM
	 OmGbXDXeaHjc25G3bdiU1pxOR5f8ifcXR6RjO7TY7JSzO5g+o+C5DnayCsHLAp6Loq
	 XSvR9R9Bic/nB2KjeSFKb5/KHMuynHZeUPTkKXwlIldTIQPt4DfffNv72pUkw4YsFF
	 6xdFtiwMlUqxpSKue3yUKw2tUHhkoKuZUneI+OGMiZTjY38TPlb8E6NjkoDQdX/eMD
	 sxXd6dG51+R5A4cKXnX28NNsY+rbrEYoAs1eqvX/7zXDg1Kk2K4gI9ayUwAQFY4+9S
	 aAPnMmvN2VqiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933EDCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 18:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392391358.4953.8988311846490915839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30adde549d677c0c69fe9473a65fe39dd43e51edb46cf6bf4573d4a4f4f01831
Date: Sun, 23 Nov 2025 18:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763923913
