Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A301EF38E
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751432994; cv=none; b=uHrvvn4zfaTvqKvsrMxcrwB9bk4r2ALIBQatpL3D3LEBjpDvLy851pEefmMoPIzTvWZVW8jtSDrcpXoXIg4Pv7mLHEXLfkHvD5PhMruE1+7ckL0KL01QRy5e9+rcCQLfneNWcDmMb03mjW1MO5J//KgVxUlYtc9hThsX8DHVXuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751432994; c=relaxed/simple;
	bh=jlKgFyy9e6qc2wKm8czZ5cxdmJLqzH8Zc00g3Oua3/Y=;
	h=To:Subject:From:Message-Id:Date; b=dvW4MHSxDyn75gN4LXj8A/WdS7ymIic61vsMPgOh45IxhpdArdKonleDD4adwak2qxhHgYh0iXbH08QjxyWnxcHS+vSR/titUfincJRgvEMzQQ2ZS3kUq56vyTmTLjdparuz9trtj1XNljjPT/6eceL2HdPl46L/SwjNU3Dbsyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUvuciJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUvuciJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9D7C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751432993;
	bh=jlKgFyy9e6qc2wKm8czZ5cxdmJLqzH8Zc00g3Oua3/Y=;
	h=To:Subject:From:Date:From;
	b=EUvuciJHbNWe5GjL10oYDPyESLoMtmgRf+kYfhvGVqLCUBDj73AyN3yDRrTxIa8q7
	 Q6IU8zn77LBryfLk5IflJp2Bd27mUsNTop1M6PO8/ftzG34mSj01G0S5JItLje8HI0
	 GlLyAt6JIQBZvowcok77jPgtw8vQ/MSUNlokb8xmnikfctPJa4SqcM4PNmS782+1tL
	 R+e+U1skOR5CCIco4riPRP/pLa9cBK2Dzi9/gP9QlDNP6n3kfTNO6Vw5sNRxubByu7
	 EpESfV3c51OBXuNxhe8zOI1cAy47eZRVRyVr37Rvo+xXOuZDrvXQvGKeHM2WPr+QG+
	 Xg32NRAh1jpAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F1BC83038
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143299362.6386.14725296884441771556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bae5dd501301394909f6a5aa6a4d43aff682b7eae15e63bdd4278507a832f75
Date: Wed, 02 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751432993
