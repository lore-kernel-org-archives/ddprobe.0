Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EA6263F44
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777540054; cv=none; b=FroGY5ZgloR+9GBvmaGOZpcduf16grsVU+wSGyrzHlsvnXCyp6KbOM+9MJIo2fIQT69opk16lfIauZvoalZfIO7ilFklu6nNGprfQ+QnyuFieL39gRu9cKy6lrXqFDA+YX7SQknT3dlN5XTnJEv3ztg5ycy6pV+b9dgUFFieMgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777540054; c=relaxed/simple;
	bh=kCcCKJUlXcROjN17Maio/ilGUiEcLB4dyRw6b6YaW6U=;
	h=To:Subject:From:Message-Id:Date; b=HrPTzEBp4BPjYhBj8G1+zkof22jUrYMi9W7s85fh64egEkM60Ifx5VSVecZv4z5HjFK+tRDxcovhYLxmkgaAltUwikybQeKLcG1+6kZ9lOD5vGXuYmCpq8YA5aNM/0nMR+izwdVoitgECd/21GRwC6a9Xz6bccrwdB0xx1m1cGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1edK94f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1edK94f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF7AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777540053;
	bh=kCcCKJUlXcROjN17Maio/ilGUiEcLB4dyRw6b6YaW6U=;
	h=To:Subject:From:Date:From;
	b=L1edK94f0Vzi+EQ36BZ6x8xkKm+cYqfM44LU7LUKHceZxLlPdPBIVNutZeu8uXDG1
	 /LFEDvXUkdYsxTLQXPZaAz8+838cbS7h/408/vo1qaFvLYt4HS+z2Zf6gsCyFj9Ruu
	 uCo39i6b28IHM8IRklzXPZsWon2xCACi8sQyaT0c6CWrEq9udDbkt6T6xXUK4xaqoB
	 XzwUMhyZzibyH3mbEQLuVhr5ktNZo+C1lVgE3UU31ALy6pFX2kTWoFQwbrvlvKa/z8
	 EIUavPGzG42eJKeTmw8g6f1i4xEjYhr8TIVVDpya82CwD2U06zjZbOef/JSCmAri2v
	 jAXMFVuNlcR4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F0FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754005368.3862.10268658087251848577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61958b141254057dc656bff2c569173624ecaab14dfe65936a1059de974d908f
Date: Thu, 30 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777540053
