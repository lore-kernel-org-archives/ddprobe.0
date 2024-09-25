Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AE94C91
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727229954; cv=none; b=gF7aEAyRLQL0S6tG4JUgUFxUiy5llOxodU8fxrjgnRsuPfecc5Bhg7VDSImUc1bXqJbkSSIx2qojbNZV4sHuES5rN358Zn2S8lsrOxrft452/p34CGEmIlFJm79XWOnN9JogXClGP36YBWOWSdYjNTNqJ3gT2pljS6brvJzTdmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727229954; c=relaxed/simple;
	bh=w/Ilf05BIBc5I3OSJNDjT0IsWJOmnI4Ct3NlX9Gj7MQ=;
	h=To:Subject:From:Message-Id:Date; b=tqj3aMR6LvHFzxobPxl7brru/O7+ebtFDv5Dk8TxskRMiAmfecddjfSl6GJH0xuOHOwQcoAb0ZoOEgcj1UzMrqBUF7pDsSBS9c+qf8ITh0gyErLaKAT0ZineOFeDJonfFtQWU9ROge+js5zMxpRZa/3hdAZfVmnrxHlcfoC7paM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfb9G0Lf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfb9G0Lf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6BAC4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727229953;
	bh=w/Ilf05BIBc5I3OSJNDjT0IsWJOmnI4Ct3NlX9Gj7MQ=;
	h=To:Subject:From:Date:From;
	b=bfb9G0LfXZQ9HHixe5lHPHce4+4YIl4PUfhMXwsz+x8Frl54gYQ83XT3XLnoLgnAr
	 VJVVQvpGbYSMXwCD8iDRzsxULIspBpn/9U+k8m4OLUyjPZ95TAaOGs87Vlet8Nmj7K
	 lt4DABlqyHnV3bCXF829OhKHwD1faw063LRMzryvsOCc6GpfcO6qWBNV5SU88XRfNC
	 wbc/czMMLX8ih8v83Bq8QJ+gegWyx7a9459JQPdwlbCCwYAU2uHtcDjQfOtGCMnnL7
	 gWeoTBn/2ixDdlENXbGDsz27QKaoXTKem8Gb1kKy+njtJkPHiZm/ZgPm477GTIe02z
	 zFEBAVCAKXQsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A96CF9C69
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722995360.2249.304006204628072879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1d36ea7c692d2336f4cbd991252eb886ba2d15ee5ce2a5cb84190ba16ea83a
Date: Wed, 25 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727229953
