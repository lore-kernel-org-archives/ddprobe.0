Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308121F0E20
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734119754; cv=none; b=sJAa4/6U3kmOKSzG61hImMScs2dAqDCWpLT/pLTgd27uT9UmEOSgOWbyP2HG5Zsf3ELf8DeFACs5wBAYInTp5yJU+Opi9/ubGmI4SwBnG/5zeVkqEpNLbgPVuYa3bQ9yG3kzIpf+y7Mr2hZMhrsoEihd/4NwzIADGFUjU3DKd98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734119754; c=relaxed/simple;
	bh=6x1ARmxI7JiQCHO2u5daGWt/0j6f3ZramFNRnVkdRSE=;
	h=To:Subject:From:Message-Id:Date; b=jUDhosmdfZC5kEuqVfeuQTSBpuavT54SLLO7VpTd++TsbEsP6jjJmUoD0zMIgdkVvYFc7x1Y1bO9YeX4hU4DB9kcux/ipJQXeh79mPimVsZr0mneMivoOuz6lj4weKAxDJAwqbgAHsRqJu0nm+gBbSCA7BNFPGSxgnJlszZpKxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4NBUWdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4NBUWdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB23C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734119753;
	bh=6x1ARmxI7JiQCHO2u5daGWt/0j6f3ZramFNRnVkdRSE=;
	h=To:Subject:From:Date:From;
	b=C4NBUWdCb+UOBmvsmsOHZkaAyPx1i8kZOt3AZtruElLNL6fnUygb4lYzCbGXuYwFs
	 ShMCHOQ5CF7ilAlyoQekE2hsQigYs/vTdPgDrP4VV6KkzB7lfFiVGxuXbrY6CzyOzA
	 WSGvKsPtdb5HKVt4qYU4ISTT0w/nV3tr1yy9ANAu2U3x8V15XGfLdEPQU83sUjEPsA
	 LsJLZe8HtJsx5pjyVEgWcRqzeiW/GtobqVeWXN4w0FofymYFykamz56hwOWzC+0+AE
	 t0OMv4dgW95cXq0fNK3XopJw6hnhVEIfjMoVDENbF0ZQnaNeEWZ4WD6wf7Po6szhsi
	 j4ZkqddlWLKUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F2CE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173411975362.5615.4625243547733991994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3229e20b725deb0c3a7f4aef0ccb5b09a7076f1a1dfb2a7b4ac3021d6b18b7d5
Date: Fri, 13 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734119753
