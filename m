Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C4619FA6F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719257543; cv=none; b=HceGdL+eX8YsdgwiR1r+wlsfFYBgJ2FDGotHfZYcSYX+QoFkvwc57BkCJlFOSwY+BnK/yPCSeSl/nAIIfn8JRzJBqkNHc94LeBqqeXr+s7mBRCHErwC/1N6a5r3LZFYIU7EdGdzBD9fACep18ifTu0HU/xWiUj+4oiYdVvOzeUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719257543; c=relaxed/simple;
	bh=Am5cERQ4fuIQjZOSq4TZYeyED3zblsYwEW85GVxWmn0=;
	h=To:Subject:From:Message-Id:Date; b=kRlyPBAzUaVNG/g0XXG9JK+6v9FhYy+XCymvx8nIsAl7Fg4tylfDMwrMlWBM+uGg90X1cbyl9Up9IcbH+LyjZT9/V3RGpSNouSUbmvzX1+N1tFoLnR/KM4jPnj/bSklxiSYAw/4vjSDkt19hOwzD2Nk0dFDuTONJrjYnSc9HePk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CImmIXik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CImmIXik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C188C32789
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719257543;
	bh=Am5cERQ4fuIQjZOSq4TZYeyED3zblsYwEW85GVxWmn0=;
	h=To:Subject:From:Date:From;
	b=CImmIXikTV6ZwTo/SXlSTIQtEagNBo59gsi74ijs8xTuJIrzzLzBLQtJrmTO/prNh
	 z8ZTburswdDW8ZEqwiX2RWbGHidAoNHJ69KV0ZGYNhdnLL9bz1xRrb1+FBd5klEsRq
	 zXMjwwF6j3RawY86arPPZZCEbl/PcxUK22hq22l0HM9qx3Wv0+Z6466MKYA2Q2Oh+G
	 VvKHoEyX6v1kQ1ImZzRCHQkMSlzAhQ3KJVuYuwuhHYoB6TikNpDRcmWTyV84Nz0bIM
	 GpedrqbD/Zv9DdzFWbxd3LVM459fRh01rlpn6Rrh7sRQnsUp+sblCckPaGF41uC2xU
	 932iGoQGmNkiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14FA7C3065B
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 19:32:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925754305.514.13370435188950075659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2903e176a610957b5ea738caeb16b85fd38a3e0789403491af236e0a60aaca
Date: Mon, 24 Jun 2024 19:32:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719257543
