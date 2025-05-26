Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E19035972
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748303394; cv=none; b=INP1UUMvf+0O0SrimmZ/UBL1AuCSF9yiFPsfXB8KYj56BAyNg0ssu3GHYdNYSUl/y2V8b37pUJXVcrb3RdqG7Agws/Qbm1K1tYiDfY5PtLrrZENDFjtNYQrLapHvx2xJ+ahsw81vPNKaRfHhfZFUxcJ7U0P78xsQE9rJIGhj1Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748303394; c=relaxed/simple;
	bh=yHXU2YtQTXRcrgyfyKr9epYIEc2SIC6x3huuDRjteLg=;
	h=To:Subject:From:Message-Id:Date; b=Ig18Cxdo5R5fPlahZCU89rjJxiIZ6rYZ/16gGRKfJURADkJNoCG4G1KHIQ3zuxgoV2Sh8VMwODPfyDOaDwx/kAYd63TQjkNdNlfG5tlitjYpUFZ9DF41NljEAcHXyo2cyUi0+b8XCKbmNvvhsqM8ZGjLiaum9H+QejsKjWMO+aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofrHAitg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofrHAitg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A005FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748303393;
	bh=yHXU2YtQTXRcrgyfyKr9epYIEc2SIC6x3huuDRjteLg=;
	h=To:Subject:From:Date:From;
	b=ofrHAitgIXtTqrE7YuaY1dBO1eU9xJJIFNcaX2VpO+CVarXwyoQ+AGqC3alzRZKCk
	 +VbvDdrCWRHL1ZumhN5uD5S0hhFAVSvw2UcC3xqpwu1Gj0w/qlC8j4PdL4ufLkS6zF
	 nLQt/LMPhni1Vg7qog9Dy13l9Xd9jkKrnlt08sJmL2MkDWtmCr8WT7FHtfV+E1mlpQ
	 uT9+zHOy55Ms9DKDuWJH3itDmyeOictC21gwsJx/FvtXeuwPmSEnKMSxuB5mSQB7zj
	 9ULN4ugIFPGfXrxke3UVrPwsF/piUa2PB0mA5S0XQ6cQanJa4c66AWUCmYEZny7QJZ
	 Nuw9Jup6aH1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E806C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174830339357.17023.16827667884705818493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5988161785f3e58450432f13292966cfc1da7ae010b05f67d78ed04b8d9978
Date: Mon, 26 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748303393
