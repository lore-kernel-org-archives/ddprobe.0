Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577E63CF65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718122103; cv=none; b=UKIzLatIk2oo04CuctRT0L1AdhtnPnIiTN/QrQVgrzB+FN6WqvzP+LxLVEpIQF1oL5eZ6MPjSUVrFtc/xjVB1G9UDuhveTQU32YMwU4JSl14b34sDXhxZCrSuCTTUkqPHMB79zSwOS5tklFl01Ld3Aio6usw3zFXyPJVjW2BUs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718122103; c=relaxed/simple;
	bh=12s3D8CMPKPyYH5B8tDMwBIUpwwRIceRKw10cUQuExs=;
	h=To:Subject:From:Message-Id:Date; b=tsSpHPp5xwoFtblfiIJwp1b2+2p7/E3N4yWz3mQQ+AbhUFzEjSr7JD/omCdC5/q8TKUtcEMAcNewwv5O54eMmtzn8yKvHjlJH+zXGcur8zbDc4K4P3VRA5cL1nwE+1dFiYQt3yrqtAraYowI0IlfQ6xaIQqHYqXYIVo92wgHpzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYADAAGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYADAAGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D70C32789
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718122102;
	bh=12s3D8CMPKPyYH5B8tDMwBIUpwwRIceRKw10cUQuExs=;
	h=To:Subject:From:Date:From;
	b=CYADAAGWzOvPo7GOAfI2uWKC8mVZ5U0mwKhrt9C5+3j85sheVUkeQ5hd0YaoTBSgZ
	 3aR/ndFJJt0rd8zC2OVSNz1OJmgG3lmrYR9pMJ8uTPaoivTdr3eKlDGVCLojGhYozs
	 ONRD/02tcynsUtJvnVDnKCSTCCbMvsm+HRFIF6onRSaEgO+nLGTIcbY6whqOYsqenG
	 rsZ/D3G9G5b1dWpRFBS7QM7emWuLzG+Pj5jxvAzjwQCQE4ogFEAl4+4G9IvPtWpcdm
	 /SMQkC7KIuOCfiTvM5MUvy2TR4aIs632oOiWIxYLcYnJlgjq+PjD+hj/L363W0H5/l
	 1e0jkIDS8VmcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C272AC27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 16:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812210278.30739.2116925701144024112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5d4e336a9c9ace4b8f3b891b2109ade69e50131b87e6e296c06d153b9ba593
Date: Tue, 11 Jun 2024 16:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718122102
