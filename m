Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35637155A4E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748569794; cv=none; b=OTAjRNTcR4KpTPfyW89CRvlGl5ieHRr4InnaG7EBrCdffYR3WYhoRZpJ966LWxdH6UpXlgr+ZCS3O22CDVNkYY3i4jz3qBS9gTjzWCzUh1xyjJz598mG/n4A+mrcIqz3RJTetSNTpv0NbWueswRHpmzCyCY6h7KyrX+D3yK4cL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748569794; c=relaxed/simple;
	bh=Rd14AOlMJd5zg0Y15Z5Ewts5b1Apr2eAEwhI+d0/i/8=;
	h=To:Subject:From:Message-Id:Date; b=dWXk972MJxpbAyEzCw5fKShtcQd8RirRGg6umTLO79pbEAXFYyZvp5SHpe2qQdtoccznrxDnJFEudaqUomJ3kkssfj/MV2liAvNyqDcAEd/qW8lMMThY1Ac3AQaxRxIhn/KsBHiMWEqCgrJLWWyqIO45M9slv7xTA52h+Ko9RhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/btrL1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/btrL1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3448C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748569793;
	bh=Rd14AOlMJd5zg0Y15Z5Ewts5b1Apr2eAEwhI+d0/i/8=;
	h=To:Subject:From:Date:From;
	b=W/btrL1i0HjSCE0znJqwoTFKL+ShOLi6uyiR6AwB8S/mWNw/+gNiaQcU7PqAcrb9a
	 2vummT/Vy4JseAx1toimmZbpMxnk2+V1GFYQjk+sRmkuFuNizKHoNcjnGQZ/OZ44fn
	 ZhyhpAR406qqpbNrXR9s3nCf1ExhXNjBTIZUY4FA8sCAyCucDB/c6JIs7z1VTRQDQ0
	 8k84lSLVRiZKTAzYEHsZHHVBFRnWht0JRgyLLITKurH9gGtreTgbWC6qrOxo6HvDI2
	 rFgezO5meLWhtw2+SbZGG8GjX3dO7fbMskJGv1lI6xpPEgSluga4LK0CHyPeLUAsQV
	 q88v/7XBwPS8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB2C54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174856979357.20887.13834688065598134873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b1f461dd61b15e35194402100a0a9247f683974809edf150bff460b1143a5e
Date: Fri, 30 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748569793
