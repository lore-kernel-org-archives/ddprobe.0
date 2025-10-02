Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ECA610B
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759443594; cv=none; b=djPlTVsWMwjTxeWk35WLV4ZsVp8vzK5fXkUduRKnWY3m+rPvazraS4MJx63mGk1g02uDljQ20PsnxG4ffMJO8Bdd4DRkfbwzzgl2lqCrj1qpVg4xc/r9KMJASzsP69p/kLw+VkkYi6GjilBq2LhGMLSho7yfJi8IJswuCWpu6Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759443594; c=relaxed/simple;
	bh=RIR5jLyAPy69cBAUuN1ZX/3Lc08xWe+XXjHUZ4tuGgY=;
	h=To:Subject:From:Message-Id:Date; b=AphJWeBdCEHcLJaE5zCYg4Kacu3KzNDgwMD0DZ7Pj/r6074UCBedl+zAkBrobVqsvLcxkDUSTPMkT9a0XQ/BrwqDTruQV25F18q/zPdPBEsK9ZaTsyaXes+tr0T+p00QrYR0sBonRk3vj9jqmtknWZ/fIIxCHy6t4FR6SMxPJWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4Oxbj9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4Oxbj9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD0AC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759443593;
	bh=RIR5jLyAPy69cBAUuN1ZX/3Lc08xWe+XXjHUZ4tuGgY=;
	h=To:Subject:From:Date:From;
	b=L4Oxbj9XSwZjGa80IVYN+TGPSrgwrkdVAqDI9i1h6UmQ7TWDF5G2cox10ZnA5tC5F
	 4obVZdVc09XudtJMVf2mTHzXjTqZUbcJ2v9erLLTX3dpfcd7oKve6iSgEL3XL0sv9c
	 qIEi8RvsT7E/cVpT+fJvHd6Nw7JTL8QoqR1F1wApXR5fBZojUHNTmbtxW9OXt4VdnZ
	 uRgY3DGTDFePcVwRT4iPN5InzdOtT0PxZn8F7tz3kkdvhxHnY8WrXLZ2PxYTIDeQs4
	 e5fFETjf/q5s/oUsd37+uUqj+pXvImFVk39/X5qEoraHcPOUKlEYOteoQrMmTsB+Iu
	 od4lioVunJJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96699CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944359359.9936.14676887284052313929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaef18865eaa3ebcfd2ad4b377882bef093c8e2e8ced619f2ec63a3d06ff5a0e
Date: Thu, 02 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759443593
