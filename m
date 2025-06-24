Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1968462
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750781994; cv=none; b=g/E3zwcmP5DJUb6sBuRuJRPkr8b1teVr/QVhEwlhed60T3Wer3Xc+bFubKDEURpN7U/0hZ95ztyJZfgTTWHOgzfg/rQ2cQY8gJy3Piz63VK3ghKsaZKISaUE3ieTI5wzGx2zQEJcFk8r9ll9Fy54BXbGh/Z3F0ikdzyKeOd2luU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750781994; c=relaxed/simple;
	bh=wHsKZhzcy+rOqaubGHqmXN5VOj2dkNa5Hbo9JWqLG5w=;
	h=To:Subject:From:Message-Id:Date; b=frphHhMXFfXish7XAJZFDzuPby3z2UTBTWbP8Wg2gtLoShkXVmFg5rohi1nadqPfoEYWErrqIoiHrKwSRrQFgFEE5uG4nuUpC/LdFZEXCq8j3vJhPfpQ+U7GajL6eez3as2QMyzlmKvUHrCoKwnKNOFqxBZWbUUeH81qK+fJXvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4dcRn4K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4dcRn4K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3485C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750781993;
	bh=wHsKZhzcy+rOqaubGHqmXN5VOj2dkNa5Hbo9JWqLG5w=;
	h=To:Subject:From:Date:From;
	b=c4dcRn4KYemmcTuLoPxDseP7lN3JB+kKiOeV6rXQP+4QUJMfMoFxZwi5WMfDlKzEi
	 4DXyH8XfTAT50aP9rsrptw/l8GLEtglgBfjSwRPMa8xx83wQFFQv66kVNBdkLkODrX
	 ZrZwrw7rok+l2sjmHfCiHUnGIwpV1sc8iOR4Y1NfovNhlHAGIIgnvOOoqbd5rxMzKK
	 aXQSkKJZZOMhbN1zATeMAK5X4KxwZ3Bbr2e0UnG6ny2mx/y3PP0ywb0BhHjbouYpN4
	 6gd81UGLpHsx9kU6AK5nfeUNUtz/ok+hrz8jd1odpGmEWvMTW/DYlqPDAqN25qMsip
	 w9bGuS+N8B0tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D66C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078199358.15301.3168209495601702800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c798964ee2de1d90872ec373783ef7ca9b72d910d8614435d8f7d0aa32ab32b
Date: Tue, 24 Jun 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750781993
