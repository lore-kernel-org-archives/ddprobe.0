Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB6615ECCC
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764483174; cv=none; b=uznaU4qjRlqDRBo8Dvz9y87IxJhEOmrIBhEMk1eNCQ/gD5a/ZhXV55FOna9JHRqYpScOYNFNdyephORaQM4q4x9Jj7tzyRPosUUb6tuKn8PPoFuZxNxu0jCqKeImZArTLwjyuG9/OAl29hXEWGzdbgyiSziYBNAaVg0vGTiXSG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764483174; c=relaxed/simple;
	bh=xlvcqzwVV3PiAARclnoPMfLwlRM8MElNbdj65BbfC+s=;
	h=To:Subject:From:Message-Id:Date; b=eD4XVg78d+ogNUsITJifBOfLeZqp0tFGnfUyPRQjE/u7/qCTe0CgSyj17O2muAX8xXNcPrFDUCaY6gGKWcHe+GjJ8Rp3qDsjYvtPqkYYLMUmNCWE2CftvEk4BbBpAEYuFSmzjHbeKhDDl1tQSqBjQEAb84G3ocHZkCU2dJTExlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/O9cC7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/O9cC7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A986FC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764483173;
	bh=xlvcqzwVV3PiAARclnoPMfLwlRM8MElNbdj65BbfC+s=;
	h=To:Subject:From:Date:From;
	b=n/O9cC7K6KQQ4dDDAylxf14OagTG6fB8BqV9WCYJXRFHZs2+Hq07l2ZjGRKaGHYT8
	 kvmEuq0EldBSleEcLVGHpCwv3pQSj35HrJ903atqzo/Ww3wq+fdUEo/Cjsvcwbm2Ya
	 UBTrTT1lTVintUJPDyx0fLQPP02DnKPyCSAJh9/Oe9hMIBvLNtovD0ZBPfOC0frwP0
	 31GS8m4mWa6l07WZFbbDrfe9KHNHdNQ1pm364JMahPl+I3yNGPZ2mEbpswng+isTLK
	 uqc/BzmaCjfuyhoeMlEdQtHFM3/jZtg693o5nsesPtrlYRS3l6WXyeLJu176ETyxtI
	 wVFM4KFOIeCoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94828CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448317358.7535.4081863852765027592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33029f6efd628bfc86e65db313e948b6a2e03314c863120d6eb2df7b5519c98
Date: Sun, 30 Nov 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764483173
