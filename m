Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5CD179DA
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765352574; cv=none; b=sKoOJ0F9XtImqr6k8dHWSSZg1LYDzmbblsRLtiJgVhhMOfdi8RIulncnJHrEhNFn79hyc+twOFZRpcWJNXNi0nS4jgz5ALoBEK4Mfa7h3SIuz4GXASLWqS3FgTK8nl0E4bPbIvYPCQM0WrD6VYnv90Bzd9HP6x8i3Smjhn7sMh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765352574; c=relaxed/simple;
	bh=mAGQ2XJ2M1FwmwRjeCLfAbzfgI0kLbBzszzNLt+9314=;
	h=To:Subject:From:Message-Id:Date; b=Fw44fmiH5b9yzFc4LBeXXeEX4X4H/ThvX7qUnSCnFNraI7gcSYABmqwTmdxf4x0qqf4QNIXQ9Bc09ZpXcveuCIqGU35HLjvS0N3TekxB8a1K28uFczi+q4WlLZbJ4AiltxpQiQ3QarZxzBaF8F/ydMpuCoDArucyRz6NoRHj2JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G22ea/+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G22ea/+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8062C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765352573;
	bh=mAGQ2XJ2M1FwmwRjeCLfAbzfgI0kLbBzszzNLt+9314=;
	h=To:Subject:From:Date:From;
	b=G22ea/+UxxovV7DCShZENp0BjxNTuiz187a9bHip7JqTcHRS/bbjZFUjAuCftJfX3
	 4dwPdLROpGbu4RtjVrdfWyPo6PV3xxnntn92skuXNxSZc6DNO5KzgMFZIW36IW5Cyt
	 nJIYOuTq6hiEsTZ6C0ycjqc3NyG0v+BQ5Pvklg+EcRP47dt6gLYx35I1SDB8tX5+vm
	 TJ/0su1+H2qQqVRP46H1riHIE6KNfUS5/sW0H7G7A/wFu4HPsC0dqAPMK7iHm5rshe
	 JdZ3WkL8Dff7WaYcAPMljgSWgNpyHCrOk1HrHobg75tVLcLPlDn0Qi+YnXaFOpZ7jA
	 4Gan5k/GGOE0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9587ED3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176535257359.12639.729686430145772029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149bdcc0adb282f5a7e49d8426a35e3ed9ce3cef431cc79961c6af7adfa4a56b
Date: Wed, 10 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765352573
