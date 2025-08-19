Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD792620C3
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755584994; cv=none; b=lgXHbG3LOl6v0/grGd3ki8MFEt7PdizRVUkZ/1yb/UgC4y/iKlOsumtEJkQuGvoVAUcmnfnKVY+UTUIHKG0EZ1EGfCZk93liai4hiejd+ilcDRb38dWtKe+rquPmBeAWdNYRMNUBFZR2HKdHh99m+xeVYrbN8Mjez3oBR4T5xBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755584994; c=relaxed/simple;
	bh=VknrporRXeVUd8BQAHNeBR/J/AG1Bb6WjtZOCKXi0lM=;
	h=To:Subject:From:Message-Id:Date; b=V/97jKb4EmOm6Q+ICJ0NsCtgI6fynOUViFPnhOAReYCuMJiVVAkD0DwboL859Xrs88JnH52Ksixtm/JaNEZ24u7d0OR7g5wIZ4dWTRcGPpiTT2DHQygbWXr2fm4A18epH7+0na2KysRWuL2hjT/uiQPJlL7e85huPT2A5YDH6/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udQXZcdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udQXZcdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA60C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755584993;
	bh=VknrporRXeVUd8BQAHNeBR/J/AG1Bb6WjtZOCKXi0lM=;
	h=To:Subject:From:Date:From;
	b=udQXZcdncryKf2EOEz1ULzAgmyARoz3aa1kOONExB67wPE4EWWQP4tm3zE8maLFGN
	 cPQoWrLFhW6spMy37x8b+QpgxGy7zqBHhdP/yD9gvOERC9GcXi3NxQsi114T4YlDou
	 ityaZRa+Pg9MTU1Tce8EiemIIm50VxjdRhAfC8oIP2aMekMjQgPtU8AZMNQRrX2K1N
	 ALfZSd2k02Cb5dhGCKYbfzY6pz0FyTrw4b29kBOc0SOJkiUGobWS2EG/V+QYAtx6Su
	 ezeUpur4a68aEqN4HpUv9A5r0RicGP79QXxQBHdJMa6w4V6ZsJ4+V/kfTOI/G8F9Ur
	 3oTeKlwj2FTNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDEECA0EE9
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558499358.13012.12392686066556727136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77fac07a15ae7e0d055a922ef3d875aedbb3265abfbfdea786eff6d6a0bf330
Date: Tue, 19 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755584993
