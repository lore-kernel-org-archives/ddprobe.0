Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE701E89C
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772324694; cv=none; b=RLoRfKbDZ1lQQXRr7MWqFltdlAcL1POtXbXJII33rFtYq8k2JpHe3A1VtQDD44WvE8wztWGjzdv72cwqyv16iYBJnc10yMa6WzLEf14kib4hoh9BrptgAV/QC9nPLl00gg8XlwL8JPXY/YhJ3iQ+7m+RXGajHkiCCtwbQ4I+sq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772324694; c=relaxed/simple;
	bh=uF4ng2vIDEJ4YSM7AHz8jVgiL0p8BYHXK02tfW9wgTk=;
	h=To:Subject:From:Message-Id:Date; b=lV/UEvmZb6pUCDFHv2qOIZEmOwkzXvbw6AgEHdh0xROZ2xDh//eC7p26ulWEtdEWLYtCq3E5Yn9rzYWkQm5C5uT8mzrlxEVmmII1/+Y9dLSUCO/NGAZoiGxRaUQIXNIZfL2kkvRCgicALejQUsKdDDFDAU6Nc99sk3yoEqnPqPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FENmh+Yr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FENmh+Yr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8567C19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772324693;
	bh=uF4ng2vIDEJ4YSM7AHz8jVgiL0p8BYHXK02tfW9wgTk=;
	h=To:Subject:From:Date:From;
	b=FENmh+YrJRFcnFB/lmO6KdhzRZEyWPcd43BFa7pOFTQZJILU0LPieHdRdSSXBLGqe
	 hCp+bm5o3wsg2mbo1KljqRb3zkmzzkuYNIyOVVO9AGfibC3aWAcXpu0yKB6eszsDBw
	 64XePaK3gZsYFdndcpxXknNgoGpGwrBQAod/9uAG/hrU8BsBLZ29tSpUzWd+t4WjRz
	 co3nu0KETqH3ByIkvTSgDeyLvTa3RHo8+eTR7d/407j9LELd6pzFkRSBlkLbC2HyGO
	 ZOzT2s72uBYKPyJj+eN9RKTTGZsybm64a6SHC7Lo08hYliuJ//hVSsSLaqIiEfJsFV
	 6hI8/CXaKehTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A121FFD0045
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232469361.17850.10773751369876356861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e87864c75e58f8eda472f10b05aaf5e064843a95421ee0952fe492412029bb
Date: Sun, 01 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772324693
