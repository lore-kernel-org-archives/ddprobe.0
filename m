Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54984173
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743389394; cv=none; b=r1wq4Vye6R6LRLfaGM65uWT//ccVyaDL0okTlH2JeBAj4ECDfW+PqU71/FqsjIegW+Cpl+OusqEsX5y+CdkG8Jdm0GKgLa8NSBzBBpeHdpDfNCusF/Haxy+GDYFxaEQ+Bw0CsF9ZQizIb80ssyiJmbtfK8/Acfy89wrm715iYZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743389394; c=relaxed/simple;
	bh=oPCQxekPcN/X+I2PbZR9T064fI8AgZjKtj18hw60IQE=;
	h=To:Subject:From:Message-Id:Date; b=Kd0s1a72soiCBlQWD2Ro+XMZ20iX3/8MFcblLM9+jWR9OcEvEe8WzC1KOj8cb0JEp4nA7U52QF6q2PGcrA4VfQoO8r0gAkx1cBqcYcMf4xzLtJtYBBuHL5ZVvM/bnn2HH4nPskFH/R55w336xuNU9lYGTIKuDASjl98tgMJSYIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POLOCPae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POLOCPae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70ECC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743389393;
	bh=oPCQxekPcN/X+I2PbZR9T064fI8AgZjKtj18hw60IQE=;
	h=To:Subject:From:Date:From;
	b=POLOCPaeUkhuUZaZ00S66AgOwiwglg6xUvaIW+p16L9nzCfZIkbUiKFPHvXWqSoKV
	 Tbq2aZ16Qe0CAzEvGi+JdLFAzSXEkf2wNU0BMijW77LkaB9vBUNUsa0do1LfQF93yN
	 zOVUPqSnBO5EBa7G/lyy4Lk1zT4vTW7xS6i0QYS6ECnE5YKqjveELapPLvj8A4htFE
	 KYJ3Zz08/a7AjlX2XJmPZvKz8OmCkSN1rfE/FajE3wrtDDj1/o4eDTEpANvXMc6+Ef
	 WQxRFzxPdW8tzMSj50r5t1e8yrh8PmHhpYtbZOXSpUEEVfoRRYJnUYr0g/XIY9yOc7
	 8lBO5xazUsAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C78C28B20
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174338939367.23083.6571373321012732232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b929a29cbcb7174d973912ae32811bcd7915e3420cdabe5b83d70ac3f77559c7
Date: Mon, 31 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743389393
