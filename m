Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F77C37A3D1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761835194; cv=none; b=YSMt6gzKVeTeRzUXueDAOGQ5kozwGhfkxGaRWllhc7H/iQp06vkMXPjjfgQOSfIgCCtdnhLmrVOOZWw3KRg2Ir7vq8u/WAfzA1cTJnoKDLrIuGRzS7w1tcDPrOZJoUH7FXOyqJ3DtLANdDl36kn+gUbSMtFcDh7ZoRJSHADMk4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761835194; c=relaxed/simple;
	bh=xe2h1NJOVBHNcXgANaBAb5N1lKaVsosjs7q2hlhSZa4=;
	h=To:Subject:From:Message-Id:Date; b=VueLgl55lh54cBXJg5UcWOrE8FV9xCpbjChGFmzSuagAGn5sBrbhRojwhvXOG9jQgqY6EqaoZy7T4G4S2y18tdJ05QUqA+xuLykM+kAWRXWsZVFGh9DVMxlj6FBl5zWdQ83ociBfs9b5ObpgLpCUSjF1CdZNjBZk043r/k5Sg4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxWqoWLD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxWqoWLD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1955C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761835193;
	bh=xe2h1NJOVBHNcXgANaBAb5N1lKaVsosjs7q2hlhSZa4=;
	h=To:Subject:From:Date:From;
	b=mxWqoWLD6FHYu1nkZNAFdLF/JCLRBsKYwBq80Xo1YrEDPQTWzqAPj7tVJbpPmpIzT
	 Vl4lpLRidgCS5il8DKyDrIZM8QP1eF+rP5yOXL34Mfhqx/1NcmeOq0KOpbAqhyX9sU
	 XPxHdK7IYDPXVkEw6LptFY8uVjCTO+3aBdyoUXtE1HyuvzxkMfGEidXdGQ31GZOSjO
	 mr/i0CuhrwZk5gR22o82ed5aL6m8j3nigWEn8d6yxJ2ZWIrqkGglHpNIbbjFqmMzdY
	 FgpP1KmhrsbwKO2MT0VuSQcuTK3cHUPK5ExGmDhXICcbjf1+LB1dEbd9a8fd9I0mTh
	 F4ulmNazoM86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB9CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183519358.18939.1352796738839492810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e9ace4c45756f87db0afabb25cb9aa22556643728838813a1bd953adff1d93
Date: Thu, 30 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761835193
