Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388DC20C023
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766603634; cv=none; b=GP9wmEfRDrgf6O5yNxGfjZVRrLlY8FbI9g50BHHKeS22WI2K1CsnMKPApflKR4ARHTxYaCFtrEbfoiuAuF/kwAU/zm5lXXdq/wF+6Vvbs0Vg5gK68Y5anivgRxN7IR8C3cxWpoXwojs9hwJaOsXMuS9hsGrIaG4gHEWc1i+IVTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766603634; c=relaxed/simple;
	bh=NmPRikMaT+41U29RkbAO4cU/DcG53XOvHnkzegcykY8=;
	h=To:Subject:From:Message-Id:Date; b=K1qFu4uRycyqbk7xh6b5tQfn63WLsIHftKkY9ArQbhoE38WpsxjykOCIVPgGnUdS01C8dTa/rqtCqr5CGdWK8rcnXpDgrxEbULlhirL6kMWPdsruuaDOBOb5vF7BD/vR/qFzAExIfuY4GRGVrTsn+w+IbrV3lwJAaVgTzUY3p4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taaVN/fI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taaVN/fI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766603633;
	bh=NmPRikMaT+41U29RkbAO4cU/DcG53XOvHnkzegcykY8=;
	h=To:Subject:From:Date:From;
	b=taaVN/fIH0vOJ/AOWQJuQ2PA9sjM4O2zPAn2sucUcXI9x5fPr8u0dDKSeZito32mT
	 e/xFOil3TAAMZfiIjn9umTTHJYozRq+OZdglG/1QeknBwL+S58apW+tRTp6kw9WpnV
	 yZ63uZz19ESv2tyX1I9VU6qUgM6vV9V7HdOmvIGFberq24aV/RJO0PMhmmNxEdi/mJ
	 oAkC8A8pnpWhktaqhfL5nxMytNJ6hKw4Wt3d2x3szQIFGPeYtNgJ+zFs57t7w9Y4PX
	 pSPFPpSDBTwGIxmQrtEDpgzrRizpi04/4XF8ut3I/v5B6ogRJd+1xi9prNc69/u+gn
	 N2qlYE1iCLLYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F618E776FD
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176660363357.16924.11018772514320964218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb52dead3dc99566d86ced3d42290bea53f3112e36e7700b3055de45453316a
Date: Wed, 24 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766603633
