Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AAA1D63F7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003394; cv=none; b=tnyD4Wl2VazK29jlmamF6USdNc8AkJfiF0UJlC5tsyBkdTAbVrAUGYMtyyQ3D4S7whjwpgI+gIGX8N/Y9pMw4vimhf19WXTqt/VJEKRGE+D7bE3JrP+/UJHStGvvqcNN6v9GwFqNy+F/8UENGh2QC6LLGT1vy8+o0uFOXtdDeSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003394; c=relaxed/simple;
	bh=JeVy2Z+VgCQcdzPR12ztD2/pYImFvuoTnmwk4mLwLDo=;
	h=To:Subject:From:Message-Id:Date; b=ifNlN0xwBaD1jQacFEgNyEDmur2FDxVw+eAqWTLJYT5Y1nlrYtZBy/aXfFimTAb3Dh/oHxj1duFGlNZR4gIyFoG+HABOWhnb3WKM2XL1h28SULOwTM5Bgi3hz4e09OsQiMGNRziEOtLWSS0I4wibDjkLTwfrjgMkMsKwIg8/z1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZME5JwM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZME5JwM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CDFC4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757003393;
	bh=JeVy2Z+VgCQcdzPR12ztD2/pYImFvuoTnmwk4mLwLDo=;
	h=To:Subject:From:Date:From;
	b=ZME5JwM/AjdWi4oDwwuf3J43BTR/8173uCiXlAT0LHezXt7ajeNVMAMVYQa1EiB4+
	 waQlENpwa9gZmS4tcGqIh9sSP9Sh5lvcO/AZvQkYRjb3sWcO9tPcB/7V3EydY8yzDK
	 N1JtQ6W9rEkTU8mV9NkfoWs+wBZ2yxWwn1FHZcF0h9V+vK2U2+3SjdJbkbRRRCc9G3
	 6TrFISZ1xo+CIDzUDzjvLpnfvXK3wIJF5oF5960b03l1X0ezKXwyUYO2eWQ18bD7lb
	 +ycWJLLIj6Kolojic99TsAhmjg2Pjpi04eeaXNrjMckUbCEsRMAaFQJRUT6dXzt78L
	 2n+rfbgIpCOGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0FCA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700339357.17752.15898553284828758410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54d5efb0748ecf3c27ff4fc732515f55852f1d68921ddab343e928140478d0c
Date: Thu, 04 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757003393
