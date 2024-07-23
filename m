Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEF214D2B8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721751354; cv=none; b=A1oapfs4FKhc/Z9TENT4g1G860q3nD8QYmSWkHrMUBNFBwIchDMDSy0t9CIBj4ZorJI4zR5IbN3i4dX4XHf59mJT/j9r1dI98oVqpyHlwygkV+NKQ8xSGfZd1LY74g7xm/I6Dqu49NKa+WAnmjjSFvCaL9E9IW7y1CTRtNfGEi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721751354; c=relaxed/simple;
	bh=NW1EM7TJfX2+JNFks/gN6se+zPUKb+ywR3mG7VcIpOQ=;
	h=To:Subject:From:Message-Id:Date; b=Paq6jDiAlm4/iTHgoDQ27QcbVSMkt3v8HOLmZAPgBfPC5QnDbWvo+HyezyKHTIFhk6Bocgc2QuvmSBnxp2k3LW6Hr0/DNAz2Qv0Rk2gcdr9JED+2OpBGVYl90kJkIdwZZV8lkw6blZZockNue3u9GKKUtrT3RQ0bXq/MtoqU2UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUxMgKei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUxMgKei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB474C4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721751353;
	bh=NW1EM7TJfX2+JNFks/gN6se+zPUKb+ywR3mG7VcIpOQ=;
	h=To:Subject:From:Date:From;
	b=AUxMgKeip61dJFlOv8Yhpi/O397/lp847xmuWFLGYXgU+eAOiRQXF3w8yy0OFF1xo
	 e1r0cJfU/KuOiWZideRvdjOGwCGNrkUlyhPYYIuPMYfqe/+euut4a0yT0b4V4K1b/b
	 ebVldvLC/5nQqSwmaFg3v9cEKwtepLRyV2oBaLaT3w7qcJMCImXCtGm0PechpEpJJT
	 gd/PflQIYIT+B2E1WaTNuntkjbXlLmXBV9QYABGcaXOcE/RDLMH9pcfQsfqDnP0ZSa
	 CxRBAIXeuPS5QvxxIfAjhBQbzXwX90960P8Z5OpxKMjJ9AlQws2n6lp9nmt6Kui4Iz
	 gkI3CHd3OnM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A449BC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175135362.4942.3501351871396882358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be20b150a982565ab06d6e7a23ba0f3c6096426632392e2d4f6c59c8c3f5c8e1
Date: Tue, 23 Jul 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721751353
