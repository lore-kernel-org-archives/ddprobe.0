Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD911EB39
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752934194; cv=none; b=k89DV4C+ACfmHwi7n8+dFKt3gbz3qiZv399bcOU2lSMhHF+6tictdRw5YT5vRPx5pxSzotr5ZHJ+c0v6B8k+xe6ZlD0lYLAGWWVEm6nYj69jQlctLSgAODdCkbDm9hFhG0rwocwrH1B7AQRquB8BuuEMb/Cf3s1s3n/SJG+Qgoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752934194; c=relaxed/simple;
	bh=z69vauGcneiQwgk59JNNTy23LGhCOinwwUVkSZQfQtQ=;
	h=To:Subject:From:Message-Id:Date; b=oRcSub4Ha6ZtNdaX3ZyroYs+O43ohHEuu9Lsz3sHjwFLjcRDg+zeNjj9ble3tur6J2JcmVsG+cCSEbxJKlZKnzeiMjbKorHOaDF2WtgFiun4MWUgpXzgHkNPd8RkdlAt8Y0pHHCeb1WHZZ/LIWiFNKA41lh6xxnPt4KvysuCXpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPOrccwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPOrccwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D00C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752934193;
	bh=z69vauGcneiQwgk59JNNTy23LGhCOinwwUVkSZQfQtQ=;
	h=To:Subject:From:Date:From;
	b=ZPOrccwmskNOwb+bwGGSxra7y19XFIe/MC/5YF8zPusvVTxhB9zTkbqiZ4HXODI9d
	 EpEkOThAj76ApuOeid9e5KPEcdzuWF7yo/VCfMix+AG5i1oNli2u7ItDQnmA6Ru8/Z
	 z9PH3qmqy47H8SJ3a/h52RpuWU8lg54uWaq7qiAmvgdona1WFcURyk/HnSxAklb+an
	 f9mu7fn4RXsJZZ2YhLqIt/t45LByWxnYJnQs7XVKG2WF4370AMGEhFs1WcBcmz3QpM
	 Za5fcyIRZNnkhfpum6g1Kqp7kEhgVrOtE/L4JP35aKb7IEDbTvq/awBJYcHX8KQiZB
	 WYeOOQY9rwlXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95356C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175293419358.24866.8179625421492335148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20ad8e0ec3825c9363d16359670d75ebc2e723cc81665b95b1bc76960d21b3a
Date: Sat, 19 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752934193
