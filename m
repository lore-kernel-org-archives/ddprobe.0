Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6986128030E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791526834; cv=none; b=ouZ/D6kug2nfZUmCxbX1OcHESi1wwIO3HG/19tu8esq2bWGWBIqElqW4iLFjn5G0SRhH548IDbbRilWA624/c7KazG7s38xWFDvSEzEj2Y7uOrWQPMdNzRBmBrkyRSpzupZ3pPt8TzJ/Y70iIOoXTv5Gcka2XKW5971tQWqbvOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791526834; c=relaxed/simple;
	bh=8DX+j0tVMG77PYiTklPvsOlAZETOKMWvkrNXtaKQW08=;
	h=To:Subject:From:Message-Id:Date; b=mop0yKhCSX28Mqmri4SdAiWpwO0PGzuJ5bqjNO54ffxZIXsX2z7dOW4xHArW8xe67H/e58B73PbaMrP9oqAgWkQc/fl/JVPBvu01hWqzF3zmou4dtSOEvHBSvQkC5Du6uW6WaGNHCUer0Tv2j2L1uL9naO5LtD42YYHvix00IcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtmMbtjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtmMbtjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF79CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791526833;
	bh=8DX+j0tVMG77PYiTklPvsOlAZETOKMWvkrNXtaKQW08=;
	h=To:Subject:From:Date:From;
	b=PtmMbtjYHRAeEMsKF3/jq4CdBwXrd5CItdmVpzjCjx5chuSA851KUUVFH0m+JOOuD
	 htCMplAfK0+aT36f/wOS+8m9dztR8RjqYXgsrfLfW9trjq7Vc0YytG2QxLiMskGI+7
	 RUhBxBZMZ/1dCgVysZiITA4i8r4+yM2KigbmcAocIDq2F7fBwpDSgnjwUmLtfFjMZj
	 PHIIjgpNyS12xOKeMHuzienLGCLFARFg0eNrvCbi0Gyv2wSGnqhOHzHDAaqa1hyOZi
	 Vb9KBMVaq02WqW/aWxvyoBa2fao0lGNw7wZF49KGk1rcLFyCaU6mDyii52htO2z2oy
	 vjtutxJTrAFzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD907CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152683370.12810.17928514250413177154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e647810b009a0ecc9bc0983cd61558d0fe33ef00e93d952706e5dfc14adc797
Date: Fri, 09 Oct 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791526833
