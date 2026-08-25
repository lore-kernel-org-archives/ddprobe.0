Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7DBDF59
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787616634; cv=none; b=pAPQYbyP1ueflnc7+7P2bsRaMQdojTAREwk6iNNXqKjqF56AJTg+WvpsT11auPg1lDywVPKLMbUF1lZ3NkK7OBjROULzG8dXGixhI2n5R1FVTUDA2VFCNvn0mlmR4F2hqPLsq2aOzkmgw6I34hhgonGa7pQfGmTtcrCQ0ckqMEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787616634; c=relaxed/simple;
	bh=lrDrlErEs02quPclEzTZueIh+t2+lbMY6JOr0IdbZM8=;
	h=To:Subject:From:Message-Id:Date; b=FPEglZLiuhPKDFwnD0f1Pxd0VphcnKL8mbiAT4PqoW7dEDRjAWypk6/oJKZ2JeaUK5yBjhdF+vjSDc1NFjddCLdQR/jh5dG91FMxEQB5dXmAA36dakijLfoZEvfzy2qTISNzrLWYFAGLEgh+CbGndZ7ZJu9A5kViduABOx8nq9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeLpeLmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeLpeLmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE10C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787616633;
	bh=lrDrlErEs02quPclEzTZueIh+t2+lbMY6JOr0IdbZM8=;
	h=To:Subject:From:Date:From;
	b=aeLpeLmCA7yIXZS2SSwH8CebmlQnuoSrxP/dJS4IbsBU1UWBDGY494mjUmLRyBmny
	 DQp913ZV8oYZDqFdWbb/JVYtEEjqVhSdKnWWstl6HJz/a472qD36xgCB1LLHvRwguA
	 K+c0/TUM4jGCZoXlPFuXiwZ3/aNBOEFQ5ho4AC6gAcvypFSo/L97IrxlA2F9bLs49X
	 t6pPd285EHpRCkpUY5jDKg16LClgfNLKTE4zZwoskGhjhmCesjroMh5JtrFzKH4qKM
	 Bf3i7WnkpvUA31Ay5SWpw91nDHMSziSc6vxZHvcxhed4dm6fcDI7+Y9ikaL9E2WP2w
	 MijqbD9+72X9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA34C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761663368.23618.16021390824732456823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5f70584e28153d84906f2ee2916abe53369a77123899d658ccf96856a85d86
Date: Tue, 25 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787616633
