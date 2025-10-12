Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137AB2EBBA3
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760297394; cv=none; b=dMZtMLQ4oiS6/zaOBPdqHeBImBV2IyD9PTDaSLoScNAEQvL1FtPBz5gEed8fh1f1tpYd+T4htxYmXcy+xIMy/hRC6cGTYPvnNnW0QBNVyRleYZBO+sTVjAe6E+20NZvTVlNdsD93BqT7JnhNVf7/fWZUpyj1f2P8rKeDTd/AIMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760297394; c=relaxed/simple;
	bh=rKIRdea0URLIDnAhxHmxiAP+N+YERNHtE/AF1huPAdg=;
	h=To:Subject:From:Message-Id:Date; b=EcEnZsaVil7iiRsv/u6Rhlkfzf0hlirN58b1uLjNqZ4a1Cf41kwUM/syAnpvN8hsFZSLvMkfDHNXq/LjZKwDdLWl1VwLRixLOMGcQIgjFqDXYqt7rI53GNnxZJwJFf6ibCFlvjQb4zFHktb/EFGnF3NWfD2UmMLqy/0Jiq/1HL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OW1rAcmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OW1rAcmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A522BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760297393;
	bh=rKIRdea0URLIDnAhxHmxiAP+N+YERNHtE/AF1huPAdg=;
	h=To:Subject:From:Date:From;
	b=OW1rAcmMh6gjgPMaWB5ayFX8zAwrKSsYD4TyA1qZBfZoMm47ojOjuf2Xh9KplTH/8
	 G5pKPgdlGJQLUs71ZDVv8BDBTbVuhk5pQqCygRWj1ihdwnNda2URMEGXKxbkp/zrDe
	 Y0q+RIgI/usu1s3wtjX76zqVMxbrR09cGLpRJrgP/lzBOlwoTrA4KZ2f7ytvhrzed5
	 TtJP4uMbMRJz54XCPHauB/V2KQpdPp8RunuFDUizU3JQFu3VC6vTSqtgIP7VF7LJ4j
	 p8ORKZpePzGM+uGViUGG6HBCopBT6wd9Bp3ekCPpzrmq0WdHctJDUvrBHrL47FdyFd
	 H34/uLxMVhsFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92068CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176029739357.9020.9024295411324459293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9170a0076521c4607581ebe29cba41bde10c1a1094c29682f59b67788179f07f
Date: Sun, 12 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760297393
