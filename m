Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C622935C1BD
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774043693; cv=none; b=kK0UxsiolYZOmS+/bMmTm5WgEY/MYXHANez5RMryRepbs0boeg6/MuS/u6ixukEnt9CBq/mf5H84imbqP8wTGfwVUX2jagSbPBD5Q/YphEsywywm236clsI/6yuKDX99U7vsjChaDsNsVY0V5dcs1SCW7zlIDFQMCtwquiNYOuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774043693; c=relaxed/simple;
	bh=hi8YRz9CdpAD3RhWmynt4YS090kzGtqTPHFPBwesjVA=;
	h=To:Subject:From:Message-Id:Date; b=Qq0HDFTJQT8t77CtEhCZbD9GGKaSfjIIniCbJxU31mgJbPhX+9pu3dU3yiQwf7YJggcfWVFr8gydKHFiwewZFhyYMSxDtIqtpqCA/I2wvmoil8EHDjSHlLDNaJFEiiBAkAYrcnaUGi3Tch828fMEH/pkkXg8Ldl8EMBgVi+qMAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szCJmAJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szCJmAJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1524C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774043693;
	bh=hi8YRz9CdpAD3RhWmynt4YS090kzGtqTPHFPBwesjVA=;
	h=To:Subject:From:Date:From;
	b=szCJmAJioyMRSj7QASN2UkXf3agp3tevsVeazNFKUinAlHFp+Y8XHaK5cw8G+niF/
	 tqjq01y6mQ6jvG2aCPMi72uTJIJj2se3DM64PRqNeC4og7YEU7XqLEGSQAtQ+n1FW3
	 jnjatwH0z1sWcFMwyxT8nZkHWjJGppulOWDEl0ZWumrEOBCgI3ntZtLx5vyP8Dkb51
	 tOlaWspA8lmkUEwxlwHnva3BmOuOEF9JU7FTDLFdJCE5sJT+/WU3y5B2lqhaTxOs/N
	 ejM2yStsKvCS/K5s9jrBSUU5xFbFp1SIvX8xrHmnGNzkPxj9ZWvJZR6NiykwQrqE2x
	 COLsMXHr4YJMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC321099B30
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404369358.10488.14195583919973696082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 985ec5191c710e21ea0a88109ca50ff0926c49be2751bcd19f482ad27334af56
Date: Fri, 20 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774043693
