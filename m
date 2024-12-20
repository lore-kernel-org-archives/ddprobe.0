Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E0B218E85
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734707754; cv=none; b=KIIPRj/PSVFAk+oIgKCZnVzbsw2N5EHXqdV67EfExxQveYu9WtwPQRWa8U/iUWLc8zKQC9rE6hit+pfF7No9BLVDM1n2itgTMOCM+HYbA8VNFZGiLmlhsoSfTraaqVZqMeg2HsxmVLKWDVrncYJtqfTqqNIbXPynA9iDEfbdrFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734707754; c=relaxed/simple;
	bh=E/ZZ1Yw1I7ReyMb1IaqB112Of3SkFwJgAmkcBKsxsTI=;
	h=To:Subject:From:Message-Id:Date; b=NDkgbSIm6aVQBMHbLmVFsq0bC4mMhrRm5kGophOqpEsQ5xx8nNF0BEB0sV78qUH9cEIJHem5RBugLmNpiNXVAPZMcmanV2o+pVzcigHvdS01icSIGc3Ypv069iqeK5kWLJxjJiMu/7t7s09NNwu6Eid1mQLH5VPtrQlS5IZO5Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCKr2m6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCKr2m6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AAAC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734707753;
	bh=E/ZZ1Yw1I7ReyMb1IaqB112Of3SkFwJgAmkcBKsxsTI=;
	h=To:Subject:From:Date:From;
	b=LCKr2m6B/mdWwga3qhNBc1qlyxoMaXCiP1saH4Y5VRI7qq3BsDype9ILFIJS4YtV3
	 kTFIiLCx3BNQk7CTROmAlPtWw0WybQ+N/qqJnRfZos2aT3ZqcH7j/YXrxSgOcexkv2
	 KO/NlPv9daOJfCkOzWIqux7q+hhernZv3UpQxdLo8DJImFfeIlYdXgC/gd6P+4XGEd
	 WA2gHYFc7K2p+whX5WZ4jXYmVBiI7r9mlGGo5JyKOdk5/nkJ7HgeyzQpyBHlGtNFXZ
	 xvQu9w5A4ZNcOxTg5+m4N3y0vMz6PjkhzxpCX4lAKj4GqlCesnKjdV+FUoXvnQSbyS
	 lYJCIa1okeE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EF4E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173470775359.20526.17187129386568130392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c429e5e5a4d247667f793e14d2175960f700c1e2f85079c9689608dbfecdfca6
Date: Fri, 20 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734707753
