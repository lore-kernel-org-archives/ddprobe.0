Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1E13C0C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750614594; cv=none; b=WbmNj6Acmejfw9I2AjuU4e0LT4gi9ufCJVUoIkDpov/oSAWLIu6ooFXAgcjor3WhoU5AEkOysTvyTmBUNP6IExnVwpqLbPXpOa6aUTmz+Wu6Pha1YgEVFFrv8UQtTiFuPp7aCju45Ap2smFOw+n3sXbCJnUQkb3GPzjXmKqHqq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750614594; c=relaxed/simple;
	bh=NiYA+PnrPYNdA2xQfs+1Rk1S3I8bggBwDPH1JOuX00Q=;
	h=To:Subject:From:Message-Id:Date; b=Um0KHBmL8YDElG5uCl4UkU7aO5Eo7LNDmFC3R9YMZ43pc8ZD3EgsMH8I9qqLSnv0LN68ahCMT+PqVw4DVXBh2ADKOigHhQA/86KQfJc8qL8A4N5Qo1eCNqmA55cwInqbFSwulD82JtEN6zj95j0oxZoAOszp42Vk+H1L8B0o5hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=two4izmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="two4izmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ACFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750614593;
	bh=NiYA+PnrPYNdA2xQfs+1Rk1S3I8bggBwDPH1JOuX00Q=;
	h=To:Subject:From:Date:From;
	b=two4izmMixZGGUvJhzjXgWLnqBGzVJAnxRrPlpl/Q2QpxFGxtHn0YElUbGI6mmfFI
	 gzEqbswRdfKDqqao530uH2tAB9h3aVYfg2mt0HbGrYW/ilBdlUsONmg/v2vx1dTAJo
	 ZNwlvLUMHDi9qLTxp77KvlJbZXLfStA/cpdhjH2EJBGgCSgEq5Rnp2Ps0e4J3tLxAg
	 OYfRLCiNxw4J2xHG7s3w/mnIk3pa+io+mxfNj7aK8jNv7IorsDowGSq+vcbsq21Pv+
	 dmgmyTfoDCJSeQLeR7Q8JIKecPoBkQegMFgiMUFhLAkLIe6Z2xRhJYiYgfcu1DRSaw
	 kszjNyMvL+Lyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C8FC7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061459357.28403.11376760732831994622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e73d631714fe57cdd5574cda25c335e3c6f216aad8ca689260881bd158c6b8
Date: Sun, 22 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750614593
