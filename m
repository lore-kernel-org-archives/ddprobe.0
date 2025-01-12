Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6254FBA3F
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736671554; cv=none; b=gj/5a3KFvUj69Ng8uzo1JL5TxmA3i9jwOllTsFG29QIF8aogxuQKz6DUAzH20NznKDj9MmH8vJWU7N989Ox69gMicVACNv2lrdj0/Sey8BA8SDiILgUe9KkB6FnIE2duE9+nXsFnpu7zm+Rl+fz8QgDiR6G5ikjUVoWSny0RW9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736671554; c=relaxed/simple;
	bh=CrR3UG2Q2kIqtXRTq89gzKJqAYajg0K7hdTLn61MwPg=;
	h=To:Subject:From:Message-Id:Date; b=rzswL0z2u2lXkHP337h6/P2cnfsWgD0NNoXr3Y1dad8+5l9Bns0WaoUhjWCiwHT643X4eGLTGIFyINOL1S5oeIqhTdWsCG2J5UeJAXvliXbWmOp4LEsWicovla+I3Kk9FFbI0Uv2dbfsOUaDdTE8b0kb2PfQ2ZI68hcxgaTY0oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvYkz+Dm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvYkz+Dm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D3BC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736671553;
	bh=CrR3UG2Q2kIqtXRTq89gzKJqAYajg0K7hdTLn61MwPg=;
	h=To:Subject:From:Date:From;
	b=mvYkz+Dm5PK9ZIt+mQEW1feSve7ZL5F5YwoBAXVjgXdDbf/DS7EDJC1Ip3dd8WtQm
	 vzNSOOw51Wu8m1katre41Zw3wZXASjLzAjjsHVWgTyzYaBaHop2llMG7hGtmtVVgb+
	 ZBzIC3v8pa3qOI+u+pVtoX5+/q4hRVkMVEeCHNMKYTb/hTV93xnfqpn6tvUlkfejxW
	 uvWvtQX9K1N1dmthxqsh6KLLlM6+UmZl5iuqtkxObdgGMBKkGWN4tqT6LZZpSspw3v
	 +GuZ6FVsEnPe8E+x5oSnRL0j1Bpv3BM/+5KEYuq9IKtirH62Ef0piNFhdpH1Sdk4/V
	 wzCKfyGQ0gu/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0FE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173667155360.30364.8673557725697539198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e70c816e43a92ef059cb8d12f5354468d14ef787ba74fb4a0b785a115e1c97c
Date: Sun, 12 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736671553
