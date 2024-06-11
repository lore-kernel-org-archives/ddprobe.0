Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B95171079
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718083703; cv=none; b=BNg+3KsKa5ktVSxyzPtG+7/wjsGLbeNO2+RyjALp0HkarSHKmoj7iUHtwoRGrlnXU/dSNG8A4mR0MA2vdgWvXHx23AWPL6fANrUtGNuomnV/PD5RM+MczrUzj6TRNNJ/LqPf5PfWLqlHfERZ5ysCNT9vc7V9C+IY9QzU22SEGrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718083703; c=relaxed/simple;
	bh=muQVC7ph/UV3FXSO4XWL3IfBzZbgk6bktbb6MzV+AdM=;
	h=To:Subject:From:Message-Id:Date; b=gZ4kEMhwdWYltlaW4YF9kcN9Qw9xMGA7jXQrUmqCC503HT52h9nLXBt/cbiG/HwudtePU/hSAkYzkML0xAkHWYIRNwW20m68QzYxmFuTJzLhDqZSu2YUCEXZVd3c2CcDyStG3IMc0fmJzslNmaFa0rKrok/lF/QVwWrKbakH4qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRYzR6i0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRYzR6i0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF223C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718083702;
	bh=muQVC7ph/UV3FXSO4XWL3IfBzZbgk6bktbb6MzV+AdM=;
	h=To:Subject:From:Date:From;
	b=fRYzR6i0DkxUFJWPOrUJgOax/G2YNsNy8NqlojqYnmW5bQQ/VWafW7n7Uf9KaXoi0
	 Is1mO97QVmOvpr6ltUXy5K6J91fp8276q/p8ntNkO8pnqps6LvrNTlQFFbwaSPpSLy
	 WsJZmY+2MqbRhna1kAZYMsO5zLeM/JmfM47qM8PF5836waPVkjQYe4KdWHSZgSGXzY
	 B20lkLs43WtwSUfA0qXfewNYE+JUq4kD9BjmuX9jB6CjNQzTe+vZTx8gbfE2c+5EGf
	 8BaDQ88a7UF1MmqY+qqsDchwd5dRMVclMEphyzxJlpKKY4J25dQGwdZHstbfcLc2pd
	 oTvSC1266vpEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE44EC27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808370275.20805.887114555004866612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea81d1bd00bc24b02afa4a7c4f7293f94e0f7e1986c65a35f1448ab1b0c02a2
Date: Tue, 11 Jun 2024 05:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718083702
