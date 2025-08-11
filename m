Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13163296BD6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754930394; cv=none; b=kowBKXnx4vQK6pDIMiQQr1EgYqugeDRBrXXPXCCDq8+ve9oofT1E3QLaSrMNTXJjh9FOqhajgDjqrs81s8Le69KoybK0sBHZBGBWjkLSPegrzx2NOvBtL+egmfsFCwG/TXB7CubfJqtwCwbG1R4t4k/Xm10qbtpohO3RH0IBZyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754930394; c=relaxed/simple;
	bh=rFQ8JdDifqnfdfKIc4v1kk3cmJ7H8n2CWoZAd/Z8tPk=;
	h=To:Subject:From:Message-Id:Date; b=K+ez1GwV/ljWnh68BiBnR7u/7sQDkyEovG3+Nlo7Kg2ikGD6O6FcP6lRqe34d5O0Ew3ItUlByAJkf8By7pXs1KJKv7OzyzdiUPy9BzgPFCSZn5oirNHyEVxe6XK4dySZeqLatH/HH82LCgFIVomdHr3tM5/nt+C7zfQZEamaYSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNLdgKhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNLdgKhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E3C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754930393;
	bh=rFQ8JdDifqnfdfKIc4v1kk3cmJ7H8n2CWoZAd/Z8tPk=;
	h=To:Subject:From:Date:From;
	b=nNLdgKhcCzfe1H8pRc+b2kjGVgqPXYjCGspMJ4lKhk6n1G36aHaVZAfPvzP+IjvPl
	 jY5QM3O7oPzsVZkbMRtxHI783URqep0m++oZCsQFhur797PmXD70pEvAAmhSX9euaA
	 ArN5FRwm0NHRDbJfh+1EJcI8vi1gnGPUDJidl+f01nOhe5XmgLWIaJG1OknF8WjEAu
	 6nKyMWC9sfTiS9pnDqg/ztvyyq/uUsYDbizPiclgpVDbmbXt090/kZKor40JPOCmZj
	 ginM8Vr80DGEj5WwHDZSDqNkERFFaG3XDfpwGOj4IjBmVqrmdB1oP/G/+PrqQHjOo4
	 gY8XY1s3yux4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90070CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493039358.3081.15824249528450301893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2c202d0e688b19c03e31fb37714fbe8b66c4749e38009d22a4db1db9e203d8
Date: Mon, 11 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754930393
