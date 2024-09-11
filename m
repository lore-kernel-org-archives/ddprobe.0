Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B727154C0B
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726055154; cv=none; b=lk7xoM4MEn7Vbf/CAa0BjPmsB+6C+6j4OTaL4rGRvF0bCE6ku7mqZZdFHKPs7U7K8tlOPzGKXcMUuVMajxg8dQ11JjBwT/DV1bKKt97aRq+t1MQXJgwHBAt/l65qBoVHV5zQDspFfvyKcd+Jtgh3WA8EloCqLvkecnEMxkRi4Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726055154; c=relaxed/simple;
	bh=hKDmRcLKbZ56ks8doyELOxMFirwX3p5BOTLLQuoMKSk=;
	h=To:Subject:From:Message-Id:Date; b=uvFExZZ5QBlNS9La4MaQhbQpG77lOp33DBoc20rMmEz1PrQSA7gzWRm6sJSKcl4vdGxQwSf6KW18NCu+G+ONTFiFKq1EnAWfNWjIDumsAWlyAsohv1Ms6V4JHH90gw4TYh1f/QRPPNth/3VLgAF4LR7tBUKSHvIoFzwD2ABHDxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnKyhoOu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnKyhoOu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA6C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726055153;
	bh=hKDmRcLKbZ56ks8doyELOxMFirwX3p5BOTLLQuoMKSk=;
	h=To:Subject:From:Date:From;
	b=BnKyhoOupSfTBCsGb7XE6VG3STpYncqyQzpWtNIRSJ3waY7H6Y/rs0vwVKguVdo3k
	 /XvkZcH2HVnPgppW0B682KPacYwRYTDJ8VqNxWpbL7AUF698Tgd//1Rw/cBEV+ATI5
	 2Axo/P/hodLlrcZcoOCQSzg5AVGFTgB/rr0AUmsYBtUxZVOvdIddnYqU5fGAfFqxVP
	 CYFWaK8WKAXheyBqqFHIxcNxYAlvgGfUMLBkvrDEsF0bdI+UhbCMz2M9H5wDnSkXlQ
	 ptOzPcYiPKhlCBIJt0NlC45MRkqUi4Mw1Tpm67saHbDJVsFYn3G39NO8G1+iRCve4x
	 Lp3Qby4iflwOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA0EE499B
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172605515358.19264.3200513511277849081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527df103f4818845b1f79ca2d0599f0e6c0b8ce85e818834832e2d47db33a7ca
Date: Wed, 11 Sep 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726055153
