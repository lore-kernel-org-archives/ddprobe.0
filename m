Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9CE1EF375
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747059594; cv=none; b=HWSAG2j0zMkIO4d6O3s+cZOf9iEF96TcTHNuRGWynN/JUtiunEpE4w5QynpNPYcBXKicGDCoQrW3DKLUHW7aQcXgpfAe8qK+9KpcktQxWfz19QeM/6xv9TVFU85oVEw2xRVAffHv/MRgDFT10b1DdbUztH2SEZkMFgv14LLZmxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747059594; c=relaxed/simple;
	bh=tB/ve0dnrkRSEk8otZ+obkBmgpJ1/0Y1LisxGmbz19k=;
	h=To:Subject:From:Message-Id:Date; b=S+NuoOrp70kdvhkRNWgHmWQzq5G0AGE2BZ6lBGVPhfjxiOJs/0IRyQeWjcBVr97ZIEOt3JXIhriO1wZ9qBwLCuIu2KVfpwIOA99+ERgrdI0pnsu9GOBRImQuQqmSLVcWSicQ1u4jsgrg9nsdjSuO8K5g1nT4cn1YB9QmUIXv8q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTy8OWya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTy8OWya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E66C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747059593;
	bh=tB/ve0dnrkRSEk8otZ+obkBmgpJ1/0Y1LisxGmbz19k=;
	h=To:Subject:From:Date:From;
	b=cTy8OWyaIus2HYDZN5Revwk79zEWhnulpt58gYWfuDKJBWgtj/fnZYSgsaO2TofIV
	 Wufn0saE14Yklcu/Nrpqd5j+eJWqICoGyn0TYG0h+hyUmoMmsi1R3UrSvYZ996UvKk
	 Ffv5CG/w5owvSfr3ssOQGlRZeYB91y698RcJus938luzBbys3MTK5Irmo7NTrkIee8
	 45TdQ1dX2g7/zNpwPN32+YIlox1Ma693ly/Jt0zcFv0o1knsUEGZxxDQEddSzsSpJI
	 BeIBIELSBZ5XrKwLanhSSLdDSeVAWGL1OGiH/nbKdyoZjfx8l0hLyZQToKDID+oNgO
	 EZ/Et720h9W4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F4C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705959358.21741.16701900560325499865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24371af8d6bc6f40eefe72903079c9e34c65e999771e2c5c700e6cf5e7ab9cd3
Date: Mon, 12 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747059593
