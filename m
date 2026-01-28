Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FABA26E709
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769576034; cv=none; b=E/WImtChwiiTHB0LP/TSKAVtH1h0ARyzpvm2bxI8htiD7/LNsQn4xrPuZM2lv53UhK+gjNuhkmGW+6YXOE3SFqYQY+vTra1DFLI/wGNcNoewDlQW/S33KAP4S+jS4aQSKbmqcNtCZDRvDcWi57jlJQhLuYVfYPZCTYLmNC17Ldk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769576034; c=relaxed/simple;
	bh=OWOf/vYkKG7b8xnxeK2uAKRDyGqZENYP77OPv2MdZV0=;
	h=To:Subject:From:Message-Id:Date; b=WwTe5NnxIjCjVnG4/ZSXhniXADpz6kELinxB23mgUkMg/djQwhyssZz96kpSJTnE8jPbCgK7hFDWUOVaolhfcm8zLRpMruiE7hWB3/zJBODYtKlN9v2F/mfps6oe675ndG9ZOqsJrWUbxa89zoy8sHVtcWca7o2+GRbbhl6/0Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HULPVMep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HULPVMep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC98C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769576033;
	bh=OWOf/vYkKG7b8xnxeK2uAKRDyGqZENYP77OPv2MdZV0=;
	h=To:Subject:From:Date:From;
	b=HULPVMepEmQJjuPqUI7hUSt8BCw3ccHLCX925W6t9BcjjoXFNUAQRQv11HbntF4Z6
	 PaAx1RYRnXSTYCijpsvZ/u8KWP47sUX/OzYlDkxr0pXkYethWw12KAtGdN0HTAU/0B
	 36GSBbqCbTs2huxCPmCx/QOV25RXnrgi31g5V1aKW6uWMBbxwnsyOWhroMiGySLe3R
	 XEUiQMLi9DNh1wiO5xe2EiPQST1ntx21uWTB2pNiVRoIn6qxeJRTMhGWayt9zXV03v
	 1GLcr7RCJ0/+PxWcQek6Krky5r+0GXlAF4hlRB+UTL8FU1I3WM0ePKrzh77xEtzh/H
	 GkcpgFwKkKO+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C4ED35673
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957603358.16594.10014083228212489387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94355da868892566cfe34bc4230fb5d51c92e55d402b144ac072cf14c2bdc05a
Date: Wed, 28 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769576033
