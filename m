Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C806AD6
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705466897; cv=none; b=mzy5lfqCVhgOTe79Xy15WIAjIkUKgnAH0yHpoI/SVC/xbMhSRcNAvlSm1pJ3hSncD9B+V3HC9jQ3hgNNxwDcAlPaFycFUKlrmIWkr8ZlIRRswBNVL7FPKxYf2TM9j19dbXB0x8L0hX+ukBL0kPyUv0f+gKJsRqmypNNFfKicfts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705466897; c=relaxed/simple;
	bh=mYGnCDhAzA9elvYyNJygI7ir/VXHVzB+G/qEid2AAD4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=f05Ma1PeFpNe0Bv5lf0HFDJlNs28qLXVjhORwCsyXWP04LbcLhsJ7Pu4my4UjtMiIjNww2vKnliDfAm6GzvZ4elblQlz05c++0ZYzsUoQfkLyQrprcrNOP7F67SjSxF/k0TVBRPmZB0/t6gUiLxErArCbqDRiK4RUKD8aI2dsZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNLNOaR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNLNOaR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C809C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705466896;
	bh=mYGnCDhAzA9elvYyNJygI7ir/VXHVzB+G/qEid2AAD4=;
	h=To:Subject:From:Date:From;
	b=KNLNOaR7vJuCjJANVzYh79hivz67ux9SyDL/PfXW4cbg3eceCCjTKRxq7y9TEJp3l
	 HSlhaZBzeWvDwIWFE5uAOf/cbNrZxr4MF85I8PrnQlidm8Qk9qjnigoFqD/joahedX
	 XeJB/kGELhHAH+jp432vDVN7EIzx7vkkXzg+38EB/Ro/3cA/I0SCh2QZxnkYtGzR4u
	 lRIxqjNRzTkshaO5qTl0P6+VQYRF6D3JSh9NG93RjnWc1AVnTNgNcW2a3DC0ZOEAvm
	 pCue/bOqyHX0BkDcsnE1ZshsUe5CQAOgvKdcXpW7s7PnhX4ZaQMMdVaK4XN6YWB1se
	 d3lXeh44Yyo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C18C47422
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170546689637.19145.12609683203491649407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979fc71fe7d7a2ccaded8bca98db5fca7f9eba7c6607ecb63782dda5817f77e1
Date: Wed, 17 Jan 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705466896
