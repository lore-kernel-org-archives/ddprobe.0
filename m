Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4241C54A9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759933194; cv=none; b=npUNiUoQUi/kbJe+rqVrYc4UZoQ3qKe8xx9VgEGqui3apV0S4xXFW+VKjsfSTSrb+sTVpclVVa1qjdPgS7Ww6OlSpJ352YxxECDXJoIknz3ZVVsO9PppxdbMozgiHOz0YViQya6ArDqKoKRi9aNRr+D44Vn8+NLM23ngdRW/oOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759933194; c=relaxed/simple;
	bh=gFwrfnFumVP6qMCgQQNPz1MMKXfN/XL4sn0Jn2hlMqk=;
	h=To:Subject:From:Message-Id:Date; b=gPGxw26hVvxZyZBPPRSGQA0kTZHBf6joPX0PjBB95i4nlzEr29ZCjsWbQHocCtyDFJ07sB/vnTE35Cq1F+pXU9SSWxaYoC6UJmawBaGkH5iN0tHANer6oK+mxsW8Y6LsxT/TNrJnd184WAZb23yHE0UbIyteV8n7W7tsgPZCxFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpohn/4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpohn/4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F18C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759933193;
	bh=gFwrfnFumVP6qMCgQQNPz1MMKXfN/XL4sn0Jn2hlMqk=;
	h=To:Subject:From:Date:From;
	b=kpohn/4LCtvo/H3R5dfhii49ey4iu/3sCJ8gI+4swEz8nDqnTES58zOoQRu7MlTO/
	 cl9vfjoS3hFUe3CuLxjhR843ImN7oy+Vtu+BHoVpXH0CTtENKfyQBVa4RmAKRci0Qc
	 4YL76aGXElM011f2U9me+PydCdbB3Vn2HpnF0Qdkc0NEEhkUmwexwKuyYLBXhyeeyV
	 BUemtDR9G0ajx3iEzx8g/njLFNrHzp3YFRlfKaXSO+yVgQLvos9yh/Vr+FX1d8gDsG
	 dkhmThQjjQXZQcWvXy1YSiOx+eiVBFN0T/tAOoV258IKkNrYlBuL4stuE0jPZk2SgM
	 MVF5+koT7lkdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FADDCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993319357.11329.10754123194750061588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f053548764d1ace4de5cafad123a3dd1642901cbc815ed27dd80b526cfd6c8e6
Date: Wed, 08 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759933193
