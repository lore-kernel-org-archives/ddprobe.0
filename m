Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A58F843B6E1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788985834; cv=none; b=nXWld9LvRuLVH657N7+pfAs0vhs1NCRVSwGqWC4eG2cbeGhEg7CApClvow8N/V3S1vakGP0KV95rV0ZV71Kp3voTOZQykpxXnH59JUyrJVXPTHLeVc2KaKGPgfo5K+PDIgn2cBUr7jhqvsS1OjEO7OZKfUbwiGPTz1bziDGbi2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788985834; c=relaxed/simple;
	bh=IbNqSNWKmgx21PcOXocpJN/LRMoMibGA3u2ElMbN47M=;
	h=To:Subject:From:Message-Id:Date; b=Rku3+zFACJSHg7UKiOJGkwheMskjNrdNu0dCaMzjFFvEuBQnooruXLMcsLTShCek1DIF/PvdzTChLje0ZMAgQTLWhcgRDqn5iyk52EnGCJr40kJ25OKJ1cmQPP/rL/0QdY5cvX2AJWB6cbxFHxghPrYnMeBZagtOZ0doeM3zgms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbEeNeaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbEeNeaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B13C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788985833;
	bh=IbNqSNWKmgx21PcOXocpJN/LRMoMibGA3u2ElMbN47M=;
	h=To:Subject:From:Date:From;
	b=lbEeNeaRR9OMGc8zdRyQoTZcWu04DN2JD7dLF0NzMKtGfJ8H4ASRWaO6wyrtPvSU2
	 6IvzFcvhSRNE3TDakgmsufA4tYkVHgwILiq5LLtTjSufNCMLo/dN0O7Zfr9PYlsec9
	 wbt2G3ZGkUPBaWrUm6hgZx6ujzD0iQTDpE6eqk0WANg7ydl8Tp/Vdp8qeto10iwsWt
	 eso80EmzDSXf6kADhfhGCnQ26yP1rLkIONYGZgdXC2RfffWHJFRnxqyYyesOCvNpTz
	 42tO3kWVeBbHO3lbF0O4STfSSat1ORIrsDRDvlplgR8DTMiKpY9vfkWbl8MwNnG+D0
	 cSC+a1DGe9qWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD35C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898583369.28934.3542652423491980818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b8fa936f86d3f7e2aee06c497c4979a1be3cee40bac17e72cf09201600bdb1
Date: Wed, 09 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788985833
