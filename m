Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C2F155CB3
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722456954; cv=none; b=u8CeR5Xjx0uh//m3cLYmpHJPz2iXRJ6U8j24YYUvhJVjNpxIkUwGNTSK5CEd110X2qqFydC+ze52ELwjz+A85cBQrmoi/E24tmuUPt54dNdVhothqt3VDUnK9pT1IydPFnSunQLk8KzGYOu7QcjUhjXyV6noA5B27OvKJgXUJPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722456954; c=relaxed/simple;
	bh=KYRTRSJTeXC0bqWyuER5BUbm9N1AU/uAUld/JU4EKc8=;
	h=To:Subject:From:Message-Id:Date; b=AUbplIRfUEjs27uDXN3e1GI/onabrn3VQ8FM0vAy2BOYqHPIwPVgHHdR80MzwO6gGpQenW7oKH0zyzPQkdlQ15yTOrfDiHiva2hpnvMdkd2FTXnw9Fdtdzrd+KccL/eMYi//W64JPiKgwKv2ZwVDQh48DwzMWAV19hHVQ/MJXWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLpnzY0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLpnzY0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB39BC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722456953;
	bh=KYRTRSJTeXC0bqWyuER5BUbm9N1AU/uAUld/JU4EKc8=;
	h=To:Subject:From:Date:From;
	b=uLpnzY0M6C9Ow08FOFkL1rW7GfMVDFtkGTh6O/TYeoVbi3TvseaIGdrXDD+YPubYQ
	 xB7A6X/Cj2OFHoCvHhrR6KF+YysdXH3ufIM2obKD2p7ldP3APCj77V+iktyTeLdJs4
	 5cfMdGiCEglq5GTCteFK6/PiTTHW9V88N+X37Rg7HS4K9F4/WukVBwS2iRaJqXUiSa
	 UStJU2v0dJBr4yJ5dsrNyWHmo5FcNpX4pGu77vh7/776MdbmxkOyXQRgfXQc4+1ilP
	 yiu8iOdOtHr9Et2SihtulqWq17IKTUwF0tQedWCaqICrw1boX2D/IZ7W9RSQJSSdqS
	 VV6LfxhSQuKIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2520C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245695365.5546.397441802847884467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caebe4fef43d65f8e938abc451ec49c8d4dd890cbb8a4a9bca6ef51c70b3b400
Date: Wed, 31 Jul 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722456953
