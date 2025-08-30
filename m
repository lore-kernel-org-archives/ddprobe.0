Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E57246BB6
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756595394; cv=none; b=lIxyC15BF/qUn0faXNYKfFSzJ9eD+fqMybpK95VHQqZ6VQkLJElCjMKTi9YAeT7odnNDDwCSFjmykF8vNbWLkliN8CgM4x9NpHhc+44jg0H9kxOxOpPFbWG8A3y8QUV1UN6yfwGucZixPo2m9pViYLo4ZItVRVZCI+yqce6Gh7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756595394; c=relaxed/simple;
	bh=vRYrN71Tdsl03u+KbjR4X7J3pVWusIRW/Y2klIOxz6U=;
	h=To:Subject:From:Message-Id:Date; b=hmO27XyYCbgKAUr5jdRN11i3skxuPoCJRSD8Uie36NMKjLT33RF6j14SdcMaCsOG8NJZSphvLiWX3r7iB8l3diDw0eflBSxTuEFFq+ZoG0Cw6M5+qWzQtpMDU6NMPyUg+Fhd3Ce/zORO0wC+JJZzYU5c7Yehn8kco9Itb5bOIK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoEM/GCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoEM/GCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDE4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756595393;
	bh=vRYrN71Tdsl03u+KbjR4X7J3pVWusIRW/Y2klIOxz6U=;
	h=To:Subject:From:Date:From;
	b=QoEM/GCkyJe8lsfc+io3hd70P5vvJ7XeMDgD3iFYB1mrWYE9tFbXkhHPt61csjgIi
	 cxekjHumUSkbR2Bw5GRF1uzx6bZe/TmhKSc3LhbPSW3RjDNBfjwNoB9sIenMpdzZd0
	 a/IFi9FqDoBzKHMru0atYG3N3f7FijyWEuWKwH70FJ/t4dnKcmWEENXjsjp3r7WoyM
	 zILleEUR2gSOwkPuo8z2MZW7T/HHeZoidiWeUuKo2Kt8bIzElvgCeLvEZc+C5EJVvI
	 xN40q69Z49U2ijolCYv3yI9U1/2yrdTtmhYgMljaTL3/qbuYG0ljWOpDYFuXZXPRef
	 zvKT4t7JpyUIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B71CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175659539357.3849.6499885763902470768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f235e960a5c6367a6eb9cf6cc33bdd6537257f0e13a13c45dd8f065765b80af
Date: Sat, 30 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756595393
