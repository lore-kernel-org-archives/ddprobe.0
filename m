Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E31D2FE05C
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790432434; cv=none; b=ZMSO+2SCak3K3suWBk/gxFvAn/R9S3hH8vvbLC8zzdEsi+h2ZXpp+CseXYGGubOtPKN6qRY35C7VK/QMxFIkDHxsTc9FMdE0PmUoOkL/yaT9TbkQqbClBDBEOzbhUJC+mq5rh1cbkj4oayknaQdNE1ZjoifjE6DhX28J4cYkr1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790432434; c=relaxed/simple;
	bh=J8j3kv4SBNTbbyMMfv3qnRJ0qaXLns5+5HCCbcVMeAI=;
	h=To:Subject:From:Message-Id:Date; b=jCnYb4ChdxDOhUBu8u+BIFbj2pk8F7cebmIzqTWKPB8UB8DXh+eGnbKlKhGBtrVFwcFc1kC5FzeBgx6IdBqOgkyQsinhTMDBtYItEOnClnldA25hDUV790XvL7g5ayUz61BJMB8zDICINiWE0NxaZe23sTnHXYd3XrSZHxao9L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=czgGM1MB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czgGM1MB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD560C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790432433;
	bh=J8j3kv4SBNTbbyMMfv3qnRJ0qaXLns5+5HCCbcVMeAI=;
	h=To:Subject:From:Date:From;
	b=czgGM1MBB9XOopnsjqoNd1C2wvsBPuAw3y/ntUqmcQotLb8yuxeZn1cYLdDFx1Ldd
	 FXJPZB+7QIyAU7opCHLBdH+bDGGtTmv8RemZ00mN/r8qAQigvgyQOkdSFkDfmePbW3
	 Nq46E3L3jEXUKb+yWpG7m39dZHypfwGzgPfHmiMI9B8c4P2Wa9AH4c2oabC9O9I7Zc
	 iB7xVp7G3ZJTAojwCmHBSCY22gwaF6J3d9yNvkJ646hsQLX9gLsOTApds27uUEB5RG
	 JizllvyqTjuKaY+KH0aEuvBgqM9Jamrs/R3QMJ0FSqd2kPHVRs/rXUwJl/n+B80bS7
	 be8byE/VFCtQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC6DC98332
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043243369.9650.11002188213176085531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf26d118459cee3d5c6ff20118437eae3de3e1e408d01472f1f19e514973674
Date: Sat, 26 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790432433
