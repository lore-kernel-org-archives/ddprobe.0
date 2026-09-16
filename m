Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE3F371CE0
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789525835; cv=none; b=Cnpw8MQAtCqzAnQSUgD/vtcOPlF+6tyn1kXlielFJNnjjtkyksgSVyS/g4Y0A4NR6F7LHzGMj48kk/pIaTERjfRq+UdEwZied6otAtqP4I2v5AoyYHBdSg3VLBu124O9fUGG42xJrd9qbE8GGBW5Hr9wlSDrmYQ32W8JoW2AzZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789525835; c=relaxed/simple;
	bh=v3v2V/6DT9p/rKR1McNxHSFvoEp2QKL25h2jFEh5I1c=;
	h=To:Subject:From:Message-Id:Date; b=tYG4TFXHRgEuZQs2wn4N8YdfNo3fq5PeNtBHJHQBpSx9/qyQLN+khMUrEGmdagRRi6kqSnQg+TAB9+MuhlX9+K2BPzNTVQ6RRT4ltSLMgBD3kpfhgBcSClTQwrB72G95I0KIa1A8paI0Lkv2dM+I0d1U0ofbUcRbOOS4k8dEkL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghprMC7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghprMC7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB00C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789525833;
	bh=v3v2V/6DT9p/rKR1McNxHSFvoEp2QKL25h2jFEh5I1c=;
	h=To:Subject:From:Date:From;
	b=ghprMC7/+72KR1HS0w16RBTHQMYOARWdI/4/E78HKDguS9LMjNj92C5OwFgZv+sDB
	 QZyjXVfqtDRi+ftCRsryMRcH0kANxwdy2UdSM2QiHDLIBr5ucJimtLDPwV0vek3zsj
	 4ORYdwJLd5oQ88jY/KGWik1YR6oM6pNJr8+gsnME1jDjc8iFUmr9+4pjRhowbrSAnN
	 LezI/kNi3skLvzbRJp/Xa8NLhaAXP7JU1TlWUfKLOuFd8TAt9hTnYYRprlocTZHam/
	 cKcU7eIOdLgnYrPTJIfgTa9ukT2LFAMrhtdfXRDmebaAIPGNXFZBEAls1MHZi5EE7H
	 ZuYBr7E0cVPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EB5C88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952583368.26067.4377295463351494540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948a2b251faea1983fd1f8de44ef61ba00a00da9d3f064e82cdd2a99fedfa7ac
Date: Wed, 16 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789525833
