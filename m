Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE574A21
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744153794; cv=none; b=l9twgCBpkgJVC8HGsthpriN4TmH+czaodMdOZXiLs9azBRiqR7x265BZfQAeG/UMTbILlgLmRX6xRZNBnJ+pfsGed2UjoDbV4DLJPKXB9zyxsZBIiOy6OdewRSnHMd2M6EVHNOCJ46ePSZXMad0tGQf6UfS3t8y4jKXi/7XzhIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744153794; c=relaxed/simple;
	bh=v1GPBr5z83uOEH3VjYyi9TsKsMC+D+jzbcbbfKvK1gg=;
	h=To:Subject:From:Message-Id:Date; b=mP01R5xhhtmER45tJqF9zv7aoYxuH012r79KdnosCr0LYNVjiRqbwUBdOOw3GYjim5KHvZeRU+AKbJjzindLzOLFKaTb43Mpkm2Wi//VaADsicYQbFSyt5ltCFpfCALBPkjIF/s1iKm20Bu86MlOQcFgBpMxQXcxnAqAU4lHEYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ3tKGOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ3tKGOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD715C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744153793;
	bh=v1GPBr5z83uOEH3VjYyi9TsKsMC+D+jzbcbbfKvK1gg=;
	h=To:Subject:From:Date:From;
	b=hJ3tKGOpY5hAkUbCapmp6DmO2yckyfTaGzsLPKz3p5z9kcIlUe9GVyiuZO8HFZfVw
	 jKOPJ/AqUEUB2f2fPTA3ee52/Q5S/0P7LymQGMXVN78HZiytShU8Jc7mYnbCrzI4Zd
	 iPeJSSXF8MLbVolRxLZa4I/PoJPLIS3my4COoBbkdWOI0R2BDYPR6m+IBs9BsbrKvj
	 MsxO11Q/SbvFpEjhWh612LaW3CEr4oBuz5HofdSeCuEuWDIbEXnOG3sQsIaCvizd0a
	 Yid2U/pc8NnpMLgY/QfsRUWF0miUzle8PlOCrd7INEDUCY4pRGGmDCIJ+f94dFON0D
	 5LDgQvruZfXrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9639DC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415379359.32699.17469534061193075243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e320a9329cf4ac63a2e0aa771d5c9673ed2bb25923f2e2f7ffaa9e05fe95bfd
Date: Tue, 08 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744153793
