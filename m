Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480E515E86
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715359943; cv=none; b=nN/tKKbkeMDkQpBCN5FwOqwsupy1dWBvyPaJQVc5ZP+y7scC2RWXtjpKW/THweWqv2rZkFBQFTA5U09ut/JrUlNkCuvrRkePEnjTE+U0yEYCwxPuBjwoONwgoLTbY4EC0UFhTu+Ha70NKV2ftTsYjeuqCSpRFxjETyvePakGfsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715359943; c=relaxed/simple;
	bh=YiczAEO3b3LDhtT97+eUxfaqqfAb8DQGdtQjulww/jU=;
	h=To:Subject:From:Message-Id:Date; b=kPYTmmmv2rs7Z/O+mb2mMECd+jmtbl2YU1UnpePJ6VbqF1EOUq0VYhTIH/0etgf1mrj1bvdfqJIpFAskMcjqbOlB0v+/sBuNa4NZw7ifAThF5wUiPDjF5hBmT/OdFAsY089dtkjnkiQgnaL1N0K6N4VG8QmE2LE1IBXZMjPAdmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5yjBeVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5yjBeVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6EFC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715359942;
	bh=YiczAEO3b3LDhtT97+eUxfaqqfAb8DQGdtQjulww/jU=;
	h=To:Subject:From:Date:From;
	b=M5yjBeVaz2KCbfglsKOKPHoYUM7eyALMhZKsKGUkGFIH++H78a6yS4ohXk5GchErq
	 0M6T3An8QUX0ypx1ir0VODp7Q6KYXeQd3Hq/go3iJQ5JBatL/Cl3NK0Mfg3vGhUwFF
	 8fskOlfMTxkyFmWSkqaliUFhUJbR/hUii0JNbJrUc+laXWhD47Q+QenvKp8wA2QHDz
	 AwpROjDInMy+OVg9dVSXc51HISXKL5cN3kKikwQmqfJTVQBCZWAD8sAbNAwksJxxhg
	 4PaKG1m6JbmMgQGNiYdR4oU1X/xcEGWqcmU6ikflhHz1k5o7qRo6BSF7VykRYtbRHR
	 BD2bzu2sKiHYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4081C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535994276.10499.14859346181539131272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6e93116ecfa885a17f5379c2742ca94af0ff3aa03641e27ffab1d0eca66e59
Date: Fri, 10 May 2024 16:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715359942
