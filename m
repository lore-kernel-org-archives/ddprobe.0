Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C9B1953BB
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748131194; cv=none; b=VLCgKjgRt48bBH9Kk9+bRY4+Axsg6K3c+RQmQuRqbB15isqiCiXBV+dOxQTYx74ItNPg3NJXHBGDIHgoEZSDVpnqI0/422SMBIYciem+aMULTbP6BGfNHNaaxA3ufkmFgjHsXLOO6tPzR3/ccLvbh2bD2kYSowmNzVcZzFjOCqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748131194; c=relaxed/simple;
	bh=iSIarf04mkGspDYOYvSW0Mq1kDoVwHZLJQTysh1oDlc=;
	h=To:Subject:From:Message-Id:Date; b=Tw0NnNBSFp57ZFGPdA0E4pNv7VQk7K7GHEiyyBOgZL8w74CpbLIThVJPtIgIZBta624HfQRtaO/XZHcBAV4fvLGdskkppR9Iu73/MZaWrzA6qq1RcG4Zeoi4u2Oym+5gbh6r8gHpy+oyUq9LNrWMxBFfx6dX9tlyleH93FJJCgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNtZIveU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNtZIveU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F38C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748131193;
	bh=iSIarf04mkGspDYOYvSW0Mq1kDoVwHZLJQTysh1oDlc=;
	h=To:Subject:From:Date:From;
	b=VNtZIveUPJaL6NmZH2HVbZ+J2KXJu1ivyhXYN5yUzFMDR+GKvuz3SdbdzHnigLcSN
	 fMnMN/Kg/2PtPlWsUczWGJtNSP0d9yR25wmQcqm5w4sprqi+bLhrzSG9nRaf/PrbM5
	 r0qOXT97BGIvj/TEURUG10RYz8MGNe76MeRHVIZfO/BCUeHhT+jwVOxjUr+r0kBMHb
	 UpcA1rfY4Njo6BW7eaXL4zGEBEA1OFAjxKUv/NrR/u0RDPMXPGjnQ9cOcrEA2tGyX5
	 vdoZ6VVP6Rcwptq+2GFzewge1Geqyk7NjJn7oByhCWXUiANQGJs3kN3TbwBoAuXqyV
	 lwm3tm95VedEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC3C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174813119358.13152.11830269387791740221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a46e849838e8b4e3c72bd79a94c4c7fe978377eca816c02809ddd382fd5b1aa
Date: Sat, 24 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748131193
