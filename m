Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABD8405C30
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778970034; cv=none; b=LsyO1YC4SP1Ocz3LJFsgn+zdaehliFa07NFA77Xoa2ZL7k05/6SjPoE+uhGrudvZ1FWhoPUOA77q94h08QF2wYNAqBcBPIQHqPfe8Vbtd9cV68+1sTgNcrFFYpakKZXx5UU3xSs36xg0X12pvndGOH76vwAd/K74v+mS5A3D540=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778970034; c=relaxed/simple;
	bh=MToFPXzUVRHWZv1WwILjsuNJazKdkN7JkOp7ITab9uA=;
	h=To:Subject:From:Message-Id:Date; b=k4q1ztGsa8qUVYSDKxkmjaXwa0S08DNXXejiaI0oys3LPR7EmGXrZLHRv8Q4lXAf3vtes29BEpp/5gzK0V0oJiNjvEtLgA5TwlBhG+vF1CED7vRQnuuABx68okTKEMQn3sD5wzFe6ZRilhgE7ZHBUzRKFd8v05DDwoxgMgJkpDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg5brzO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg5brzO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AC7C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778970033;
	bh=MToFPXzUVRHWZv1WwILjsuNJazKdkN7JkOp7ITab9uA=;
	h=To:Subject:From:Date:From;
	b=Rg5brzO0s85Z4pbepC1L7JnoPqVm9Taw12gRW2M3fwBkg2+Ew2e0lXGF/zuQkbcbe
	 xesX2jLf/SPQQUv/HSM4i1YQtZ+hlxFQGjDtHUEbJXGkEUVfcBfuQnrpxRS19kV7hK
	 UMKNGvlJs11Z6YyGRszkQnP55Oa6VCQAVDGygXSKaOR9fkvGHqNbMH2AUfEC6sT5E6
	 glsIaHGTPbvAVUk6gAZt7fy+SJ8iVoW8m2tR5RyYfaap+2YEqK0RvptSIq3+lhc7xL
	 PrwnZxPathJTvGd9XfOl63RxJnTTv2Xi5t2qf3bZDZith2uQsuU0jvaNyApyLnASvj
	 UQQbL87MaApYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0170CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897003368.17908.3502535669373366999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d841d6e4ffaf5da07a9e8653b37afd5767bef47979a0e7f9edbdafb885a4515
Date: Sat, 16 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778970033
