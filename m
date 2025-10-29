Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11714328B64
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761760194; cv=none; b=SRDcNgNfAxxxv3vbXGW/0qN+MSd7pxvIQm2DDmbFs1eOCd/Di3RLoqw+OsC9GT6yd4X9qLotyRTmba4VdHk1cssmZKcw0jVY8yT59eARIIfglLKTBI77fJKio4hbVLe2bZ7uOS6pwBOzy7q7upUAutlJS2K5uFXiYlOJWEcvUtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761760194; c=relaxed/simple;
	bh=Vos3f/jVNCULEvb2zE0gXk0KW4W3ffgMtrIwsWlrMQM=;
	h=To:Subject:From:Message-Id:Date; b=X7HHjLH+mYFii7hRjDCG6vOJBkGNvB4eHX64/5ysS3Vk17cbPcVZyfnFUVBL4HyBfF3Kmz4SczLy8DH3Cs9FLqNVoQv82nZvmxUQ5I/zL6I8hknp2m1wAYGfe/JMP2VINCahLykcEWZSdi58LbpmLNFk1VQqm5xmP7BjgoUz3vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pomoMU+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pomoMU+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC80DC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761760193;
	bh=Vos3f/jVNCULEvb2zE0gXk0KW4W3ffgMtrIwsWlrMQM=;
	h=To:Subject:From:Date:From;
	b=pomoMU+nBmpLPugMWX1gR6VF4FGGqMxFuhDxRqe3h/rTiehBFoOD3WhbSNBRAe/GB
	 jPJG/4lllXmU4L4pGvoY+knW4m2EJgg376sk4xvhm9Gr04gihyH+/lUw16GmFV/IAh
	 I98qiiXHPQWRkVg4Qoe7qJ0u+yGInjYl531OzQNwIM1jdkQZufZvUd4aK4+/yGTOCy
	 4oNegrPxnaMlB3UzXpETG6k5q5Tww8uTrcrnrm9uh7GGg2SHASsA2a1axgcT8n4Qxf
	 akwzfh8NAd/E8EtctFvNBqVCRusW9OL3zTeKGhuNm/6a/HXRUCf7bhr+yD169lMuTI
	 UPPDYxQFIHYAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989DFCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176019361.23172.12867820883194130151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424334089ae82dd1540b917fbb9376808774aee908a095f99667e9952d357aaf
Date: Wed, 29 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761760193
