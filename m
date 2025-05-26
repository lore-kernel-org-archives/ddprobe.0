Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F99D7E110
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748270995; cv=none; b=o4cFqt4w0OrY69TJ4LrPymFjW4ropmrl+sjX8oN/5lxqpuU9HybIw/w0Rv9qzJu+0UACQ+ThJsS7s2NTnEf6PhVow9B71rIRy3MXe8yuzokrvkDB8UV9vPOel4OjZ3OqQk4gsjWHfHpYYisRavuhYSOa4MFOecFip0PQBiHNYg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748270995; c=relaxed/simple;
	bh=ckpQILVZbgltWyhnspb9jbHcVVPhitYCJh2TYVyiHfI=;
	h=To:Subject:From:Message-Id:Date; b=czW0o/JvIdPbD+QVWt/pIlUv4kj10iBaYXuqf5U2a1Hxkrcbv8JFirLNucgtuVdcyyM0LohvNwe8KKR8iwxjQBqjDhPrTjWEvdLoHtbGZ2aOoE9Wj4+5jvl/btmg+SvYKSYRLXrTFoiAIVjtLKQERDXPkZVM0vEPyROXG8xwaeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzJglJ/c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzJglJ/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2504C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748270993;
	bh=ckpQILVZbgltWyhnspb9jbHcVVPhitYCJh2TYVyiHfI=;
	h=To:Subject:From:Date:From;
	b=qzJglJ/czCpU7QdPubcNQ99ODhsPKciOKm7o5BmzLayh0kGdOUte9OSBZFnDHRx71
	 73hVZoDliasS7FOvf1L+pN57jB49imGjYqGnqI+zh0tY7ouhI42v7jAxYpWF83nALn
	 GxwtSeMttNfQ2UED9yboxOL1nbGKK1DMVpPHUEsiBvSanD8d1WF0hy3DK2T9dTgedD
	 g7nJ5blK8hO6lgGk6nS2OmcKszWfgeG8cwQ8htLoL5yiGeWnnukjMcUCldAUi9J8G9
	 /3TiiMv7hRjR/z5XLVnNfjfik99UWhif1hKJkCr0LDE63ruvbvtDAoQfVj1NFG/nAR
	 jZzM81sRenTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF65C54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827099358.24787.12170808771051495041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53953ebd71cbaf702292901896571ba96ebb9ae54841a43844ad52a16681a4e1
Date: Mon, 26 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748270993
