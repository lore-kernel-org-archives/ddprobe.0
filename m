Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689D3331202
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787412634; cv=none; b=XDh03VqU7/e98KGQiN1jQFGUYgikZ5ty5oveAsVOCvGcYbozR1dFQnSemrZEELH0I4FPdaHzdIBme60pxT2Img+we7A6z0F8+n8D58BWAWyXNVf0T6cBdCPkAYkBUIc0bo02OZF8G9cRcDJ0owjsFMzbFv4lWdnDFX1TEih+5o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787412634; c=relaxed/simple;
	bh=+Ht17mU5F1lf1zxUoX39Aib+/Bs0C3h6Q/axW+yzq4E=;
	h=To:Subject:From:Message-Id:Date; b=l0rZEGruxjUTWrKxIcOkVsCSpR/P/WoUGqOfv8tXUmATnERocEe1OTJX5TUylb1ExrLk4SY6/+JnKLThMggNEBvXmKETRWjBkVfKEgFaeUKyuNjS4QknnYGkDTENIqdyPV43dPGNC8FrnZx/m2fbsYPWyW3LbhrMtVwK1Ufq7ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyQBLj3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyQBLj3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7D3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787412633;
	bh=+Ht17mU5F1lf1zxUoX39Aib+/Bs0C3h6Q/axW+yzq4E=;
	h=To:Subject:From:Date:From;
	b=fyQBLj3+rWpVTEmyym0X7N1/lVXfzpOJFKiuOrubGF3+bb28S3FOsBthtIDpFRZff
	 KXOyuFIJKCrwfUpTTLQyvWf0gxbdhuGzu4OalWg8hsAXwr3r3rerwz6JehT380aZ3e
	 ndyXKqXBc2y9MuN4kDjEJD15JqmUPRNLhFi/mVuQ18MRrhGiviKgAoUzGT0WWq0Rsn
	 IJvNWdh4R9ODWSYxbRuESrPhf5S2J2TYNFaX4zM2CEPHdsunSbKWor1DjyKvUGkOPM
	 uDHstBF+DEzOMhNXY3q3SfGaYJEbqTFfrrUwekj0M3PjA3BlIzAuWizZCrsYfRJiwJ
	 pX5tmMqGiG4sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0B0C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741263369.4122.15223754320390625681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7b4fdc4812327886fb575d613a51d6b41fe15e1376e0d428a7e060339f74f5
Date: Sat, 22 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787412633
