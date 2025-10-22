Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB222D249A
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761157194; cv=none; b=YbRHg2rEESh+jvjNGPq272noptfkAhZ62Pc5g9tjB0pc1cYRZvQD0l/xdGui5eyTCu1fu3CVXRsehFbY9hrcqZoqkKwmOiutzU5pb5yqjdZMDYy9QsiHXYks5wOzQdUNIpE5fa2941gZRdDXyNNA1gm+8fm2HMwXwA/GV3vHmTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761157194; c=relaxed/simple;
	bh=XRo1uq03B9GRh24sPLGg3i3NX1g0AcAXKXpI4a3FGD0=;
	h=To:Subject:From:Message-Id:Date; b=kymlKM21bqrM3D3W8ujhkpI8eCSc0I6C1fiyqZG3Ab4avcu2LKqv4f7Vlja7ORMfhHfrhthf9k/a8MXJ/AaNaYZQiMJXkWmpIDXdy5hoITgdrW2bSCV29pRdn3JAGXifDArdB7245dhYFnhSYOWuFylv7ql+qsY1o2cpF/nLzls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juuToeij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juuToeij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B15C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761157193;
	bh=XRo1uq03B9GRh24sPLGg3i3NX1g0AcAXKXpI4a3FGD0=;
	h=To:Subject:From:Date:From;
	b=juuToeijEXZ3akOiC0HgryTyKGMPIWaRFXREVH2eF4UhFVr2pD7FkMXscC0FM7H8P
	 Kat+9nnBYRzHKOfxwy3ThD6/csctS73um2Awgb7HovYJXb2dgzJLjdhAr76k+T/ZG9
	 hFBQma4xXZyQBvzElhAkb+VsSPwh6Xbg12VzVgEEp6xmf1DCmqrrbchoj4b/R/l+9e
	 97sHd2UqykhMa+r/lSJNJpOMPB/AGg50TxRadgNzm8zOghxQkvkVU3B45GZswqTegl
	 x8TLmvkDtTeIDei8c6RV6KNnxEKQKfzx9LBuQD5pe1eRXDDrxIC1fSGbSDpqEWMOqc
	 Dx5d260eF8qEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC2FCCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176115719358.12011.7201349562419064541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdf5b738f175a9f22b342a0b963d53f6e99eebf867eae6c7ec2f9e7f0fdba71
Date: Wed, 22 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761157193
