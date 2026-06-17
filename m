Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF1F47F2FB
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781709394; cv=none; b=jT2J0yASonluwABLH4IJZsAontHbRjmaX65prFoLUf87OuvCwl5PiBGcPwy6ykNXg2joUTzEjUgSouEQq3crZKCgqLEHXncaP76iznv/HRY035OFut5tfqP+JmPKK8McoKBhWd9eTUcChzMMWYyfG+C5a/7oMoeEQinhLuUNikg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781709394; c=relaxed/simple;
	bh=HYVLSIpIROKRmCnSfxQ+Qy/9nPVh7Gu3PqYPox5ceLs=;
	h=To:Subject:From:Message-Id:Date; b=UQrrSjipQpDWRLB+om+TGkFOLT0SkUR3x0U8UdbDw+6XnMGn8UwgV/TTi687B5kUJs90xQVAvat0llyVZAfR1m4QKJZ9IVF9+tNsM+1G1VvU6wrULOcsSlNAwz58Vphcbwb4RUMCoyRvtmjwjRXbXarJyNC9PT71a1m6/bIUpo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2U1Zrbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2U1Zrbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFD8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781709393;
	bh=HYVLSIpIROKRmCnSfxQ+Qy/9nPVh7Gu3PqYPox5ceLs=;
	h=To:Subject:From:Date:From;
	b=J2U1ZrbmNp5snlqgTXdlA0Q4BTfpQYgVDQCEBwTeBRLEIpJKZNlbw+LYsShYLAUGB
	 djAltOxDwzGs4Aue46agvVMVmDSoL3Kab6lDbUsYsmh2ndYXvp+DWhUTwy7SZnZQJh
	 mxmleHHDKUcT55kpxUw/+IJeIVsF3kB4Wo+t6CoVEVKpmFnbyFRVhGOVqOD5Yr08Lf
	 7ztGs//fU+u2YmD2NikEzcLRFM0M1u5nRPa8Phqi8gOoCA2yfoV/NwMfYYsIhUiLPo
	 H87wp728apHtPVZua1UG76RECw7+btHo7LIBDsV8auUrW5dPQRNrOGskGx/LWygO0r
	 sP+3usBBh4eqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1B6CD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 15:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178170939369.29674.15215303628762174086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28eed1080d50caa046fc25651ad4018170e224b5ca6b1047a0bd710c5e6b827
Date: Wed, 17 Jun 2026 15:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781709393
