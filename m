Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E9B3988E2
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782772114; cv=none; b=oG5g8F4C+Oeia5gMkpNsYgQKyfMImGCXGs4eZFSVWraaobJebXxDRpjdCzctDZLkQpWo/xBiMlTzlNTB4nG5tivlpd2g7aXAqTIGqGoV2gH2AqpQ0wsYIUqb/6ukXj4UmsYiPtauTKuODqU8ABSNHe5sE1A2YXzBGVPEQAGu9IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782772114; c=relaxed/simple;
	bh=WpVmryyHOMXuA6x873EPjPKKbrvtInJaGYx5Anoz2FI=;
	h=To:Subject:From:Message-Id:Date; b=L89DR3J5fxp1cq4op92LN0giU+DJUn0SrdiBZqkMShwrfPkUC5WYmTasMoNkQCHPWaleahZEJzWyupiPKMwSFJ7YRRR/dTe5jSpWPWOPguTwMucvmz8dvYi3wsua7JdlLiuzGDPvD8tXNA+6ebKEOcUXnu0AGTu++5IKrx0/Djw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRi9u0PB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRi9u0PB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7693C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782772113;
	bh=WpVmryyHOMXuA6x873EPjPKKbrvtInJaGYx5Anoz2FI=;
	h=To:Subject:From:Date:From;
	b=VRi9u0PBefYVIaBynvjB8J+/UX6OyCsfb7uxi/rdPek6ld2FOhNhBlEbUwllBMw8J
	 Sr6SCWLCp08IgkoSCBklJK4HnktNFpzcx3rfSCeHeTyjQJSFSE6QKMfmwfRyDCWblp
	 k1UDebLSHD+iyVgxEo6SR9n39EvfrFvw6o4kZJEy++aXO53qQ12bihNnAtH+vvk8GJ
	 sUGux/zsokICa62RuZkgl3TWeWGnHvqmPKzq3KFX0x8ejHMiEpnZ+v1XkQ+vEVLhyz
	 jIzWHacjqGiYpRCoOUW7Fq510Kl83cTQwZs7E/l3ngSh2lpDbGNe5aKJL7PigRrOkm
	 8fKuILd+Tcu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED20C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277211368.27384.7512478929433989827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 156ff8abd17ca8001efeebf5e876dbcd075a7020e38595737283346b00d29b41
Date: Mon, 29 Jun 2026 22:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782772113
