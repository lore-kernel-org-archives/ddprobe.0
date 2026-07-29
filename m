Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4197B39A057
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785320434; cv=none; b=PUZn3mvJX7CklJDxcaHFS+KXU8UyXve1SaXh4IsRGNQ+czfN8zwHNnMoyno0BXEHkQDCVWe8PJ+IaYHgcKtKzy7q4ekGN8ItwUvFPTbdS6xv0EcH4nD/i6TyVMm0UsNNl//M6BKLzJ/RiGkl54FajwldjqXlaV1KACNEazY08vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785320434; c=relaxed/simple;
	bh=BNFSdkrF1cws55FMwaXzqqWCdnpM9jENOOIKUBIz2/c=;
	h=To:Subject:From:Message-Id:Date; b=ehb999xwwxAjkUtQR48kyjlSm+whzFoTWs9Dcz8BpjL00VTa11z6lzwyXWXfDGBsL86TC1reIYM5RmF0hm6Edtp91b3Etnk+G31gaR0XC7WM5D8EU4cpcYmHtknveeeFRdkZPsn9y41ngvbL3PoHbSuDIOMxxEDKw+J3DehUpSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUaUXUtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUaUXUtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5898C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785320433;
	bh=BNFSdkrF1cws55FMwaXzqqWCdnpM9jENOOIKUBIz2/c=;
	h=To:Subject:From:Date:From;
	b=EUaUXUtFvWvSynTEMfMvQ8nT2D7D/FqgEJrJ59ua4fuC/IRGWCELBKKYd3nJmU2F0
	 LwOh+AbkBII3FwrKALaBOFdPQerneHNypB/o0LV8WiejIXj1ATdQm5TTRWi6Dk6IkE
	 9ZottiypxNBuF64H6eVUQUtKREF78qyCckOnGHej0TnNHVoSpIziXgLjrkwaNXsjwe
	 Pnedd+R6Gwj9lHngD2HaWnhHEWj0C2IDv5kOwV6iOtCm401mL73FIaCcoVWjsRNujh
	 mVG+HRx7by4FktQsweXgp023Ic3jth3DfEe9WWACtOakELPcfsci5C/oePa/WUvrxp
	 yy6Y7o4gsqZZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ACAC53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532043371.16218.5574997455987212459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d390f97230df6c7a528a0831fd97cb71e885a4f022b4b8e4190d59ee24d8358b
Date: Wed, 29 Jul 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785320433
