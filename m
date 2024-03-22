Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94FF276F1E
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711134496; cv=none; b=lujquVwplHmdkJZPA9uYTW3g44yK8KJYwpvRZINT28UfiPmwTudkwCLvquqh526BPpZ9WdnsXfp2n9REVWiFgpcjTwk+rXRb0UE1r1ljsXfuAD65+AVnXevuiJExpSFwmSVflwjO80bnPs2/tVh9rp/rSTfMlpocvSf2Pp1MYV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711134496; c=relaxed/simple;
	bh=vXz8iEp2UoI3HcrSTk562ec48bkb59gzWkHBWkrIZN0=;
	h=To:Subject:From:Message-Id:Date; b=F1z49OmCjBbgky2lOINaH/q96nVdjNbXs0RGs4JDoaJnTplvsPmWZCUQJgPGLYc+my07AAXzWOjACYQPtuyoAHeQwzK8Mpo2WO+Dm+0rl/N3vCmkcExXmV732E60hyJCA+zHSW0OjASkPqDNTe/yxJYrXawT7Ny2X9vj7Fq5AS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eoisj3f7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eoisj3f7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D2EC433F1
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711134496;
	bh=vXz8iEp2UoI3HcrSTk562ec48bkb59gzWkHBWkrIZN0=;
	h=To:Subject:From:Date:From;
	b=Eoisj3f7Hko+MfdzLdtmjQqNvbxXkB6bI6c+2ousAKoUuvH6BKMmRnNXkaWvdGbyh
	 8qLQowZ/UFqc0/jTeT0ohxFlghBTOU5tZYptxwY1hLwnl8OYrpuvR8FnrL4EAWdZhX
	 RcdoJ1IJmZiWK5D/oARFmBea9T23HzYDfNJaLhzou8pm09VYfVVFLQfI6Acc6+wmuN
	 e3EqJ1frUkOBSLI14BjGnHA9EAFAnl5YvoVl1u8HDRyALKF1joo32HZl27B0S9d4mv
	 0WXjaQBJDjkeNFBsIX4C2rMmWSuGkxWGBMUknZeF8am7/Q1uf9gscvpUkxaxZegRCo
	 G7+nC30Bf/FpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6CCC47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171113449637.9851.11105242025259280603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92b95236d423db93437efb679c852bf10897046bb48f5c2f1ea11e53ffcb89b9
Date: Fri, 22 Mar 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711134496
