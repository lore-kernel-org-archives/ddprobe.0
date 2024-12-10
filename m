Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC5414E2CC
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733862954; cv=none; b=dZGqh3tRICmbzl1h/TpjsaqkMKcBV94riV89Y0CAv2GB0zZRxrIJLvsMAO4oW7Qw4weEp//Zyz58bkDx4GYRLEILC/oiKMPxon/G+L3i9Ggfc9tnoxRHVYMgqnZbQ13oASjjSx4gYGkjrz2hivPH8um1Co/Be88GZBldP6f5bQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733862954; c=relaxed/simple;
	bh=t64vKdqe1kKqXAJvFvV1foLxoJPw3+MaB0AmLRkb9YE=;
	h=To:Subject:From:Message-Id:Date; b=kD7xrrO+48c+RkFM3Cx58Nz+8sVNbT0lQ/qQvHmhYaG9mWVp25gsDRuf116DvsA7bOrvAdmierR7FMmpmJ3lPfBpZBP5uVyAjiEt7xVQqsp5XAYKj+MHWaCGQLtAQIAsG+m45L/GDqrYwKadp8CuA9x0p7cpCs8X6kBaTbX7cmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/2X6DhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/2X6DhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ACFC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733862953;
	bh=t64vKdqe1kKqXAJvFvV1foLxoJPw3+MaB0AmLRkb9YE=;
	h=To:Subject:From:Date:From;
	b=c/2X6DhWSsFgGz6ABQDwpUeDspQr1i6IGBr2HxEc7QTPLc1YXO/RKQxTydGATu9xU
	 el/mtbrsxcdDb8pW7S9Meni5VaSTMDcEboH7NcPTdhbfedjPe82a4bj6czy/Fz+Jm3
	 hMSM9dCwWmcCpyB9XzU0cTZLKoH09TqDwD0pyGv72EZ/MBMzO0iAJLAEXTg9kAdaAz
	 hvDN9ZO0VXLRSIkurRNfmh2rTiEbimcC5rmaqgMTCRoCL5Uu2o1ZAnnlj/9jcrlzEG
	 gr72c0nEqT+m9xrBY3Ut//jpvSRwPBbPnTPexCjv9n7+58AcL0rWgYgs3EcSqNoer0
	 PY802IkL0mYMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A274E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386295359.14446.12035430556560045443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7845cf070156a7c925f39b43481ef715e41a48834b8b9b29fe4864d1c180633
Date: Tue, 10 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733862953
