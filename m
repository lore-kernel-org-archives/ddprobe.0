Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3322F5091
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752668994; cv=none; b=oOPeTqNdpksEuw4wIgifIKbNmDHNDZGm58EYj+Q39J6uNhOoK3MtUuwNGm7U3B3nTztqA6tHQ/nW1hzdXA/Fp5oCd3cx5N5Bhp4Vh/BVLz+0Jm80sNxSak1Sp6aaWCw8o/HGeVCDofPjiSAa5dtHaSxoZneySL5ZHwfJdTLyXL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752668994; c=relaxed/simple;
	bh=2EimZRRH0qQ0iOuWh0uqaZBQqtzIDtEU1BfnMzH3M5M=;
	h=To:Subject:From:Message-Id:Date; b=uNeMI6n5NeV1+R02yJg4wWv99EpDS5OdXdbq5hPktxIimnnrMuUm1rGSSiEW8HroxG5WIXPxx29lWTapsfkx2/2kT+E25z4gvUXk6kXxbqNFK59SvW5Kp3Q8xVTduYzo1ycH1tZcY67e66nXqUJVWrk/CutVLO1Do2/mz1UlA/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BixcknAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BixcknAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC816C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752668993;
	bh=2EimZRRH0qQ0iOuWh0uqaZBQqtzIDtEU1BfnMzH3M5M=;
	h=To:Subject:From:Date:From;
	b=BixcknAoF9ZRBuFUVavInZz9X577rh2HZxajrAOA/mCvq6sDcXsywc7RkHh941hNq
	 HUY2cxu/loHqEgVEv7sGq59qrP2pigirLKYLriNV6TWZ5epMjC0+nO8Mb6PyRiBJ2X
	 fsyvARTjAHYim4W577AeD6G9XK/O1hdPIvwNKgRLKET5ASpjwqo2UXHMM1gaRc49qi
	 FEpkYZ7HWc73XRf3TB/fBSPd3cq8lMyYfIy1v4kkNGGcocHkL3gCn7NBVALByj+k0X
	 LwAju9OW3JTiVf3z9/qNmMRUz0HD9QA/++Y9KctmWfJYlATRokeJWeNB4KGMKr6GSA
	 tHEc5atCpxhHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC41C83F27
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175266899362.14725.13271885380257204905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7484afe5605d5270c6ce7e7d799bcbf36cbef42da0d8a77259b7685019c416
Date: Wed, 16 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752668993
