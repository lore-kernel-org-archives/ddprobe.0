Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56CD917BB21
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791699034; cv=none; b=OwM4ahH+777h8A38ypkaWCaDOjTDWFQDczjTMZkxM4E5zR1uHNPwBzkkFY+82Nc4xRimvU8qsk70EkC4qt2DpYGeF99Qnt1+W5fCziFj3ENFWjoU5nb7Savn2MRIGg5iCSMIbROahx+xzJFlEeSWaiDo8M3caH1mjWp01o5lFFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791699034; c=relaxed/simple;
	bh=f8v1IM24Gp/qxtU16+8Y4WAnI+dAAdPnF/V9/oX2Llo=;
	h=To:Subject:From:Message-Id:Date; b=F8SyqVNuyw7IqGA9m0wegFBfw7F7fkHeEk3EzXT4Lkz+j1qKkutaN8xyP3+yi+/bP6y3BRjK1YKaGpUwM88P19nMT0LSgEVJAG1jCruwh2DqzLVd2wOGvM1NcACN4+QUwp42y31bHzkVzKKFBGDla51AneqifmwdHgbrLPSRENE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4zmx2TH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4zmx2TH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D814FC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791699033;
	bh=f8v1IM24Gp/qxtU16+8Y4WAnI+dAAdPnF/V9/oX2Llo=;
	h=To:Subject:From:Date:From;
	b=D4zmx2THXuGIBDWmehTh02//JX4DAMF8SW399i9/EOLyNeMTuGbJBrHvQ3D8W+c0M
	 kao4zQRNIpw9O36tC6JXbzYhg5g94hCtImSHDSoW3D8imuxVcpplU2Beu+jBUpeWqx
	 ov5nAio/xZUPSncERRcuMPmixbJ7ESb6snvJjMg3Xl+605cVaHCH03/oWmAmVDowWg
	 zs1ilb3xINXby6llHtYTxR4hHWkDiYgTx3x/bzWtGUHIIIYi2XupoclYwg4827B+dS
	 LLxeMiSb6INF4RkU/tzbYDsNdImTqO8D91D+tXZh/GkNNpLJIC63rF0+pXM0MUafy6
	 8E/F7njr15grg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15AECA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169903368.26657.1295623995185506254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b95305f2a353c8707b72851e9cbf864ffe4a0c42cf0a80c4ae0949482d306208
Date: Sun, 11 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791699033
