Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D17311C2F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778153254; cv=none; b=YccxQ4L7lyn7uf6WfD3Nlwo1Xa4cO34BRRasKDUkiHcJP/6UbpaAf5i0avz/4rEKLz5hpHlvyXL/7P+ugJuW2FXd6u7y6gkvKnruRK79oSKocRoKx6qsBy/D6p2pyP2iw5B7D4ZdiSe8a0kD0Q3Y92deobU0dMmkC3cdSZiKeNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778153254; c=relaxed/simple;
	bh=gLYzMWMAMk3vtNL7cdceS5hH/NDHm8BupWURayVzvos=;
	h=To:Subject:From:Message-Id:Date; b=ad7KclGJtUjSmBgV22UciF3Y4DPE27V6cDX3/RvY5tCArsgE6u53h21bL8lKKNOIYOwrZkMsfloCOomPFPu35r3eBSHYcWzURV9cEaBSYhtWK/DzX8n4bfTmQUjzRVDS2Z6S9ZcQCl1Dn11kUxVR6T7QckDuLgKZNCu9kOyV2PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ya6RIFNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ya6RIFNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEA5C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778153253;
	bh=gLYzMWMAMk3vtNL7cdceS5hH/NDHm8BupWURayVzvos=;
	h=To:Subject:From:Date:From;
	b=Ya6RIFNRgPvk9gdlIVu6ym5xA53OQ3HHW12DIXt2KeZuTjgwbxCJt7K8ObvWy0HGl
	 LmOE/ePIv78fJQaxZUzdnnEOy5xKvYRMsSsNLZcLbMP0vqYb2q8tcRifVpLlGGF4OP
	 NDCG3zEyXA2Ufc+jUFzfqrg/nJoqm8ohD1sIEU4MOYM5JzVP3T/NTsJOWNGoIYPUzO
	 8Y5y4eVmYdcH+R+fi5A6c2CYhM75/2eJv1h2uBEU2hCkshSvOxoVslhVGdv/UqvOcK
	 cuRW2914uEUnMTcHAOvtBgRi4PAsspyr3zsFeMzJfxTHtdBMVwnuM6x/cDDAk3UWaj
	 rqZjBOgNpLVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF3CCD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815325368.20809.15923005299218281119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b04cbd6a03226133c0e105d34943fb4a585acc5b7de697539a72b6c235fba8a
Date: Thu, 07 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778153253
