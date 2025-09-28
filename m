Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7382BD037
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759053594; cv=none; b=OH2eNHEn3aIZrHyGzOhDnEmh5I32pHurcoAs12DGjRq06AUO5E0hgG9BcXYtALxEDns9Grv1BBRZYXthjM6LfVIjQUnMh23uazdsqsq9sR9Sbb8OjcKEgyqHc4/r+a4bRPm2KfdZKK3lY8iBXV5NS3/cNfq8GBCekv9ZxZWLYH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759053594; c=relaxed/simple;
	bh=4WIdxqzTVdVgcNceljXoxI1VjuMPzf/Rbyj7uv1KxA8=;
	h=To:Subject:From:Message-Id:Date; b=tqgvZZVDDXGsfe2fDyYuFFwm5ZlVhI3t5nfMZqatTl8JBOvIso2ToqLRGrteY72IZxwT7VnswV54JzcmP/LJRxDAShRufZNQOkZWw+wjKmkTO0F1IdTr0hCGFAy8KSVA0JMhilg3lahjZki+K1Ep//9qiAI+jQWbKRlUaH4+UCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg35OL1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg35OL1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A816CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759053593;
	bh=4WIdxqzTVdVgcNceljXoxI1VjuMPzf/Rbyj7uv1KxA8=;
	h=To:Subject:From:Date:From;
	b=jg35OL1SPZlrUViLEbVEh6A4nY43JyEHk9OcOoj5Pcc7BHk5QyMJso3bepqHaVEgu
	 CH4szxjzWYQbQ9TExw7HJky6afZQnNVOV/7+5caqADhiESU6MgeM+BS+U4gSxMWeAf
	 oPt6sRa0O//KOA74Qz8aTjGIQpfGOP07rX3TzJOptD5Kb0udYAagJDGbwEF3eimJPY
	 FzffIBJyxo/Z8kiV04+TN/X+onyQiwLjOI8yJFCcZcgeQ3ln57sW9DtHAgeaRGS7ZO
	 hkW94/7TqWf8nK+KF4LYxE066jA6lLMTlhtw58LDkJfEAJm1FXK5TQUcAVvErZpRe6
	 HMCHPIrKbrQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F48CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905359358.31969.3239701713414146983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4edc86fce70b5c7cd5d3fb5cedd18af195042f48b60f823b8ddc9d6cb64b498d
Date: Sun, 28 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759053593
