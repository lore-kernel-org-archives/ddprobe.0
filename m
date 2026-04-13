Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197EB32F765
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776103054; cv=none; b=jDQCWmF8crtyLzCGEyWccYuUDZLd1jupewM5/31g0OWJcn+PZPJ08PI7dQkFV1LHR5P/30JLyKJDYganCZHwpDbWFYb3H49ljd9L7RJUOQFVPQMdSh17dvBBLmpIlMcu2y4jqz+czY+Z+/flyhzvttvKgSi4L20Ktkzx3dAn0ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776103054; c=relaxed/simple;
	bh=sbn3w0zO1iU/+y98dSj4uOOz1tW7MhTtzNukawEa+XM=;
	h=To:Subject:From:Message-Id:Date; b=W2D6puPBBmw0Q/Be4CChxiA4sDkJVC+lYDsGPbT3H37C7DUi1kbqYgEc8WDTzr3voZrRelhvnQX2bdA8cKMyzZm/hXl6B2l5Mpk1J/DENYqv3F8ic/EzgR3tF2hNyukQDOcQM9d3Mq261rlca7cF+WmDtkS4ZeF5sJvfspudPuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnD7A8TS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnD7A8TS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4D3C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776103053;
	bh=sbn3w0zO1iU/+y98dSj4uOOz1tW7MhTtzNukawEa+XM=;
	h=To:Subject:From:Date:From;
	b=PnD7A8TS1rDLaI3oJSJ40VcPF84Z3Mf/4nz/eK+v36DO/H1QiJYWabYrN1Xk8nb4S
	 ah7RsnaieYlUZ/EsOmGkBh2/9EILYLZGFboiNPwGUe52W+mKGXKRW5pRQSB7kHd5/c
	 uxuWjvc5i78stFT7ledJKYrdVU0I1YL6ORA4qnXYc6333B4JjeebWSt+9AQ2rdrFBq
	 gTtdAMN0JZjvI489emio2t4ueLM9aU5p3x8iVmt7mIay+oCG0WsAkwnfQUIuE+QpFc
	 ZskfFDwRhcxv4oqYvO/sMpMxEbK8/4H2+JKykI9EIsxJMDUJTxWdksVFmTAe8ijDNq
	 pNF5h2wJOY9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB27EF34C78
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610305369.24543.10726686848081563648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1565602b36c95e6c243eeb37635889f9172aff581278571a13ffc1216c75a6d3
Date: Mon, 13 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776103053
