Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189D94964F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736214954; cv=none; b=L5T2X71wrA5w/y1CHlOm0R75qPqOHmJnqM6OSfzmG9fyMnreMylIGzJ9waGi9UCAMCfyDXFBAkmIqUV8kivc5j0bCF9PJW5U9qi0N86olYC7uwZBDifA0mzvXgsHo1o4VpRxLEFYhvM2zLfCzVLZ5brS/h6/cdfNcMkGitr2bSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736214954; c=relaxed/simple;
	bh=0e5d8clGckIWzAbqnmM+ZE87GcUd1HWmZ7CsTSIQktg=;
	h=To:Subject:From:Message-Id:Date; b=CHwIxyHAdlaQjwB5cwRiYD7BM7aoDxcUFD5PIO0gZB5NCG1/K2fzqGyBbFfa4gIlY4etGlLknVxoLX24PeOAQodU3O6L99WEeNMWybRLTfM312if0w5tRRTdhpvbInHGVZJgF9/3YWIhFuSpMc4Zzbc9H6COzdL2sg9ycX6D+2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr7LW2Eb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr7LW2Eb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A462BC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736214953;
	bh=0e5d8clGckIWzAbqnmM+ZE87GcUd1HWmZ7CsTSIQktg=;
	h=To:Subject:From:Date:From;
	b=pr7LW2Eby3nLOhnPTYKf6lsGLZm19V4+Vq7fBFqpX3W8giDlOlLWXP4oBIaeRVnHT
	 qj7gnNpaBYKyO5SQjhlpvqw+eH/V26EK/m7gdyF2xs5ms2wOf8J1uohaqrhBl7pvKR
	 fpd0iLLodPbV/lkHzwK+lMiK2zA7VeUkrsDQi9J85wXfSv8kIKsnhtNqwiljmuqCDz
	 Y7K500uisk9eK0gDUGgS4Xwhwu02w8bAUJD8l5yQ+qmkCrHpO7RTW3941m39SzZMVX
	 mk1cvg1gzN0Dh/I/xP8wo8gNDXK2YS40quKFWAdJQo5gAi6Zg5mrNXcGg+k0cedKoi
	 R8faKGrj159Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BBBE77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621495358.30980.12460786168113805981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f5bba0dd11385ac1a5d272c445b78c878a40ade98b0cce93950e43c8eee50d4
Date: Tue, 07 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736214953
