Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53502E2DC1
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758565793; cv=none; b=R/SsOscdQlYnu08M0M/R1MSFQzpfvgdVhEqP9ehWV/15D1KJbMvZnBYupW0sQ7zMKjy5jN8XRKErtm/jEMxHr+1GUgNL9nGdXng4a9xkE/wSlacEB1rCm67fK4dzm7R5g6rkbez5YTsEihWnpLtrhCGMgCQPDd7mGdkwYo/pdRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758565793; c=relaxed/simple;
	bh=YXBfiAeM/55vv6fP8TEaQ9KKHb8ov1DdcCQL5qjnfXo=;
	h=To:Subject:From:Message-Id:Date; b=o1NKReLjavGtDEkcvjHViw5GtpUqDolJ4cn5YthlqTzfARSzQSfd/uzBj5qsQ+9QYtYk+2uI369NLY88Bd2xbcVtaeKzT7I0ok/VyylHNW4hFOE7EzbxL3L1qwWEGm/vpjqLH5668ThCZn0L2oCJ+Fs+RnfYrhcivtpahJWaA1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3E9bgFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3E9bgFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A1C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758565793;
	bh=YXBfiAeM/55vv6fP8TEaQ9KKHb8ov1DdcCQL5qjnfXo=;
	h=To:Subject:From:Date:From;
	b=o3E9bgFr/k0bG0JuYUeej53h7uzQZ0SkY+nJE7m3EjsrH8D9US8+zNgObmm6Mz3JP
	 wwRgPHytldLMVPrrWsZnjE3/NvfYMcDW0b5IItQBERFfcpiPiV68dpWneP9uB+vXWS
	 2Xz4qIOBInaB6753GLDS9yIat0Uo5hKdp+zqCujCnHPgdKLDyfABKNHZNgTusQ9zNq
	 CjiYfsYAGsQ+4AlU5rk/7qRI8emL3E1wHve0DvUHouY1TrPav9k7eSwuUHeCB3FHKy
	 hd0R+0y2RdE4O/Zcj6wE9crQJIVcCWFEQZJ37PXy8IfycOXkpEedUqgxdbHILmXsAp
	 faVTO9rrhb8vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915A3CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856579358.4852.17617485621939032456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b843f5208af03409c903bef50cd8be2af0e2eff5fa20a53381c74c47974436fc
Date: Mon, 22 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758565793
