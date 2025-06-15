Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D18D200132
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750008594; cv=none; b=Zy8/CgpburbVUU2qBJVi6pAYkCteVRBGsIsgqNeD7nYG1iiaBz9rzDqqakwRvq8m7b5qBpYn0ocUQLOiPN9HGb3IHnlRzsgmqdXSLnbALDn2rchPdgBtSBMVuzkgHMFSSrQVftUO0n4fkDWaCNt0FbC3DXIg365iIpcC4RNFndw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750008594; c=relaxed/simple;
	bh=5RAGOpVRVB1Fx+GTHPGz0RcUHMkiLMJw0F7C8WB89H4=;
	h=To:Subject:From:Message-Id:Date; b=uGFINfT8R/OU3epPkuGHSEjgCLBNXJPGpGT3iLDG1D3o89ioVqxvUXIou8BMZvVin59T9N6/emLzYadiis+hDbTbjIn0LPdZUSUS2VT3smSS6QeA0mAWw+G72Ziazl6iygI9O/ffzhNN1tEUY1yZrJrae3mylS3TENETRu/8k6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2JyU0Hn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2JyU0Hn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AB2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750008593;
	bh=5RAGOpVRVB1Fx+GTHPGz0RcUHMkiLMJw0F7C8WB89H4=;
	h=To:Subject:From:Date:From;
	b=a2JyU0HnI9X5+kO1v7IGOMimBRHe0Lcb+CrxWJ463NwlfkbL+wBZVROE6gWdx+2ke
	 Vc27EN2s0LSU2K6bhuhWXnKmcoFvJD34P2w0pigoy03Xs7QqQLTpRrVj0JZ598zkSa
	 Z72s8NIHof7dEGZOaonQn4HqUqeeoJUTdn//2e7kh2YG6UNMk/SZTwiBMdntkEZ8L3
	 txfFY6fhIO1pVe6C7JLiyZkQMrdNHFhAV39ZxV5DcHpIdKTtSiL0B3eg+ELTLFu8d9
	 lUUUQz2f6EzaydtKhrm0av0KC5BUtdThTf5k1OCizJ62j7jefiFQJ9DMpCHdajBR4F
	 Qq73jjGSKLocA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC17C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000859357.2655.9182222614668642305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 772f560347c1e7c0681ed007cd28af5b0f1f499945ae0cec74a3b099897193d3
Date: Sun, 15 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750008593
