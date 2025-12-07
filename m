Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B7521858D
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765114974; cv=none; b=tk7nQ7rENfTjtOXCG1Oe4XStw5iFmH9+UFxDAFnela3memRgebg2ekOcUq3mnm7ove/+C6Xaftzhs6K5Ym+vCOFC677ZFVYOGEF10hj7vYBD4xMG27dRJOwNjcyCk6m10osS849/wfNJNEzoEVvBJDvIuHrnvxk65ho4aQvGogg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765114974; c=relaxed/simple;
	bh=X8xHJvnQfFomH4YtKh3ecjYmFEwmbjr74D83/AUO1e8=;
	h=To:Subject:From:Message-Id:Date; b=RNz431t2Zr6b+isrm1gdEmufx28pqW77rwxJ7LzAVg1wpnqe5fU0cB0/sW0k5uFSB7+632FQyqjMGOqtKVRT18n4irtlSJmFcVl5LGW+sukSILxLMMnn1fnX/7nEHL4KW8/0ojAy4+levuGOazsucoK6i4b2N6lu+ZzF5CXhsiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEC/8peb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEC/8peb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A806FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765114973;
	bh=X8xHJvnQfFomH4YtKh3ecjYmFEwmbjr74D83/AUO1e8=;
	h=To:Subject:From:Date:From;
	b=nEC/8pebYOyWtI00VEqK85J9oq8X/lsr7FREOTB76RdPRXsKRZp5XPwV+ipOatMjz
	 2TYbTuaHz2/51H1x19wJLqkLZm2Wu4XgCkTjBV5AT1NW5VWVm85zlaqRDkSkuuXxOh
	 DcXE2EArzsE87R4wYRw1rbl4eAXwYq+NDo6a3jtwUyNl34R6tlQHSz+M5BGVl+IPV5
	 f4vnDN2HGHs41+CdQogtVIjYQSeNa9L+ES73Dm7hrKu7FN69nbqidmOdeF1ZuXqlAc
	 Na64AIYX5R6H95gUYu0YuSLBN2Q+ziGq9bnOvyOLe0f3hel9RjOm/Dr5p+BIc8Dvae
	 IG06NBpmCIUWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96406D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511497359.25106.2675113982972911233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2c6a974a6856467146de70a177f9f451e58c8c91460f73e706432f9420ad45
Date: Sun, 07 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765114973
