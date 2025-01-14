Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2853A212D70
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736818554; cv=none; b=ao+PiRC8f2QWuHHB7rK5DfD/Q+FDm1O6gNR4WQvAQvJclSxTi6C2QlGN9zPFuWmQaN24l4Ch5kmayfAM6YQ423G67kyBqhpPxMvNICXSQ9OgzalqDEtHK1tt6kFPtkIg1idGHtHgfu6+FVVcX71O0i3Vy801kGRux4DVvnZIyj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736818554; c=relaxed/simple;
	bh=ptreA6VszyC8URXLiIsGqsqbg0uTahRLMstxrvcrln4=;
	h=To:Subject:From:Message-Id:Date; b=I2BTNNI/NWX2kruaclc7hl8aELZCWaLoLoSNN4qQjXKtJ4R/A/cClKOH/ZDwBhkReWRqrfwl9MSsQzQ8hWF4IFYUPgzizuDD4FYVatEpR+SdX1r8tI2jsxHLVmr26cnVl7OEMa0L1SYPJSZrF4mDBXq/Hw0a+GH/HK0DPSZlg5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXzvMZJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXzvMZJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50A9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736818553;
	bh=ptreA6VszyC8URXLiIsGqsqbg0uTahRLMstxrvcrln4=;
	h=To:Subject:From:Date:From;
	b=gXzvMZJjIMzF0HOj9GdngOE4bxxOm0AanKWlu7cdIYaW30jmMmARtNAlJ6lX944fc
	 ABjkVfifiWoxSic+n7/MA2B/8fWnZjmPF6tzIZP0OlaDMYJ/Arv/yXLdGFMPwSzvAD
	 SLwX4EhpKa7AnCJXCbuowUWq/FPXvK34T/juoY0QfkmO67PVLPrZs8hiF4fTwkNEw/
	 0c/tBwpS2tia5lC3mHuNXLefcmRrbwR6RfjDuTZ6eOwTOO3+33kYm9/h+VaRAFdX6c
	 jjE2TVmvZVZqDTuo0cjgnMGN00lLC/SixkSu0KMAluGCEp12FWg6XSvx6e3ZlhldQF
	 O65tZuG+bTaTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B79C02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681855358.4741.10240217207458505537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13c23ee74d8b53267f08543282f99c3f4dc6d230945ca48f53a0e0db2ff641c
Date: Tue, 14 Jan 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736818553
