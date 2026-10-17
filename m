Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FE53D6CC9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792213234; cv=none; b=To4s3ECbzjcq221zvhdjRBD3L5XbwHB28ljF/gAAZyAQE3eLljtj3sBGe7XT054iSNvo+4E3d1R+fiaHehXHxDZB2BNah6xOFglldz1F+Do3wYnNXrN2E2rIuBxaTD4dKn3UXPsEehHz2I8e0WszrFp6m7d4VWCGGXpASiovI2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792213234; c=relaxed/simple;
	bh=zjiZOrQKTF+YNuVvzskCvb+izonMsBDr5yqJJYSdKEY=;
	h=To:Subject:From:Message-Id:Date; b=UJEv6USNNaOCojgMbq/i4WjAuJ7yU3TFIOoXfIVK9NUMDjULfVrz8rgO+E9aDg5s9Jjq4k/jlS+4gEWiU9oZ2q2jgYd5ZpPG7LzXf2NVsw3ZNgt4bqSsAjD+Mg/2b6ClRXdoR7LnJtaNZBMVNC8XHPTA/0yKYDi+tTxdARPV3dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNBilSVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNBilSVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37BAC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792213233;
	bh=zjiZOrQKTF+YNuVvzskCvb+izonMsBDr5yqJJYSdKEY=;
	h=To:Subject:From:Date:From;
	b=SNBilSVqSj+V5+BvlPLt7OZ0/CMw4pJbWxNa5lNZBHDJ/pXcn2zyLMWItkmvurcKx
	 FG+ICjoAaLEhyK6B5NwBF0B+bHlsSBQ2QWZ4ejHJdD/egGskBEqrKJ1YLerVMFVREu
	 c5M6jNj1e8E12nv896d3R8v9U61dGcBUs8Hk5b7Rt49LW9Yei8NhFXJf/bwdPHOw4x
	 1Bd6YEKS+q/lh1M8wDz6I7nSVOQNu6yXOMqPJQ3JHml1c759zeVZrps+twLYetsGX7
	 ZNPY5GJ3MQm9dk2BtJEGl1oC00vyqvYM0SuU6bJfgBmz2OC5jjMLKF6W4xgl0TsiTs
	 Eo50zPVcO7bQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7D9CCA463
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221323370.16549.17310693853289804517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fbf5b60c8db5fcf48f3d318b0542ad63347d57b5b11fb6ec2b6a3b68fe0346
Date: Sat, 17 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792213233
