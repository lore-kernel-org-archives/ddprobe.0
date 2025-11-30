Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CAD296BCF
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764533574; cv=none; b=uWaKqafyXcvwhPSjJlnKWTBFK9bPOfc8fO5zHX0U4sxSrYHdLFmkZhIFTWdU/ElHcmTYaozKEGgCk3b66ntpD/sSmsQQr3saZlAMeTDEfD13pMXoKJouljsVGVjHevgGFEu/scJkLhqBFVXL0bW3/RLRE7ej+KykpUUTUNVUDcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764533574; c=relaxed/simple;
	bh=MwigCmWGjVtQMB+z/Ij3D1EmX2c8buxsKxTxm5KQcMo=;
	h=To:Subject:From:Message-Id:Date; b=GtI7NZdYq6oN+AAuqCW+9AdyYjP4ETjyuiEcrtyGtLTc/umTdkqlTLxpneeeCbLZlTwaCJ2j1evUVnqVK6XgKSgimdH6IVpgvr+Ub+kg/Qee3rBMoUftl+6C0sumeYwtlV89z7c2pGc1Bs9SXspTTBhUVWOEuGd1MIpgDOIcszE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jqm8w/I7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jqm8w/I7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B119CC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764533573;
	bh=MwigCmWGjVtQMB+z/Ij3D1EmX2c8buxsKxTxm5KQcMo=;
	h=To:Subject:From:Date:From;
	b=Jqm8w/I7rYosUx12CCrsrZWQqqfqcAuF1B3oEnUxs1n/HjvoacgVgtVWvfMv07e6C
	 sA3TVEvARvOEDBHcP69bVWAXJIpmwjMhcjwA/B27dlWHmvbLq0gjFL/Dty3TZ59Yof
	 ywLV0eAn3I/AS2nUq9d5U+lok0XuWUoUYqwGGZTl49CaufGuOjBb7WFoHkBEw1UDRs
	 pWF7e8/fWDTmTafNFQUag9rBYQw8qTaoH9nz8/TlMZyENOaxbp+2QolgFbEzZnpkUt
	 uOaJ9UXxzM8J9lTSJbW4tgdyD3LYsb8XIpkHw6k8dWccgphGaxr/K/WXhiviqWRO3Y
	 AUK77AMN0d2Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A985CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176453357359.28451.12442850998343568089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15111b27ed6e2a4bda7c97f7f026edee51ddf1d9a75aa76559545880414d4ba5
Date: Sun, 30 Nov 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764533573
