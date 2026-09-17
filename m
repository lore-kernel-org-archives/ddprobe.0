Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6034430DD05
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789621834; cv=none; b=QE4jt7PA1MPIFlGLb4fMbPATgfDWQaBM10K+2Y+S8Xk1qVg0sucLV0VdmN/s1MOaXQOl4jzB76rT1oc9ivsqAMeVoAwsOod1ZPJs+X39rHmlOM7XrddHhVC4RyUXsqX7ZvHxU/lxBV7zgYtsi7d+rJYtBO1RrxfOfpSfZbyx5cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789621834; c=relaxed/simple;
	bh=ihvdKkMvesQhDYIgEpuHXKxj5sW3ytUNBxMtg1VfPO4=;
	h=To:Subject:From:Message-Id:Date; b=H6KACF1KVjiJJ1+kKfOdH0Zyc2tBPB2gjNB81zAfwkLiDaadHC5vtuzP3rCGZt0RJ6aVy9YVPcxYDneJ0xifYaHH+0yuPbriNEj8gCvx5kzbqhoC098VfCpa/tNCGwW8iMONiqtOVloHsIgyHXDe8UcBg+nl25C4Ez6XCISW9Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=He3ZRHeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="He3ZRHeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77ABC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789621833;
	bh=ihvdKkMvesQhDYIgEpuHXKxj5sW3ytUNBxMtg1VfPO4=;
	h=To:Subject:From:Date:From;
	b=He3ZRHeohl+jsYPktXi3tuawAl2O9TIauQmO7UHkYPoA2Uggzs82KNUNb/v5Q3IYf
	 TklgYcVH5AheozXoB8mJeW7hLGVQ/KWpbUUrVFJv+rl+5IjXkvNGT7JDu0i4GON06x
	 B5U3E4+VCKLN3G657edhPwHr9wCuxTAutbgUr7iGpvdxeyP+WQ11uoI5kZO9LfM+bT
	 I1oQyJyYGKHGmWpR3mBR5/ZH9tD0oGzWi9UGTgbIb5Sg6UPOC4NjLxwbvai/yE7jV5
	 b1ggHlYikCUFqhqljf57qtKBE2+nkOayW0nHNVl/x721YaEmNqhHyeJgaR0RPnM4RZ
	 Rz5OkWOacqvDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25A9C982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962183370.26999.8701888588133429923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7f584a12a402972a18aa8923c6949c71fe8fdce4307d810b3b5ec4b4059880
Date: Thu, 17 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789621833
