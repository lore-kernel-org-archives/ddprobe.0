Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5C97DA6D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750223394; cv=none; b=ReaD0F1OLmCSGam3wfzN+Te3SKOIl9Wem+kNGOpdPGJzvo0VnM/caJvss1BOC1L3dFLDAqtpqotQmyp7QASO8WfxtQGax48TVZKuPQnyKpgcGZLkxYZaMszmNlF/f8oMtK1EFPS8qwd2gnWlvkZ60CRC7CcEdrRxTbgM4EPgZts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750223394; c=relaxed/simple;
	bh=ldi13I6KzGGccvbnvNrWQFvC2mGi9jmq187dnmeZmUY=;
	h=To:Subject:From:Message-Id:Date; b=N9t5FOHzy36g1oPKkx27/dnaFC0yXeGgHAKu1c7LWM1l8zpAlP4vWs59b4/m2QzMPdNcOOpkh0fUHoxM64mbDV6DNH7vySq7cPqWIEotdYfKx03tDDcsMPdLq5u3CWDSHARbd5D71eSc2fpUGWeE0V5ITJ3BK5T+EwGcnPCwIGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Epr1X6yv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Epr1X6yv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8629C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750223393;
	bh=ldi13I6KzGGccvbnvNrWQFvC2mGi9jmq187dnmeZmUY=;
	h=To:Subject:From:Date:From;
	b=Epr1X6yvZwVJlyOfBnZQnz1cEYUe6b2SY5oDSFhn/N9oFCkDPJFXWMqd74uyg8Qo8
	 N8W+bMICejmxqkDgK785hb2Pfxa8DqgxzhxokOKFK0xNGhRnETTFWYWALFkZOkVZ5q
	 x262/XBia6e0hxgRMeKEtpkjbN01B8QcWT6DrrwQSTp1F/Ymv4Q/RLHHp3qsdeUS2U
	 MNy9zP1MggQ0PIheDaNX5Bl6n23ysK5N2FKKfIpWYJCcPqyUPWlgjbU/MMNQrqOJMq
	 lLlz+TFBtXKLGuT5v25sBKdiwjfM+QVyYmfeuu87X5KW2GbqzWdiZI6X7oGWQj0yKE
	 56Aa8cZhKihAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE8C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022339359.5538.1119163812863355421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2a1b34942ea1c1ff99e9a77164bd2222c59d7ec703baa398e0d2f3a995c3f2
Date: Wed, 18 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750223393
