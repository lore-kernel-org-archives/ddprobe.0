Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201E2277CA5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766951034; cv=none; b=O9t+TtTZn9aB0ot0tZ4jlpW5/yINFbUS9IHCDhNN5xbSqxxoH64YdSE8sMbB+Mr4b+U6AKVnr1JIb2cR6Dk+fG2HaeZ70znn/RG0iPcnxW95a9/Icr60Je8ZzT3aPcb/bWHpO/YTR271JnoO2pgZmc/UoavQsTFrkXdjYbDMKvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766951034; c=relaxed/simple;
	bh=ksA1lhgnL1ntwC07kNT+9l4bsraavPZz6siQt9EWo64=;
	h=To:Subject:From:Message-Id:Date; b=px1cE5rE120DvqKDrMbDK8Uu4m5acf3hkKSHisWRzCKp7HfdAy2lgZjA//XlVj0s7KUjWCAqyUI59o+9Nrc7P5yVpY/fYgBjXbixgfcJkOO4aUX9tf++LVxR70A50fRtOEq+YzlGEtiLw9pxj2RE7UbhqjyK/4KYdXKJwEGZctE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCIkUaUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCIkUaUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF21AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766951033;
	bh=ksA1lhgnL1ntwC07kNT+9l4bsraavPZz6siQt9EWo64=;
	h=To:Subject:From:Date:From;
	b=bCIkUaUs52z+4FVAXQM0Tq4vVBKB21y8Y6DYti2NDwHkeQ+N7eYK2AmCZhoUjwUcy
	 SrGM9Cbn4fyodHtuJLl1cQ2LCHD35zxBJ4/2f6kR0DaZB93tJQQL9pAQiOM+n3HQmb
	 E9cJEnKP4d/V0zmMmquEengol+athLoZjRjFzE6pTBcmDFcE2F/oaZod2GmOnVMGuh
	 /oD5JzIArG60sFMz75eAaUPsxcBHtoUHAem/uL/glVnBRvoVf1eU8kZieO8gBblb+a
	 ie3Wg1nMbtaGKbcRBsUCCMsuixkuvt4xRykUi+fyJNoO/kRVh8OM+MjKIoCxPcS0OM
	 MiyKzw2MwOBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E345D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695103360.28355.6164458921103230546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917cee5e50fb920b4e0b74ad4f86541399aadaf36d86c30916398b8c605126c0
Date: Sun, 28 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766951033
