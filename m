Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226DAD528
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741541935; cv=none; b=N6dOOYmH0apMKvaNcHtGJcDeLeBRTc1BZurFSXXmTRTDlOgGkVEHE2rLNkVg2tJNuKCNNVtTJOMoP6YaMyyVRqSBmLRlYx6jjq+BNKFqrETJYKWadQgBfM3s0VC1FZ+5B+Ckkm+8CmdqkENWzVGYiT3243si+z+FnpMCpmob4rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741541935; c=relaxed/simple;
	bh=wVa6KsdxbU1ojJX+DjSMc6LVCpi0+AAl8LIOXD0dLj0=;
	h=To:Subject:From:Message-Id:Date; b=RPw9QCIMncLurIG/sbMQbqRJ8QQAMuVyq/ZLErJI9IZ+Fu2/jUGRlFoa5AyIPYFekkWkuY++sgY5dEb3mpmEqR2IbE0myELYL4LbjD2h01OFxgbT7TPAlGMdgolvWJVkYv/PpZx/H4E5AKMS6VM5xGl4o8+Ti5GEEyTHdqJwyvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lun8xAYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lun8xAYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4837C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741541933;
	bh=wVa6KsdxbU1ojJX+DjSMc6LVCpi0+AAl8LIOXD0dLj0=;
	h=To:Subject:From:Date:From;
	b=lun8xAYUbFsdya+GVc9iHCg4TxammMzsgtnvtXeHPzlmpL1tBtn6u9YoI2ldjiRtB
	 8DhdhsG3+XoKP6Y3mmqbQ44eNm+M2IPbdO+VXt7m2XQkuMAP+IAgu0FRsJARGF5YuH
	 C8QeFdUzSreL61wIWiUhzW7PrEq/2atSfN1vpgWHyO12rakVEseEPtNjfvtyDydTSl
	 mri8RbwLRBpztXmPHP/LiBhA4HrfXLbX2znGyUReqfsGva3rGULCZ9WpmexFFX5p/D
	 gNmQBbH70YUuqieetperzVdoTLimsV4IHjDTvfLaJcxDv+VrHDzQ6nGYR6FLSWTFS+
	 lRnfb26Jkb9OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0CC28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154193357.10907.7134314707470373419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882611a660efb3be3c0cc533a7c0f194dad46549d465618457d1ede7a857b2d8
Date: Sun, 09 Mar 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741541933
