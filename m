Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E71255248
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765528974; cv=none; b=o5L1Qhr55yq067kCaAiT7Hb1hAf+tj5F1OZAe8UQGCfELHXzyDgczougE/7PeS3NlAO0nYOrUZ7JKQLsndu4DsKuZjq2m/m+1FVU2t1ByFJw6BMiJXZQC9v/A9NhxkFpOjpWLpcgPaQo61oTnOZG+yo21uhRdDrj5Uz/Ioy/Sxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765528974; c=relaxed/simple;
	bh=S6HIXGp2xVO+ndcJa/3KuKofl9/VGHt1H6J/yuI+ZUo=;
	h=To:Subject:From:Message-Id:Date; b=sOz5FtE2HtdmPKyfi367nOJuOjBSfo80F0u/BycO48dhSQe7Ns0DBX9cz2nHZdeywKsamNOBGJU59Mg8E7I3Vwt7QbUebMXn0P+nFifkahOpb8KxJdr0HyBfPyF90uL0Xx/0RvgcJo1g/PmA7Df/55IgCjRNFiIGnqIUdyAyEjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRrFkHbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRrFkHbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE138C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765528973;
	bh=S6HIXGp2xVO+ndcJa/3KuKofl9/VGHt1H6J/yuI+ZUo=;
	h=To:Subject:From:Date:From;
	b=jRrFkHbPQOLJd3hynwi2SzkQ6Birs28rsUUwl2XE7H+OMTxEsNCNktg5Uf+AsF+iQ
	 wsYDoBQ14Zkjsij9OP/0bPXZEIyHM665ILWL//FHEdu7LNUHNLB/zyHLrXU1bQQZ/0
	 sGFIuIvd7JPDPGKzJeQ/2ZhFWm9cxx+uvnXeJhM/bqaCl3L2tA94+u6spqgAZRahXI
	 dtWvQax6eLdRq/jR8Y2iF4pCQiWlY12DvYyf83faOvV8Sv5rnFWaPRR6umk4LNBrbr
	 VDxeR9vN5RXd0mx5vajepR2dugKuf1agKZNHRjMVOeupWUFWQhv3iUsJrs6YpszUNU
	 bnoUtn/at3rNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995F7D44149
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552897361.12014.7843415802799827115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 826c22e494659c8025831b68a343637b5782cb13ac2506629377eff01c1067ad
Date: Fri, 12 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765528973
