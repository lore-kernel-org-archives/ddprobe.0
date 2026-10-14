Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E664493D4D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791966634; cv=none; b=EweWSk+InntYJhxrJClTZUoXYjUSg/htJXoAQVyub+WYyyfgzx+wxVboVGxkELWq+J65YojBJ2HTNoh8HdRzsTnDgaqWNzllekTGNAGFqGPJIltAWWA7NonntIpwHVSDBwxiGU1JrYQEQDkIeh+UciegoT3WrhOlfTBKllcZfrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791966634; c=relaxed/simple;
	bh=SkbEUgkcI1PKVT5bjc6RrpPaLhCvV9Zg91tPIREFtyo=;
	h=To:Subject:From:Message-Id:Date; b=hy5So6VWj2DouCl+NPtDYnkHW60jXQ93R54GvMicDuNABGq7DU05N+dFFADNmq9vBn1MNuRy6t834P7FxJ4RQZDmx5dUM72z2C4hnJDSIGl3ZDFkyg8EcSi/81mrEYgaTReIQ2x9YW1z3jOrL9lPMYKySXyD/sVGD+gob3vwd00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exJGCWIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exJGCWIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48ADC2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791966633;
	bh=SkbEUgkcI1PKVT5bjc6RrpPaLhCvV9Zg91tPIREFtyo=;
	h=To:Subject:From:Date:From;
	b=exJGCWIM5lMM/i2l9kDXBOQ4BMKjo5VnpbXX4RWVMXeaUwo0JhsWuwrjgG0Xzt9W1
	 at6LupVQEf0EtRqA+f+o6MKlji3c3yAQyfn6hIw1p+n1i6ZZ2nGGnthWEjcBUAq8JQ
	 BbFUGkYXVWC/X3RxQvERvzXgWpxhTOCE3Nm5i3E2vV1DZ2nu7aMXqPnPgoTorWsmHF
	 QHBE/MKG8euWf+NnrRwAUss+MVkzbI/AD2twFs23RO2XYw7CVRaFXqagzYT0m1Hqnp
	 sXka5fbAHH4wMT48sAgQabpYnGRlEEEVuq0epma/q7Busb42KeDUJgmHd8aAj1m3CY
	 FXfR+cX4MOoQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E2ACC6B27
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196663371.29630.6509986868536108320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 694c7ed5ff27be03b90633f501f1082d990e6ff4e82853dbdb5ac5396f67740b
Date: Wed, 14 Oct 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791966633
