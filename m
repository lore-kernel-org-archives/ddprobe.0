Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC57A47AF40
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772230494; cv=none; b=iurN79J6y5SR7+aFlYJ8S3T0rCZRzuZxR2JmYSsaC5PDl/VlC18mSgzY2LG6e39Pz6X+Gg99s0HFddMghImjtV2cBiU4+CqdWl/9u7/KT9f82OylEiZXF92MFuDSdMDalDiG1Fy8ymVLEKM/ulEkWQt6uctOhzAsjVpyogDPZCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772230494; c=relaxed/simple;
	bh=aKtj+up/r7yLexICwAZLKWV0r5hn9pFP797z2ik8eAM=;
	h=To:Subject:From:Message-Id:Date; b=WVVhwCsbASX0fwGXlPU6DOPDTrMPUC9cajMRIlIyzIO9PhjCgfRrOu5Rv1q8QvtX6v7M7jTCfFDYUKXPemEywHRgNc4b5WkQmAfKMgiYL7smKSGoQnwQKF1QpdyyUmwKKKvRuDEo+oIQWZ8eiPe20Iny6L9VLDHbHqP5dDCOV3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpvZ37C+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpvZ37C+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB8AC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772230493;
	bh=aKtj+up/r7yLexICwAZLKWV0r5hn9pFP797z2ik8eAM=;
	h=To:Subject:From:Date:From;
	b=lpvZ37C+v3FPKYFXDAg0ttHyIPCJneibdtf+OKgoXQqOx30QRnT8oQmylQbWrQmtH
	 VsZ+YhuEf2onR5eD7opBaamnkIHSmYjboCcL6qenfwZcImYppGoJaRzIgsagTLDeOg
	 qlr3wUzP4wgpueKfe/nDI6DWOevAPmwwogWuQ1tvj+/Jl/juyxhh5vi5bV328gQAsN
	 jLnpEGOfr51qzUVBlUqNKEeUNYoBCCTfKVGNs4hm0qDEqP3/7w5YNabZzA3yP4BNpH
	 OTDGiBku0WE/igjGLVHSzu96Pdry+ScrnfvQ0AkNqAbDaeEZoOjBWvhQe6OwceFuwR
	 rsg1pyckcZ2Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF0A103FFAC
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177223049358.30878.13427724791989446601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9883cc3c46911ea51bb8a3219d8157abdcc3c6cd9fad435c294489dd33cd3a30
Date: Fri, 27 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772230493
