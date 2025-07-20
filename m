Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B5D8F40
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752982194; cv=none; b=X4P3aRoDJo3FUoYab6/WKvFG5qZzMsq7dpriB1XH4oR7CiUEeJ4h7Q+uRIRSc/7mugdPkrBZX1cgHYlR6fQoD1HhtBiApTmlaHlau/MfAenm4FWNFMLOohEsz+UUha6iWhaxcnqEKSAmeTNew7EU1wGCM+kh4NEL7g7QFjhCXBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752982194; c=relaxed/simple;
	bh=LJm6jAByA1g64ImSUSU/0kT1kpopYdv8333/4PNy/DA=;
	h=To:Subject:From:Message-Id:Date; b=X0Gei0eK1UnnmXrB/2Sf8vfXl18m7jLHT0gx4AW4aSFM7a86IEOKC/vyGx7oU9O7/bc1jaC+Haa/dmj/gh++iPFqfAcUm5sAhY7XvHzuV/7g7qw3GosLNtj7GJVqHiAGpGQ8q/og3xbLsyfs7H2XVL//7uAXEHautLO4WOmy5HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dW3yBcnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dW3yBcnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0229C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752982193;
	bh=LJm6jAByA1g64ImSUSU/0kT1kpopYdv8333/4PNy/DA=;
	h=To:Subject:From:Date:From;
	b=dW3yBcnJ3lTQMvvmQAMbzCSLEsxmBM/AMBuC7bSZi4AKFdG/cfMCG7Dyovj9ht+dN
	 hpjpDp3vUkNAG0uKONlev4xQmm5NTzc34WuMfUcDRwBFkYBjeNxi9wToyGetii99DH
	 XVIcvLPS7FfzBhjAsPDfFD7vYc75F7Y4EmyVBRISvNJc72Xm1eTH0e2t83mJxBJYOW
	 VgPxVG1tFusXdzMIAhFZ2EzblbYgcxBpuPK9/0Bo3guNSnRa2NklhiY71nYCUuHUqH
	 roTzrvx9N+mnOhja5GnL3dz22yCvoLvEoQ+q0z8HliwybvSgqiWrWcDamu2DGCJdCO
	 GjlvxkgLwhL3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BCC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175298219358.18417.16477726755801931067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03ad3eb9cf77b1a29d2cb493fe4e0c56aed4dba22fd1f1b968da8025fb6e564
Date: Sun, 20 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752982193
