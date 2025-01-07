Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C27259C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736210154; cv=none; b=ozd/g2n15ywL33Y/91PLz02q3ytykclTodZ7fN6Lgxibcq7SYJKDzWkzDDuJknd6+mN/SmIXtHFsM9ingYIKvzg4rGn4dcAXpzdYqjAmi3gWsO24hMVRMiQRoW1WAYwh9Jh5t418beeRG1BH4hH1O70m1LojDKCjZkT+/A0F8EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736210154; c=relaxed/simple;
	bh=jVN+Xp3KpHU+up5KeDoum1BFfCkKvaH8rxdDXk2Cu1o=;
	h=To:Subject:From:Message-Id:Date; b=mRFIhQDqHLYixxSQ54kKVWAIzm1TwrDjaybVAUMd+4GAJ9Lnj4ijQ2iWMQhVydmwm9E2ijsaSO3eppBU59+t24tbVpgk/f6WhRqF//kI+ni7AlhXIt0UAwgC1pLG9wOlNW3lz6AcP0DqVFd9zu1ivjZF6QhdcV+Ep3psBZ+vlOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDBz7VOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDBz7VOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB13C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736210153;
	bh=jVN+Xp3KpHU+up5KeDoum1BFfCkKvaH8rxdDXk2Cu1o=;
	h=To:Subject:From:Date:From;
	b=QDBz7VOQN7ZGSvkh7GipdBKg7xazcW+Ijlmj0LyhdU7/YIqoK9Vkv2uW6+0OD+LXU
	 NPQLUUjkX21Ejt1Lrx4pqLGBqbbTnGNh0d9KABAJOpLz1s6I4dNoyt1YPuma7wUCKe
	 S4z2mGOt0Yt/DC8PnaJmXoWdz2nKa8t3No0Ww0PJl1D8gEeQMHLmv11RrH6eN86qbU
	 kFahsz6lb9SYsxoqVxhG+udAIPADF1JTdApecxkvu24YJzRvt/9H2F5ITAMLQR7kMM
	 ranVtCOnPtAgRGaTPY4BxnZZ4XRX8ai017m+efoGSbg9Y4keLtiRYY155ngg1I5IFo
	 M2YlPp/Zqwssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983A1E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621015358.32738.2492536242426089489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f018a510449bd532789a090d51c2cd9e3284feffe2db0124662ff38686c78349
Date: Tue, 07 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736210153
