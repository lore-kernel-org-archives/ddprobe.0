Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428191D5CFE
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785904834; cv=none; b=RE2m00sRpx0/ZZwXlEIexUfbqxWBRr6NWNkLO5eTDfEH9wiBCNyQscWfqFbmb5YrmYUZsrOXZt9lBwWjtdx1E1qvH7h0AikyeFOWjZARB0u0vdv/rxv6SpPocU9jXJ6z7T7BVF+ECeUEsJGrMD57OZLIUWS66jxgtSA6JDImHxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785904834; c=relaxed/simple;
	bh=JuhXDq431yh0aVKNSYmG2tmugamsLsM970d0ZnRNOZ8=;
	h=To:Subject:From:Message-Id:Date; b=huMTOfTfERiWfpjToNsVbBTECNexRi5efyXDPfEXFJiGXZlVtGFSF6fDqTBwA4kZEf5J89uVMFNHRp8BV4a+Fo4Xn/Z9FNhC879b8ZVBdXdh7xWgVR8LYpKYhCgh/lISgsNCWpvwlG1xxdQGhBersgP17mb6hYVU1OR3rnUlAPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rasgyfp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rasgyfp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE369C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785904833;
	bh=JuhXDq431yh0aVKNSYmG2tmugamsLsM970d0ZnRNOZ8=;
	h=To:Subject:From:Date:From;
	b=rasgyfp8+xblESIB7dmrecGRZyseHrvF8Gy91edThCooyekQYqbkCjh9p1o+B5ERn
	 F+AFKR9w7l7rHnqVvULGOcjAnieukc0n1O+SHW7hyH0cGYGFcVKaoFi7OiW1dqof8F
	 TH/oBZ6zkOtV/8prHqAxIF78TTTCj2/EjUhjMFPkGdtJGOjahhXD0iQ57MteX1emRm
	 ayitiw7vabpbPd8vzR737Os1KV1/OyQakNWRjXkn7xgYCRf4lpftEN4s37SP/MJWNT
	 izs7PsgQUlO7YbBdStZt10e1sCq1ZiwAhRJkritIdf3+3MhSKddB9dPR2ngzqjoyP6
	 5q0cvH1UVEUIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC7EC55182
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178590483369.2504.10124968164968338406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57a1c24b1e59fda4df00e39c43c0162119c3e277233ce5ece3394d420f099219
Date: Wed, 05 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785904833
