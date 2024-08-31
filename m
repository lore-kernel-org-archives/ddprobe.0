Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03776320F
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725092754; cv=none; b=WPc+RgQ6vJ15f4CpmkSvEd2CEz5eP8MdP+zNk26TuDujQpp/KM2/FHNfqpIjJwcZuZOL04lF9yPNLb7mggqlGnIm2xZ4+3yrv9apTNOq/OVMmVCXaLoFzGIAOJoZTSSwIIZyEb8leSyvXAOIJp53KwS/XjI5vq5Y1Gx1NcVaiHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725092754; c=relaxed/simple;
	bh=Mdq4B3UJZUfVTfBYdWLph5d/pqro8IUujGXyVgQwGmU=;
	h=To:Subject:From:Message-Id:Date; b=SrqVSbp5u6PJ3yK7eUAo+z6NorkMPlAapxrOtRSMGN0CJAHX4fuSUPfSE3O9nceuKSmcW8IDGSDjDQ5MgmG6UITrieSAJTLntxCObpqrC5LC0ApUpM1e+jLELK5JkZs83sbNPwC7d5/12stsFe/6JJYtjxvTU/sHeUygTIdsV7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6JhFOmV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6JhFOmV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA82C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725092753;
	bh=Mdq4B3UJZUfVTfBYdWLph5d/pqro8IUujGXyVgQwGmU=;
	h=To:Subject:From:Date:From;
	b=B6JhFOmVyUpuQxUUf7PzxS5WqenqvVbldMq8YhHzFdM5S3T6LQuQjATjXW9/Aiol4
	 49FUuzu3nceXPaiovdVC9XNkFQjY6hu/dcncCFKsxByiJP6j20bZUEk/ZnAFil881+
	 RS3GTC4NQXBlcmf/I3TiNqU0nXe/ONalYYvJmeeiGvKFC1w5nl+ZBs16cIbvURGkG5
	 B43a4iKrnTMeRAoM7NgXwrxTbynizEhqKMYqqronYidDNySTLZ7K/LbkqQPX42vMYi
	 4GtbH77yxI54CTvfaiTcNpmSX/eUtZuKgGmpspi1o75EJQQ8eaGZaGpyA9qv0vCoJU
	 9E+jZM9S2U+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B47CA101D
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172509275359.966.7361437987392700103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b246a4c2dfef6261699944510a7028c8d549d8f79e61f51cfe33eab6b8d8223e
Date: Sat, 31 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725092753
