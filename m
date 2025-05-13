Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EED7B672
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747174194; cv=none; b=elVOEs4EvRI1tnRYW76IyVmxH/dGFTRmu9IWeWSH30ULNic5+aQjkxJqXdLvnXRjRF3B56sRhesrnHKwjEmh8249RVqaV67Btgl1OL66wMi2eBHU01/owJTTy6aGRdzMAden+rhHDltV7kHN7yxofgmj5hMWEPbn2NGNTofyULY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747174194; c=relaxed/simple;
	bh=hw7kom6sjnpW0iSmclA8GIBwglWIlUqYrV/+vbhN1GI=;
	h=To:Subject:From:Message-Id:Date; b=I5ZwwqCyfDlbx3aeQsN1E55/LVkmedk5WupvfdjaCB0/J2WaIbCZX+k9FIBZxsRGiIPbmTBk8N21CiNfBXU9P2XUdffd5Uki0dT7gnNhBgjSt/A2caYRJRJRyFEOZ13tpMXReFfqr8mtRJU1qeKZ78G/0sdyvIS0elSFpJI2akg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2v1qH4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2v1qH4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F097C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747174193;
	bh=hw7kom6sjnpW0iSmclA8GIBwglWIlUqYrV/+vbhN1GI=;
	h=To:Subject:From:Date:From;
	b=k2v1qH4ZcG8v0dUN1qDoG8OhYEM8xbWYqWg1h4KDHkY8yYB8Yakud85fdGQ8B+t3E
	 z0ALkN6S1BXOr/8UlaW0NzQVTj/SF2PJJUZHo7b+zWhluiJFF0ByDewOObIBBLbvMl
	 wDV60wD+u0PjR/4iuaE4njxHL/+OJQ19GqkrTwXSCs1uis71DtFtfta0I+UN97kcdH
	 scLqqLbsz301IeFjkXtMMkVxaOBTJ5BPE5rvNtnbq/HOQwbk+AsRZK7CPQJ2/C31sQ
	 KxsDjQwZd+TJU6qYB4+PkS18zY2dGPVGThD+CYxlrN9Ui/y506X+7b9860MNTbWoFI
	 cyclMx08xh4tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC7AC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717419357.8102.9379548503240441265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 661b70256b209b12aa0fadf7ee5f15d3524ef88b07ea7fae6e87a9dde5c4b542
Date: Tue, 13 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747174193
