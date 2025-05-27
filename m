Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A50B27814A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748356794; cv=none; b=cnL4m3g1tfeUPy687Zfq+Smt7HBF4dZ8OQGvmrk/C5PifFwWYCOc37zVIe+9W7A+Ylnvr//WE8AhtVAKMFDHyrCfObR0doftbAZvdETgBnkq56lXYLyiJxJcwIExquNjiQ+Wft1GVSJ8VTO1EToyQ898POKJA/76mPEg9kuZToM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748356794; c=relaxed/simple;
	bh=A4SrZnH4t+nybR+BK0V5p9NGkU6zeJ2GWcktJHhKfz0=;
	h=To:Subject:From:Message-Id:Date; b=I7DSFg/ssabcPdv5Ai/gKmkmAvSymu9eOO7k6/fXXZTduB2YAZZZmzxFxqHal7twv9SwNdrwq77lcYsjaBqbPhkFNcLGILSJexv+PVcWsXYxy/dUvMAfKn4hjmGWaAcn4PUEbtDEvMmXr9ts36XaOkKncEqsa3+VlFDvwTbaZuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZYMlyet; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZYMlyet"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFC7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748356793;
	bh=A4SrZnH4t+nybR+BK0V5p9NGkU6zeJ2GWcktJHhKfz0=;
	h=To:Subject:From:Date:From;
	b=pZYMlyetVD1es/hGA6PIdwb9bBegFrRwXvvoAq6Dnr7s+boGrlQdbY7JjJzx2Abzb
	 9XzXT9D2r3ySwUiDdZdHIoizvSfIKlBJ48yrtPscpoczp09UimlekYKI+QCL5IFlE9
	 tbfxttjlVz+PyjoReu+nHviKXTTh4PYXlWahabeIklwk0gHzV3CktWN0iJat3bvX+Y
	 a7TDNJLaI9nF/Q2/Qu6pWPcwlM64obls0Qta34zSpX+bawI1hS7p3lwJKCupMt8G0p
	 eK3df+q4yP57xYxKlBTSHgopcp3gRFGJlZZ/yv/n086R8hYJFzkB8O3b6dbmKULCj5
	 MC+5RrG8O/qJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FE1C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835679362.5390.13274933195418104739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efe18ba4edbc84f554e3d51743e0d9b675f7ac7a3e86068c446ef8655224697f
Date: Tue, 27 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748356793
