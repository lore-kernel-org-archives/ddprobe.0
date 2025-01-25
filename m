Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE0115D1
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737823554; cv=none; b=tqCw7q5/0TOHTSW93Z544+PIJHvOeVGme0C88OeTz656m6GIivR9MgATIvkR2CpY89mPHzxDbCzW/Ru/5Xtcq53mPCm/A4tQTp3wbnVfI9Ot8gEqZ/xYJA9tMOI3IgnPYYbhAEOTXcor7D++tEFmew4WA4bQK7mAAKrfYwqG7lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737823554; c=relaxed/simple;
	bh=vvScgjMkjhu6oXkXeDmLd0e6a2lyE8gK3P8unNGVBl0=;
	h=To:Subject:From:Message-Id:Date; b=V/SjnvaJ+R4IFQY1Vkgc1nSGRPRkydwi8MSvE9jZD5ryrzMn8D3Y6Yznd+0MEs3T/cyCyWL1Gcp6wSuptaEm10r9Hze2s9PCADwP2gOQzqhveEu9pgEZL8r636qEv4pqojARwi6yHpR8+BDuJUwHp7AVUdFcmqg0Gzn6Woth+Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awTo380I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awTo380I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB40AC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737823553;
	bh=vvScgjMkjhu6oXkXeDmLd0e6a2lyE8gK3P8unNGVBl0=;
	h=To:Subject:From:Date:From;
	b=awTo380IU+no0tJuWZonO2G9jxRKZDX+NsclyGGNBZtHU7Fyofm8IrPpks5WbWFyV
	 b/pAKx14WDDL+AJQXgpxAJNwifFcZXoKPV9h+qNgH8+27ogBqmB/4rYiGCl8re8pmK
	 7ye3hHQKA/uX0ZUXml5FecjrW0x0o975sYx3PWyelmzB0ed5PWtRt+vFPsZEmGDdgU
	 HVnQXbk1jqe8eQLHu/AakHdTEfS1I4WdWUljB2ciYNXUiGaofW9Lx3orNpgtIK8urD
	 C6K2Fnrl7/FqNMU7t6dcsrlEqSd9HrkMiFg6yD7l75e9x3ZfSDcUIEbClhoqO+ZkFV
	 bfWEXOOvjqitQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948E9C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782355358.14355.11436211357123494771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4950f81659bfb36c56bc64e52859528c489bd0fced67edf15dbffba88a1ebc64
Date: Sat, 25 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737823553
