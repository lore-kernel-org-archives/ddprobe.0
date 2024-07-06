Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE2355888
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720263323; cv=none; b=e5EURlakgDEbliR8vADKMUCkjn1fTOBHDmv+PRGBK4++DHzOj6/FsZzbPBDvajGUSXm6KXJftAlx4kxnECFsLJ8uLNNlmOW01mxRwxnTQ0GCXa4thjMzKKytOif3BxGYXtXLda2GGJ4ZApybtSTngE3W6wlaoiA6+BZ7VjggyO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720263323; c=relaxed/simple;
	bh=xrOLX+5ymOhd1/2hAlsrAA4hffRZo/MGY0TLSEVFYcY=;
	h=To:Subject:From:Message-Id:Date; b=ZKbUtoZN6EMGZohNP6Gm/KX7RipmCz1HG/p+jkb7MPhV5iy3TLYW/TsQnOYBSKKI9M+bYVkUm0uA7g2r46Y4bUjfJ5DXASI9fwLBQEuVFxqkbZlk+7p2TQkuRntLYcLF0+VG7jmfBw5SKM9ej8tTXFdB6OifVv7X6jU4DLLRgRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2dbqDG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2dbqDG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E51F4C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720263322;
	bh=xrOLX+5ymOhd1/2hAlsrAA4hffRZo/MGY0TLSEVFYcY=;
	h=To:Subject:From:Date:From;
	b=Z2dbqDG4K4f/qTIfOlrltH+O/SqtsjZfb8jmHFS1G/YHI39cxjWhVy3kyVh+Niyfs
	 LlvDIlP8eh/38p8NqDdK8+1WiK8ACn8VcAnk439+hJ76CwJKfVA9Xybow5tOyfO5FW
	 U6XfByzXS4h1HwI4OtGhxEcDttXg0by64Pmj2n9vPcVS/bWHOmnHVzM+OdKVtZSUXe
	 goWxZmy6pCOtNrhabjX+ZG3okifrWH2PY0TZiP5Tha79rZZtvHisbMFx4QdCVYlWYq
	 JM2bNU9j8cajfHis9kz9TACqSCegc/mephRgsF1bRM7tbYMem2LMzEAs8vSr1SMCRW
	 aGrLPCQp4GJ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB12C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026332282.16035.10427880690557942823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c16f57d677fc8b1890a3398ffa960fe081a625665587ddf5977dba12a0e6186
Date: Sat, 06 Jul 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720263322
