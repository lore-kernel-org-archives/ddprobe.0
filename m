Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33E42882A6
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760279993; cv=none; b=VyLiQoHgey0yeEQlD19TDrEEOdVf5usxMuU+Uh6ysig79Q+nCPSu0Uakex6QoMFLJJ2cquzfZq4aRBfma1aZQGmEsRoDMoZjQr9RK3aGFAaK/dS3ZSbCqreyDoyU+0DJ5ghEDB1oaf5hO9zNnZEbTCZY67vw+LpAle4peTY+uKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760279993; c=relaxed/simple;
	bh=+jEkvD/0TBtE2u03GXxxFtyEFCqF7FYhnYcybc59xas=;
	h=To:Subject:From:Message-Id:Date; b=LNXfi64s0PDGgsuRWluy4eBRgEgNVz88L8AAajstbX+sr3YzY4mx47v8Pm3sCraa6BP3OanUobtx8FBeNem4H6oLbKkij2YWFdQs0sb1bh4rPeXkHzkgCpqk2TOGtBk8LdmvFBazCHTZmNV3IC8sOFETm/47P5KMbXblxl1kbZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vERBhjTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vERBhjTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760279993;
	bh=+jEkvD/0TBtE2u03GXxxFtyEFCqF7FYhnYcybc59xas=;
	h=To:Subject:From:Date:From;
	b=vERBhjTWDw498r7Vr4OtUoBD7GhGZY57LuC4Yyd/z1sX33/nABElT5ZNs/SwTtXl+
	 vrPVujVxrolkaAEZEi01yeqpjjcS0bB1HrRzLM8KTE5ojvIAbIGngcnhy6SrETSRRc
	 2s8CDFZjd8QCUldR+ZRBi263cmRmTW7qoNI7XEHjGaNJtSaBZX5v1KkMRPZS0+6FXG
	 fvzOyKXEBGJBrSkMrouWFTIcsffiCG2c68ZYm3z8Rx5airASGCv/JqvqEH1ODPqrwq
	 kzpsXh0a4lsMhZ2iAT8YRenqwaFw/Ngl3biNdj1K6H0dpCiYvZTIiSP2KygUiaqi8i
	 Fr85Dk5sQ87YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2ECCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027999358.9172.13240537143309396638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29296fe03cc0297befb49b810e7f9648e90de0b0957b64c7688903fb7bb3a312
Date: Sun, 12 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760279993
