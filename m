Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569E914012
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745024994; cv=none; b=hDTL6sX3D2hcop9uJpS2zG/cdFsc3dTOAt65ITRMd3tBS9nmipHmdHPNqpDFgaxe+91QTOR/UlOKP5fv+lWTFo1A71QBYnrf6UXakHHoEPow8LvHNL4POsxEdq5vSkp6Q1+UxfZZl5KQ6Dw0/qh2GmJH4yRxljF8Crb72sREiw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745024994; c=relaxed/simple;
	bh=c9RQ4cbISkHDrXq3vKTP6+RWdwsNIMIENpxveL+FTyc=;
	h=To:Subject:From:Message-Id:Date; b=U1IvwnCtwoL40hAmXDN8iFs9yqQJkac4cQokAbxuZTgh63zVANvrnMMMX4k/eWx7Bqou0MDv2+EdWgdW3s5UPInIKKfcuKmf28mSR5vdd315f21IZvnu0kji1wRXy23dDEKXfPEaGXVVOa9tZ7grheg4AYPwhpyzU+Q/qYN8RIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyUJVD+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyUJVD+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91F5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745024993;
	bh=c9RQ4cbISkHDrXq3vKTP6+RWdwsNIMIENpxveL+FTyc=;
	h=To:Subject:From:Date:From;
	b=YyUJVD+O1iBi8ubYPeP0MBL33HkmmhUxGxxVa9JiA7CAGjuT8CjhMizNFIBWnG+Z6
	 C+G9052t4pwHOEWA6LpoS3C/EAKFV//5Xpwqv4gfQ2FfZjOlVjFOTxZLxZbZ8C8crw
	 aPrUgjDFrecDPvf+INlv89owY/1bNFtUOSnf2QFtA9X+dhPc4X47LaoZtAHljIB01L
	 2nFNwynE/YFO0iU02V/Mb9O2acMFtV13osf5IogeXcQr4dXe3JZwwse69yDX6JN02l
	 t7nQEpAdmXnHJxK4Z/p7GqTAGac9royPfV/evWUyQJxb5ZcFZsQAux9pUz7QO87yqU
	 pQfUeUAK2YN0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBE7C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502499361.10450.11321023257662146426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f295ec32d81a6f84853ac84cc4da7b8b380dc41eeb334726b425715fa39df4
Date: Sat, 19 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745024993
