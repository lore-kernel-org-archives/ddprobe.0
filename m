Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DE1257423
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753351794; cv=none; b=pFCvWl8OfIjwyyY+3T74MTYk8WfcQpjPy7WZ82ZTl2Mk0yTpDghb51BR2nqT57PmumU465b9SWt5PJvpPAS9iiXIEeyyAnAyzmXb5r32dFIvfEVcPtS2wooUUTMFw8C0YHw/YnTrOFMv9XeO9F7SeIfeqYKsmmBhsxhXZ2EVfHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753351794; c=relaxed/simple;
	bh=6+zoN2ddUnlb67GCqxhJRGyMZGAGofDcn8wxumO9Pgo=;
	h=To:Subject:From:Message-Id:Date; b=utIa6veDnnylM9E3swpvfY6FLGzNQyuJgeGMSz/0zgKzDB4ZDHGDGfmeb0Ie6Gbd4AYdoK4h473XbyY8lGezVVgPK4ZsSt6foe21VhmozYmiHnmihjHM4czuVSsfhR3TlRNYSnxh4j03ZxAsKgBfqakyCzQT1oQJyQvNJrlado4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4SLAbs8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4SLAbs8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F1C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753351793;
	bh=6+zoN2ddUnlb67GCqxhJRGyMZGAGofDcn8wxumO9Pgo=;
	h=To:Subject:From:Date:From;
	b=W4SLAbs844AA/9ST0dEYhe9sPLunyMUM2tYMU5t80ozbubHHArNYO5D/bxXaQB+sl
	 8jjazQZsCd8S06f4wT/wRneFlO0WZ7NTCIgacyHwEWfnuXVGmSmQfGoumoaUIFU5Lj
	 PTnCGP+wVa4YswsKq0pMUISwmYJQIzgCnVpY7GvOyDIDdfAVWYCRG7YXx/06r6QO+t
	 UdW9l0NkNdJqtsK+aAPH1jmqGAg84c94W4i3GrSxYsKYPeC5Ln5gzCzvx4JAO62fJc
	 JVUu+JE3CIZQWhezPQdvq6T0/55GVfvcLEVUQCgCsyUNwsy4Brebfc1FRohFg4oAfg
	 8mc9sy+hGKvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907DAC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175335179358.31850.8476858687032655736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f6d148e2c702f5b1c2dd9fbbfb01bd0721e54f05327f8291ceac803afbbbc3
Date: Thu, 24 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753351793
