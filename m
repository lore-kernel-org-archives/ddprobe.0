Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FE017C7B1
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732617954; cv=none; b=A6Dc5v7J35TW3GIA5c7uZiR2ionJRmkSO3ae3jvl4oCLbkzueJvtqiuwz/scLS2X3YBVMZJWJfCpvVdS0XH+kGy6rPRmrfzLOgccIdlORCxUfQZy8HSocqu8MRSRRPF0mYUufbeKaYHZigjPrdQj8IqxHBspkNI+x0Y6/lSzuW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732617954; c=relaxed/simple;
	bh=+lKz+JfR07OjR2hb+3RDubUeBuD+GVZzVjUnF6ny/KE=;
	h=To:Subject:From:Message-Id:Date; b=jMqnmEImBw0om7/A5iXMVXDwcBoptETFslBSF5lVT8r6SWEBNVYzPVUoV21qM7PyMwxbEMgFX+yJQJXAUBTHiQ0UzdjdaXwjxtYmGcsoP6zRQBeEnJtF86sMFCYbSqr9zbYr1pr3Q0cw5S5lFq+m+8mxrU9wQrl/UQkYT6GmZck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kx50e+UI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kx50e+UI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9287C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732617953;
	bh=+lKz+JfR07OjR2hb+3RDubUeBuD+GVZzVjUnF6ny/KE=;
	h=To:Subject:From:Date:From;
	b=Kx50e+UI5Mv6oMkx0h0bo+oMwkHwpqc49ZdL37yOC7pdedKeA1FPFjy48kpxWjXOV
	 UVlYSlhvEpRk/a08F4hb3F4n4puY5uvFsYe+hwQZas1VjNcqckl+++Z4QvxoqlHE/l
	 urH9Jn4OQoebHR8qnKc3fCC4MAouVYdK5W2jEyHOaoCg8mdTSryaKyPsB7AcPI4nBY
	 7YEQXbWHW2vKsNWbjzeVunookE4zQ7JVF4rHCQh0p4xYN7Z/vM8FIADMCfDGYPn22f
	 qk3drLYqNECxAUSBGKA0XLSeZ2TX/JaKMmAAZQz/43S6puUyI5thGVCgfcRQqDEpJN
	 6tU5Ix7Sui4kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A7DD59D90
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173261795359.9000.17344159730089962983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d39a0451830df5c1e707a00d6c3dec4758f0a48fbcbd0dffceee2c8448f1a5
Date: Tue, 26 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732617953
