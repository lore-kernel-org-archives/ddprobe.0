Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DC22E62C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759856994; cv=none; b=b+jvJP1gddV0te+fWhA0/VxSB0UARrMdIF5wuvzj2cxbyMrrtA6DHCM18i6/dAhTG4DGk8qHMpKGBqR5NbM90V2Rvqwgkzk47a+Vi/X4cR7O/eYDXWdlL2UAwCU9KO6du5WYZVCbfOrWiCozwUmhVwcXkLZpSARwb5SvVzt+fhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759856994; c=relaxed/simple;
	bh=EwbTuHWs2CSBG1havsvbHBFQW/nGyfqUuwg/X+MjMOI=;
	h=To:Subject:From:Message-Id:Date; b=VZO48nycizdD08YDZt6+zMIjr7c7R6Er0sAzc0BmNk6JVfUYWqw9KFmZliv2epZnw4J4O36CLR2iatQBzG8myeVNNu/Vew1SDxo+2IkTvZ47Gg1sgIUmwx5qkl9TOIDF2WIPsA6YEpetTlfcI+o9Bz24jbUeJS/Z7H6R3TCf6rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMC5ccjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMC5ccjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6881C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759856993;
	bh=EwbTuHWs2CSBG1havsvbHBFQW/nGyfqUuwg/X+MjMOI=;
	h=To:Subject:From:Date:From;
	b=vMC5ccjKaFXxzV+eB6blMGa+bkhZS+JiPskr6Ts+SeQUXk2CHcFrCzM9xA3Gjz3Nw
	 P65ELlkpSrg6SQ8asCrsxb2cPcnPLWowEUBSbpg14qj1CSTXGikmYWpBJmWRk4R3xI
	 hBz4iltNdA1os8s58ul2GDK6fIZwfPb6Efbz8ltVxW3R93KnS7i6axgtBLJ88DpVZa
	 nOoRsZEg9autXVtSfiYSMH07sdq3gZwiZUYUl7wC/Cd6l2XpV7zkbzA/vsjWxBH37s
	 9an0rrmidn/4jRrI0z123LjAhrStuJVzF+gmUUHXoNg15J9hzp5fE+zeTS59SHksgd
	 1wwjsFCkaZLHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318CCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985699359.10384.18377852294007224695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bbb17c73ad5d1eb7f55c6f3f48ca34358ebb3b1c356b471f8ca3fd7063f39b5
Date: Tue, 07 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759856993
