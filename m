Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211D4264630
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761889194; cv=none; b=LauIpi5zDDFjwE51QyYIrL62FVRGZeVBzL8Y7FU6HaaiYNwLQKidao8N9poHdWQEXQNxND1V9P7hPfMTWnDjfqx/naM5YWjl+6lKcHQLAJYuVUNUCfjIyPaNTXDMonZcT1WMspzPt3JQSVo31hjUFijYb+MeODhTDVLr6ihAVCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761889194; c=relaxed/simple;
	bh=eoeru5QOhrNJTn3GnFyRCVmJ5vq/0tcjt6Z5xVLIDqU=;
	h=To:Subject:From:Message-Id:Date; b=LoAoAHZ+yZyP/Eq2xK70OCKA3mNOKug7MKanof9PbrQkBKqcvZBtaPv3pfySm3VavzirdbhSCD9nPmxM12nF79tOZcW08zEwj8uTKB/3q/Oj+NIXdvb7V12cyH2E+uxvLPg1scgxpQlmteGY92AI7LnKe1ctTHgkEWMBXCGQEHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSPEMu5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSPEMu5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2345C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761889193;
	bh=eoeru5QOhrNJTn3GnFyRCVmJ5vq/0tcjt6Z5xVLIDqU=;
	h=To:Subject:From:Date:From;
	b=sSPEMu5Rt9OjLyC0WZ2J1ZnT2M6Xn6AgRMWBdK2PTdXq7geyhduVCT0j/6eHjm2Fb
	 1DdRag/W02/iB6G3XHm6bD4A9TCwKt/scOuQl8mKsBx0f01VyqDUMLPYEpseW5Kx2H
	 v0gxJ8MOLZnVR4FV+BgXsfHga0MSP0ycvoWwQQoclihH/XC1zqGcw46EA9XTMfpewo
	 YUZT+hvWpqW+KKcxVD1uA/7djZZ4FE7ucK2PuzruQ/d8MUvgPw3gbQvMQrN+uwF22S
	 CXL9f5XRXrGZ96tYwPM20CqtCqEmlnERb6A0M9BZMFoqhbbjv7uIFRdotaeoDIhEPQ
	 ssYN1JnlK/fsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B7ACCF9EE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176188919359.31091.6417076297932078222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 643e2094f8a8271960ae33eac5cdb2369fb24a9f50a9c826fdc9ef0a5ec27f5a
Date: Fri, 31 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761889193
