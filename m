Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5584D13C3F9
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719377603; cv=none; b=fllXZLOYOSodXYGjAJPPCRWGQ6cqQi+6ZFY8Q4FIJNvv6GSAGAYFR2+z3xtsWNKy1mV69AvQhyWcde+RnnbzNtiPfZ8P7d+ZxfBBRp9s6B9spYuctHFSxwuA+tbm8bWCVfkRrI1cGbuQ0Lc0bT5xhxSm4+vMpzcmwUa3XqqPJxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719377603; c=relaxed/simple;
	bh=HSMHCUUkR9WGMxzRHq4udnvufZ1J7rFnehtD3HO/mlo=;
	h=To:Subject:From:Message-Id:Date; b=bsbMylaDjDijlnN/U/u9Li9pF7ASQgQRz7WaOTum5snjGyeNJN3+n8ifmAtTHEffA3+VJivuII/gOJaBjcHfeUALR+BYGDGKmXNrUP4PlWrVixbyiGnyVHjNoz6W8kZzhslPCwkly7W/nSMpg2uIztKJrsqkWBYC7nls6Rq1MAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlayvnx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlayvnx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17C1C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719377602;
	bh=HSMHCUUkR9WGMxzRHq4udnvufZ1J7rFnehtD3HO/mlo=;
	h=To:Subject:From:Date:From;
	b=jlayvnx1HU992wVzC/SNGGDYBhjRQq1A3Pbnqz8ZNO4Bx0KeV/GoYBM4T/Hgp9KQy
	 dC8G6S/cvrL++iYSzEqOF5W/6ZTa4juIKDl8idQQq5YZJLiFjVeH+2I22hK3pSF7jL
	 p9mzqCyebjNqiyYB2M74HJxkHTc52++RmjbLgjgGHFhEl8nSs98rzyN6seKFK2ivk7
	 IvNuD7YpiM1EbK36m1bN/mih+gFyaHHTVIwooGBdcDD4WLp+xPifh8T2sG+z/W83lt
	 Ia3X1T4FsIRNcbN7qiIqFRXtl/MtS7Y/dOvElFcic9p8KqqaJGnMEQON27RIrgCkxZ
	 lnaTWtxgEd8Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1441C3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 04:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937760278.18587.16689730039462985331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dd7b67d0bf07e6053545d757f9525b527c4d9fe90d4ccd018ebd8396abeac2
Date: Wed, 26 Jun 2024 04:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719377602
