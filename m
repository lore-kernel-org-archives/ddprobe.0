Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4242C0268
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770394434; cv=none; b=ceWcPrS0vTpMYt3dF33vVcLz2poVM42s3KAfOri1FiTQHtr3pGSBbFY+6h0dAxkROAVT+BoWh7lxXezPceEQl5jJGqEBk3MJPH04qRcCOCiEbUjKM+p9vVMWmH2c/cj6qlSmzK+Mfnc0+GzcB0B1CXNMVy4TLtnzGHRiePSNqtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770394434; c=relaxed/simple;
	bh=6F5C8+jvSPjnhW2iZbLG97W7YdUBVTHonTNnNKMfz48=;
	h=To:Subject:From:Message-Id:Date; b=iX6Y6qKunKE2QyucAcALCl/MSQhS2a002NJ3K0ffCVZIjivZ3870Jxtef9KWicbqA46wkXMU8tBxSiZ6xDZyKipVpWvz+AfSfxcBka9bNZQkgm+DaWwI1Lajcjxi3t+rP0GjvnawWrecEbsX39Xu3Y5QmwxO2NLkU4kpfBIr8bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjeBZjrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjeBZjrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F7C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770394433;
	bh=6F5C8+jvSPjnhW2iZbLG97W7YdUBVTHonTNnNKMfz48=;
	h=To:Subject:From:Date:From;
	b=WjeBZjrzVAdX53uFB+iap8TODE19fSfWF+PRaVT6h0Q9GIPRoGx4cVCdoIyU4J/SR
	 VtCjrHWVaZs/ThDSDw9SHmj1Gb2okMSqkuhWW3Fbk6KtciNLN5tAQoRlMJ9szAfW0u
	 EIfdpAWq2fzJ8Uxq8EW4KFmZ12311Rjlj9NYmRStSTS6Eis+9UscElEoGL/bVnEy/M
	 YfRiqKod33OgSWLC7CEN6ZKY+KxXb7RF6tUBW87bO9K7MhimYTLIg7oI18MV628avm
	 eOPeuhwxryyeII4HGsaI5VWNGv4oNWn5+2gPROkJD6YWW/Xy/QQ2zsft39eD7o6MGp
	 lqRQjcD1sfyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A61FEE20B6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177039443362.21545.4456757267355299741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffda267f3b1b6340a458115b89d06cbc24d4228455d4736d3d74ceaf1b3d66b
Date: Fri, 06 Feb 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770394433
