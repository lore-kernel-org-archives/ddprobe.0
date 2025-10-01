Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A66E273D9F
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759306194; cv=none; b=iWBelIBPVP69FAuA1RNcYJcGT22M/PaVVAys2To4hFzqN7DfHmr3BBCT6A/o6EWLVNwi/at9ejVRnhB1UoIltHT3+Hf7vMhvj89XCjHCWTlwFvd79X2un3HuhVIlUkQrnoPdKYt19X48/No1/V2mx3uPX+2/NtO4sfInSwzcD1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759306194; c=relaxed/simple;
	bh=SqNhyJQHVIa76CT1N93pcij25wDsVHnVAZM1ahQuopw=;
	h=To:Subject:From:Message-Id:Date; b=aof+FNPb1cC3R0bMwjU/9kVb4InPMSSR4Qil5R3LncVJRH1KGhdGMxprcyvgAAQReeI9V45iCWi/Wsg+ZaxH4b59IC6nGXjdeiJuI/qRm/B510aW1t/F/z+z0RVUrS99lYX0oKDX1oHMDSC6QJt702xQQHdfuwowX926VU+2hNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqEyN5d9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqEyN5d9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E5CC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759306193;
	bh=SqNhyJQHVIa76CT1N93pcij25wDsVHnVAZM1ahQuopw=;
	h=To:Subject:From:Date:From;
	b=iqEyN5d9niqCfqnLxKA3yzmElHAvJfTGRXRkc2FSgsVXMbppHdQNKWetZUxtI4Jfg
	 DAQGIRUs19tROwz51KkoZDxWiFF8lJzPc7gTHjI0GQqnKTMDgyukLhmE8ETgGsdj4N
	 hlYsoajsw0egSt8wIDYNs9e3k+TVBwVfgacjMrEVmmocLipFJag5CUIeSo0AbouEac
	 QoldkKsUr+ij003CSp8z6wg9YrGN4X1mbWAm/2az4dhIk7+2KfTAJQ6NNPfhpmgQUH
	 N/rFNHgr5Yf7UfyiR+p42n3mOGM+aCYNU2iHlYYs8uMFlspfcMarfswvzCxzHU8dcR
	 6+HMogH+NpDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907AECCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930619358.18652.5976665392196595842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aac5e01a36ce47c10ca0524ea8e0b1f39b9108c2ccceda3be2adff21b1f0181c
Date: Wed, 01 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759306193
