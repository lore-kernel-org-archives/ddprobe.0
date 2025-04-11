Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AC11E5B72
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744364994; cv=none; b=QglohA+aJg6wmS3fMgt/x5eRYhnozUsMtZbSqKf+hpxASySGszqMq9Q0/lV8AqZygOKvtro8Q8umWZptH8Kgcge2f4l+M+cf1zdjltrgl+3bST1Ft4R6e7P0gVrUyNAEd4rk6yfueBPSaJsxrLf+uze38vUOCnUqTVZUGFc7cFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744364994; c=relaxed/simple;
	bh=6C1dI/7eX+jO5p1CU7irtBip76vyInPBreXS/AhVq7E=;
	h=To:Subject:From:Message-Id:Date; b=HiHnriX/ZqhqwrkXnx+ajRAGtbVlM7CP80Z1V8Dx8bdtvTWA2Q/UZfdvgUaXdlwr+hVDQehFq7TCIso2ebS60tnhRBWqlPTLNzCFcZkmPknKlAr2DZZVUDtnYton/sOnT0v32oiBJ2eOsHyH57+lOCIwQ0A7gRlDlyyQmyr52i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBDHNvqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBDHNvqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EC4C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744364993;
	bh=6C1dI/7eX+jO5p1CU7irtBip76vyInPBreXS/AhVq7E=;
	h=To:Subject:From:Date:From;
	b=WBDHNvqJuaMhehts8XJIew8HLC5EsTZ0DffV1QKSCDmyiXAcG2xxWTPd/Kxf9e6cQ
	 jwNEApY22dUgoXS9nqtJUDZDWy+ZDQnxZPFIdLYsR4nqF7PlxY8rVsnzO+tIHOT9Bi
	 uqaosgMeaHPWr5xMihEjFToSCn1weGXXzB3aFXPVGdkYPuBx0WoaRmSYe11e4gXTb9
	 XBbDVmKdbcJwGzULnq3SrMyux/Bq9u6bgNb7fI1jKaIWI1jJMKk1qw+AsYAEnFciYC
	 EM2jx+N2A1Mg73O059SjiJtuLwK4DG2zjfNoAs0iYwP2ryRW4TOsdNSG8oBB1tg46T
	 lBdFoORJPF67w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D8C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436499358.9889.6263874460592430038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82217cf1b4e0fa65624e66e674c3421509dd92965e94cb361f97c4b549ca72c2
Date: Fri, 11 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744364993
