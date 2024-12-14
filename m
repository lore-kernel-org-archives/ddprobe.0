Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C0E1CD2C
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734162954; cv=none; b=QYd4u3M39dGFwK3xFiGlaTeQqNMYs+Hav0jKZQbkP0NOqkN0iGm4co4KMTXx4dKs8/O7U8dX2ub3SkTlP+3yy3Ng2C0zkVQIZR7CdfuXmuG19YfR8bqQk873oRBqAe01qGvN2nuEl4gQ2NYSIenqHh4M7ari/oKyPCa+UhJdzQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734162954; c=relaxed/simple;
	bh=prVy7TK8uoWgbO9EUONcsbUWKSEB91Mc5KjYWAdCvP8=;
	h=To:Subject:From:Message-Id:Date; b=PJeqAtpPaih2tKEsNuiByyNSd7mfxTurWnqUV/FHreWN15w/poezBuujIOpNILE0yFqFP0mPBRcLtZI4ap3oJaEeygK/Z1xzri5ZTONfklZQDKpNpbRQ/2QlQp70D9DNiDVQdeCPvpyEljWkFf3nI+h5s1cVg93iE25holClbmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6paf5cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6paf5cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B67C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734162953;
	bh=prVy7TK8uoWgbO9EUONcsbUWKSEB91Mc5KjYWAdCvP8=;
	h=To:Subject:From:Date:From;
	b=D6paf5cD7qDwF4q8gUPNvI4ErVYZ5Aldo2YPqWSTTQZ3dDIVKrIa9wSkkYT003KoT
	 JNh1zTjoZuAMshkssMdasmJdYwvIyVAlulJmEOc+bNF3tB39dQi2Hq8JLtAjY9+BMO
	 ko7A7AIz0Bn5wnzpBP0kNE1YN1wVQ9d8bXWPenm+2pYC2diNdeNfdNuGX2kTYLML86
	 0wOi8dRcS2N/FjV1Wz1oD08CXj0OqbleJJebaJKxWTARz24CQXD5NDKUM2vnlEnlFJ
	 ZrJCcfZUuWbbER2dnlXVSrxhz8BxoJKap0o5QqJ1lnT/S2V/gb7kV/qtEu8TrTxP0y
	 Zq3297Y3uXC+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FE0E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416295359.17428.17722353626948564039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc49b29ac93289ef39d300e0175b9efb84b20ffd57eefa68ff1e530ddca7c93d
Date: Sat, 14 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734162953
