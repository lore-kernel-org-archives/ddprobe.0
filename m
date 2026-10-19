Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EF63914E8
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792384834; cv=none; b=CrsN/v8/22/9wTPZQpZ2B/w2PNNxH4GhX5RC4RfhNVXV79XfNx2gQpjHx+566Fkjbzur75o23zuWwNXdxFfiWSkaOX5rI90JQSfVEF45cvDhEQt9xDegTC4p/Vm18ruDebRLD3hhQj6TLVgggcLl2E+i+j3rFLtYWCVfc2gjujY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792384834; c=relaxed/simple;
	bh=c8uNewEeA6HzroIx/diqzQDeWQwE8LX0s1DAHDo2uzM=;
	h=To:Subject:From:Message-Id:Date; b=RCapeDKJ/vEP/retFkulnyZ4djpU/IotujY2ODBMQdEBluAsQLOkTCXmxPEa5c18qTSYYdYBIFPUNflpTKWqZ06djeWTmw9AGQfzNwL+v8PwMJOejPwJlDB/n0DH4bxmCHaNkVIqZX2afKWOis6hsncEvwN8g9KGqztrbDPR9CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=js0Dw1Sm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="js0Dw1Sm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E362FC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792384833;
	bh=c8uNewEeA6HzroIx/diqzQDeWQwE8LX0s1DAHDo2uzM=;
	h=To:Subject:From:Date:From;
	b=js0Dw1Sm0szSG/5oO5YeYEIBQtGoc5mDVSyYdAhqrPE0t4VdfIMArgi41AJ+43iOv
	 3bzBxihbMZJpMsJy44Wrn1FJ/Vh13MRIS2A/F17aeXSIs4tX9H1j7FdfR+ILc5M+h4
	 QeoxhgPkzYNKijMVZZWXewqghLsvSRz7ClynjAKz3a8cUny6kKnUhS3NsXukyvA0qh
	 xibdikNocH9wmwYraMPz9p65FhQAjURF3r/lih8nPd1wLknyLhN8c8tTt6A+LsgMnH
	 3uQpAZEv5RPFBpaFCDDE+J41tqZNx5uTmswB0ffg1UMeCHI+sF+tp8e9mafajkcuu5
	 UujLS9ho7Xy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD591CCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238483373.10897.11255006703113708212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ccd62586642f503ac765061975f0a8143c71e5483bedcfaa4411ec8fa9746c8
Date: Mon, 19 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792384833
