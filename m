Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F18B161306
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722512754; cv=none; b=OuXive5TLpsnr4Cqekb0s/PAKlvdHM80i2PB2X7jEmX/qgiu8Ov1aQWD9nhPQ3H1URlQSaaUw4NS8zb/XWXhU+EgyINLAWoh+EDqWBDYu5OCSLaZdWnWDQSCfeq9Esa2atigAF/LkeqWMJTlB9imXfC2jbfWzrUEJ2XeGyUlst0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722512754; c=relaxed/simple;
	bh=OpajgOEMc6lc1iXF/M3beASDEzsZ8Rd8zW0Q4MmadEw=;
	h=To:Subject:From:Message-Id:Date; b=Wyv7+YXjJdgILyr+q2si1EOEivShVtPoVYVv4pXxKXBZH0NEn6v3ziIiurejK9EIyX/zB5E1MnTn7hv1SxwRZ6VLdW7hPQ3Fq4Gf0Er4rLQlg6JnUmT64Ohp0AHGvdL0p0rZTcOEyES+pj7drfHFEc3pteQus6AQBo23wYHxFzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBNIZR/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBNIZR/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B208CC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722512753;
	bh=OpajgOEMc6lc1iXF/M3beASDEzsZ8Rd8zW0Q4MmadEw=;
	h=To:Subject:From:Date:From;
	b=hBNIZR/kSUsS/HbDK4qWWuedlWqCrssbQuHV3pyyor5xDf6rYYDaT+oGBHS/w+8gN
	 lzbCA4oI/qbjalv5nzSHtLGd/BjdiHntO4h8s9dZAItCrIZ5TQ7Ax99OBdIDoMEfhs
	 RCELuO+wvSkX2Pajqpx7PRYhaHjKFm3bYAlIWesutzLbi2Rjq6xyh8Mq1/pekvP+Ho
	 mbxSTd9QAQrNgImMZxMRZLRBlsJBd+/vs+cR4o02CaF8V0JZ/9LP3b7/kyskSmyFZu
	 syEyXkTKO1hsJhiHPW2CajtsqWsyuCTKLNqYYcPlKDTb1OzcfUgRqYYagyo0jvGGpE
	 StTB6nZ2pr6xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FBBC3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172251275360.28356.16358969060376632050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc8d90871543d24facba7fe331209fe8267c2a2b21f5470295e6e3c0ecbf3ca
Date: Thu, 01 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722512753
