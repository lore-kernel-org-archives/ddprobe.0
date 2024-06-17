Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2BE187322
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718608703; cv=none; b=M4xh5D/y+cejSCO6IW/6a/oiwvUeIfx6cdtmDqobAvs+rvgHsLVqTtLHD+bSMDKtPZuPQl6mLwRY3xiN+t83E9Kc7DGL9XL5oDuUIfx7ssxFk77b/SIoGI5lUkB6rzmPua8wVEvuI+5uYLeszai4ZNt0bz/Uij+RsfXcQWHrhXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718608703; c=relaxed/simple;
	bh=d70v8ej2km0j79zjWNrKh5YCqGp5WaD2kriqn0I5kXQ=;
	h=To:Subject:From:Message-Id:Date; b=tTjKDDh+QDCrGrdOzT543BJaV9Nem/yf21icaRXrN9FxGcAOUOlEfyCjrPQvR0YwBdMbNW6WIl9vUQ3xOpA81nQ9LdHN8vj+KIgjkNAkrjlJgSbuOU410lNZ4epikp43hAa37HMJ6ZLX4ILBXmQOKznzPc2fHYqGiPjO4HhNc6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKoE0J/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKoE0J/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFC66C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718608703;
	bh=d70v8ej2km0j79zjWNrKh5YCqGp5WaD2kriqn0I5kXQ=;
	h=To:Subject:From:Date:From;
	b=HKoE0J/JIhO1LZoo1OydeQX2QREtyjcR9fmIpU0If2g0BBWePNr1/1b1PFPgz2sil
	 Pk5KLJH7GyiNbXP/ysYT6ekK/98F/c5O2MzF6ASeNSnHsfJAjvB3OHThfQvQ0/GC9/
	 wIedyqJ8tFDEz9nhgaWKe8TRakgygCtY9DU0537c2CxiGuycKdSmyoIwYAl3pZW7xh
	 w4lkRE2d73fIAfg3oG5o9JgeHpM0vH5igCHQ4Ycrn3skpDqn/082w5jQbmxeySEVK2
	 17K3QbK1pudbY0WIin+a8tLpGz8/4jc6soXzoKAGjITaXXL+37pEddni5E/fUj0DJ1
	 sLKb0CdqfhcVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5968C27C6E
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 07:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860870286.4824.11419821906986133184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07052003d13e15ef4a1d3fcdc8052265e83f6f479dcc92f514577e19e7226599
Date: Mon, 17 Jun 2024 07:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718608702
