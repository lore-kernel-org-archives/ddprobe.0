Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225D91AAE3B
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729724754; cv=none; b=sCo0F7sFpGo0Tgv7Nj0kuXzS3pJXCPndZ7EOtQCwRZ3YNPANY2xd1ATbSPvRTgoRhesFiS3fff6NyE1BiPZKWM2zIkkDkQY19y9gbFgu7n6RTO02OlfCLtuTvAOOvWwbeF0upihbVk4Ic/XezP0BStMdNot3Z7F/zWQ0Xyp3Wj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729724754; c=relaxed/simple;
	bh=UArd08m4xL7acZ1rKDIfuaWm+yxaSpoG9B1+Q2HmylY=;
	h=To:Subject:From:Message-Id:Date; b=eQI+fCAEZPStYiQhh/TBTY7YaE17Zt7hRTZ4zIZea9cTXGi5r7Lx6zt82uICKXqh+NZQ/0hMJgYWITDjCKi6C33U3xmVrcu2iRhDRGPIfOQerGJRtHxLegtZlXLmWyVpDqVoT1PtXh2Q/klNM/LC6jRN6gJVg260p3yNXeMIh2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWVrfHS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWVrfHS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B138FC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729724753;
	bh=UArd08m4xL7acZ1rKDIfuaWm+yxaSpoG9B1+Q2HmylY=;
	h=To:Subject:From:Date:From;
	b=DWVrfHS8z0kFWnvUboseoAvXe3KEcG6jDdOrNWokVlwFH5Or10WIxbXwfYcIcfU2e
	 Bx3rAPbLm3w76UU34AJIHa7YwHM1KTBnEBGc/aVzAGDjQaHG9E2TWChgCGyb9BT3HF
	 XA9nmo8J/m2Ky06/GOFK9WodPcy7NxIm/1ZZGZZXGQTtLKgeHNfN+amMUMSzGcZrGc
	 F5fubmNYr7s4juhap58C7Gm8tPAhERGUNlwXhQavt/bN/+QwBAD2LMP5Ikklq1U2K2
	 3lK9YNbirVmiHVjMz/9RDvuXBUO5ky9x/OXWOgfc64K/vpssnvAnPt2ITlSnhBBW6M
	 b/tqWFx+x66Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6BCD0BB47
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172972475360.2409.7869578652120285602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d4a438227dbd18481f19a9ae787c2146e4cda8b7af9218022f54602d72ba38
Date: Wed, 23 Oct 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729724753
