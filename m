Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3607F4749FA
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787235034; cv=none; b=k2EZi99TstgDQMH8z8MoK6umu82M8PsTvsRgpGqL2kVigDxOIYY6Q/4HxNs8N0KFezwenfPqq65b/mLH3MsoygQ3E46sHxSnas9KbuDtk0PdgwMQyHBnny7IsrMkrAXCiE32XtU/zNR9rY+arGjCsIwwyTjt3MisRl+f0sJszX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787235034; c=relaxed/simple;
	bh=PG1cUCYIw60C5LFIxgjFJJG3d4oZhXMoudhq+Si9uMo=;
	h=To:Subject:From:Message-Id:Date; b=UeyM8K4USwV2PEIBZE53+d42tMMop0lHYZZ/lyDwmzqXlrEaCwN8bWOM57z7RirHFazKdRRVCBmOMGijr6LeJoMNxf/o4Q+yrh0c6NhRZ7fvZVNWQxyi3VEs1iyujC0ErG/VYWgYIMxJoTkw5L13MRFGGtlfIpDWoYVNey17Yec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPnNJrGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPnNJrGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B7BC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787235033;
	bh=PG1cUCYIw60C5LFIxgjFJJG3d4oZhXMoudhq+Si9uMo=;
	h=To:Subject:From:Date:From;
	b=UPnNJrGtYtN5n31lAl4pHO69P/guB/OMx0w52NspNlLT/c6m7kUtKNyW+Rg/06T7B
	 kLqILG42zgnNpACi14FcYPbNENVhwFlYXKy90t3kDubEhXT0dcRF+2iprdH2TTSW56
	 Eh8PAkATNjJfC+voOj8XDzWmP+uXCHOanrtw4lNUxFOzPtfLh5rtP6nEHiyY3oI2/i
	 leCKy8xiBnb5HO/plv1EYXJreqmTyM/o6TAY1RDs6GlsI18f1j01x3P7+wdts1e97h
	 udExnbf95Nx+KSmCgL3SIGWmCIyAyqYp29rsm/zxKYq7OaSq9C4SCvr9lb8uTM5Fvk
	 dFWU0Emjh8Nzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95E3C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723503374.20484.11633798451350377801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1812eab46eaa132a92f24daade207ac469bba98b6d59d4147d556d1e66ac0a
Date: Thu, 20 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787235033
