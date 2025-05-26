Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E69E1DFDB9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748250594; cv=none; b=pQ/8SlyqCTGOokc9pd6LXZWeJL6JxmxE+x/lurX1ohObT4UILH72M21w5FUb54/zMMmU+tzKQsix2jnNZ1ynPSoVMb3mOPpC1ESSFN3W52jc2Ka20263qk6eQLIOFIiLqNd7gpZFruZYwlB/YMYjIfOAYbhiv5o90DPduO6XfrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748250594; c=relaxed/simple;
	bh=2dJHy4XtxwHRXUbj1C+MpbIq0kZyVbTdWpKKPjmKaoo=;
	h=To:Subject:From:Message-Id:Date; b=kLJApPtn1gyi9eCq7c68XPKxhBRc50zPAHgCz4SbRURDLSGH7j/TMkvjwuWRT4cXCs/tW+pf+Mgcv/UVAXydoHOJqD/j0H7z4tXzhdSm+Ul/7p/IOUVaK+ooT/Uhjkp9Vq0/mihO9in3J7sVftL66HtRGsIkiporSzhta9jVhIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKHdA+pD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKHdA+pD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E03EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748250593;
	bh=2dJHy4XtxwHRXUbj1C+MpbIq0kZyVbTdWpKKPjmKaoo=;
	h=To:Subject:From:Date:From;
	b=BKHdA+pDhjQxb9oxf/VkwZtM418QVdYzuB9ofX+McMqUBRmWTsRQsPOm5o8COs1f5
	 AnqfC5ykyKSA7YgqoY1mqXxoJXvvR3He0NiE5bRqBW0fYgFS9tXVYvWcpZbw1ATGvn
	 GKeKPah8L9rVtQGa5W+2fBKLYg/BSHnB6RM+AkiJl85sTR3aE74JD7kZUwWrxSgTUL
	 GNtMc/U8xdzxp6Ngw4BdYSA1eudxfUcjzm6UO/sqWFWavhFGR4BBGs9ZJvAlYK0OEd
	 DZ6Q19MVwwjS8XQnPWLSO1bix4RqUq8tND0xcUxpY6hDkLUBTXf7T8EdQWC0oxrest
	 cLMooAOg1al3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEA1C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825059358.32672.10922472962482744845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8d5e2884df8d4e431a7482422d983826927900c5b9bd7d69e3d8cfd4a26d99
Date: Mon, 26 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748250593
