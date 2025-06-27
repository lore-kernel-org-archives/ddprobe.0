Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C731E98E6
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751057394; cv=none; b=svv10Ljv+ijUXj9kwjXduqNipNew5CoYwPSWq3P5j0/cg77CkB5ZvX1LEABj1IduCxB92+bpm9vxL4zdvM3XZHLUxthgGMuLj6yqXqS8mjWVqx6TPOtGcpjouSw1UzR0l3Kz8qWvSSCi42gD3zVRpo+9j1WtsSTKu6auvhudgx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751057394; c=relaxed/simple;
	bh=3Euo7pg/Uyty28dhI3gKMPxoCOFNvUbMUcSY2Qwq+6M=;
	h=To:Subject:From:Message-Id:Date; b=MeA+0641FbRW8u7EII8kI6S6ZrzXwFeowdcL5/vJ7zPwZ54AunNSwHBjWvbbl3qDXbhBQfsmT4S9rUcLQqBeMvsGdg/kGshSR59yK/ZYPGKNdg02Tcfjd7LWOZA1BnG+oB4k1lyj14Ju+ENEjRGc0MCYknWimqEN9lKVVSd/XmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iF5jIgoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iF5jIgoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A84C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751057393;
	bh=3Euo7pg/Uyty28dhI3gKMPxoCOFNvUbMUcSY2Qwq+6M=;
	h=To:Subject:From:Date:From;
	b=iF5jIgoKkGiNHP+Q8koVxpDFzEBwAE/+IGuVIKPGvDTeVQdVzVdtlTLN2/+MdXeAR
	 SeElYQVna++F0BB+ECwAnT7l2PYuThTOli0zvvAab6rY0coXfim9Y3Mh+W16I4T0Qz
	 mGawjggjBPzzdTcGhVIQi6LCewVPREDHDDUpuf0tkxcuOWEKJZfAFgR/sjC2GUXLmL
	 yXLJ4O7ALkJGoMctOtnYI31XXlu/PwLAdE85/Pe7pUXLqwYNhEJxzof7ZbDNYZoW26
	 OJSr3KhXBsouwMACqOCG1H7OOlFgIYS1swkt1MGYymIpxmfeQ8THKN/x5xuEblHEdY
	 RsaMZqNJalLNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9070CC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175105739358.26039.11064400916824273096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2002a9970cf1b8f3f646df737c54a97bb2e83f48e9812ed3db1c0fad743b08fd
Date: Fri, 27 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751057393
