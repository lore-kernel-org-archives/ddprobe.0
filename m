Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8531D30EF69
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761577194; cv=none; b=q/Q0jJkqnwjI6yccWurrnmUUpTi+NG/nFoMsdMfYzpdf7hUnAwXduyRw7+GbbN9hwuGPYwRBRjVMynMqtURHktgk04X8752yi/lXEhrAwV0iiL8OWFYHuBtros9nflpxtIbIpOoKVcx3sCD6K4VjX2x5uRUOuz3PARiJ7QZ9aF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761577194; c=relaxed/simple;
	bh=bEio8O+SXokVMO58IKom8Z9FeOYqczR7Er4rKJuvTrk=;
	h=To:Subject:From:Message-Id:Date; b=qhKUjc1hKaRfO5yvnsJ3q09P8eC6rATy/RWZxGvLfj3Rt0QzOZ3VWfCtAE+ZmcnMdSlsIrTt+EjYf36Un6qoDa/0NRhXRveARSxwKcNe4GvuzRxu5Sk4GABQANZZx0B6ZA1Khq40eSMFrk2TdwKbEENAx2hVreo3CsgcRusdzdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBPceLh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBPceLh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE4BC2BC87
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761577193;
	bh=bEio8O+SXokVMO58IKom8Z9FeOYqczR7Er4rKJuvTrk=;
	h=To:Subject:From:Date:From;
	b=kBPceLh7bBUbXy8yeq/pEHmwR3qPW7PZrpaYG+duyaqHlDtPX+yOe6BZf5T+GD1mb
	 yRnawtGLO/5979ynbPKIxUuxDWppuLHTwHqUIgRJbdEmvfVcGabP33voaKtgtyC6jC
	 oooq00Z/YhUYUkN9WDYaXaZ0xSwVvPO/3fT2tQGn9kCiqlu3eJPqi8nVW24gWxM0Qk
	 D8/zZhwSSRI8HUnZwty4fARWIr3Xq3g6LKgptxgPWSPYIfQdty4K+lp+La5czRb1NJ
	 vtq3jKJY/i1YgovTbn+xUWSalROHfuKpTg2pd6xpeVbAvTt6302mRWV8OYKaMRvIMp
	 veBzUsFK0rQoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E2CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157719361.23881.7095417130952404746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5f2db91f35c034fa104f3f352c4935cbfecc0e46df76f5b6673640e596f11c
Date: Mon, 27 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761577193
