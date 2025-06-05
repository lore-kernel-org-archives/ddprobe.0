Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554BE202C50
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749111594; cv=none; b=F+7Iy4QjM2SOxxw8OlNBUDP7LtbUYUGwWF5oFXcwu9ICzrMPBp92qkpWV7brODkgTse7nYdro5UYdD57iuSz+3K2A1akebpSdATpPFYasl7nnreJkEXJYVwQIXWyKmD+9XwwmkPqB01L9OoFkMUBM2CM/wG3lMaFxSqvg0Hubm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749111594; c=relaxed/simple;
	bh=7ShaOHPdZEHd30NfO4tX2btGcnFztRBe+JrV9nCBl10=;
	h=To:Subject:From:Message-Id:Date; b=QBzhMyXSWyXgN0O/M/09r0pTlgy1VEDu8pmcWLyD9jpleWmUPiRF+e6vGZGDVfko49mLe9nvMvmo7nKSfVzCWdOWd5ZMpK8ataYZGHzYuEjJHdjDZ5OE2NSErogo9Qk4rkRYJ6vXtd847fF3h+9EJiQ1c3CrSgBbB6pLqR2IRiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZdOX7X0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZdOX7X0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A415CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749111593;
	bh=7ShaOHPdZEHd30NfO4tX2btGcnFztRBe+JrV9nCBl10=;
	h=To:Subject:From:Date:From;
	b=ZdOX7X0If3loMZS8DcjIcuEmS06RxHokR6brWrzcXQJwUuR6Q5eoXQpcT4zGQg9vj
	 GvN9wzaUd06K0rqunDgGQE/uihIfIwwmgqiSx3RB+GixavxUyo+210ltZoyqZNMhv5
	 S7YJGAnBLzIldlNdOEWDWvD1RWmKL/DnFoS7Ct9rz5R1I52xmnxFW/TOrVi9gnSz0R
	 7c0KSNe29azyDRC6s4AmkSJUll1Cvjk2A1wFVVb4897Qp/+m4m5LJLb37bXghH2ZIK
	 VdUhg5MDiwTFlKIhMdRWsngo09/fv1PXzutGz2Bg8f37N25Jo3zJEgrvx9xDPSP0bI
	 RXKfdFZQktbWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92924C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174911159359.7870.17577818708165990524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba1bf41db8e7f400c2c774fc81c15b00a7b4b1113361759fcd791e31f60ff5c
Date: Thu, 05 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749111593
