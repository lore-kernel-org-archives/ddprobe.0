Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9998003D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792069234; cv=none; b=DLZRkSqihUz3psYLNwvAw/6PFrXXZOwdXf4L4IootF+9jXcm3rgmPw5Fh1LV5cpt2OZPTl3Vtr4VpV8ElRkC7X4w2sntvFYuoyaxuOPjD1JA796k4orgvRRMkf1gGySKJhPJlHmzoxaxfa+Pe9dvfPtIQ2OQLgPpPKCYPremDnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792069234; c=relaxed/simple;
	bh=VcUu5gPhgMw7vrWcx+hz51FQDE0aPbbx0faXLZSB9Xo=;
	h=To:Subject:From:Message-Id:Date; b=q1CvnUFa/qjmNVoW6XSs6N2jqDzA1VN79cQJcjNl900bnYEY6cjePeBY6CJHPbQRxU5TMKrz/RsFwLVCW+XBXniCzy11ZU2pRTcxFrBKY2tYa/xihUmV7xCwKqsfQeGxLnP6nzLlLcywdQGcAarX8sWUXwKbkVGX4glPx05GuKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TELbnGSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TELbnGSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C763CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792069233;
	bh=VcUu5gPhgMw7vrWcx+hz51FQDE0aPbbx0faXLZSB9Xo=;
	h=To:Subject:From:Date:From;
	b=TELbnGSfiRerjhJf7cr/sa4HVKyNth5ImaOl5us3xQ+zDZGRJGPTDsuNDr722SBpb
	 Xz9OnJbLYByorvsN6F1irPcgoOxTOwBvdAMjuqKS6G4sv/0+cIbPPxHopCCAB4fJuk
	 vo/Cw+fEmftAS0KT+mWZbYQWVYiPkbt4mpNThfqh4MzD2PPYnjtQUoC1rTctq5y0n5
	 QHVhzv7UBIFL/LC4exU3DKHm5xY2T6giVx01EgAAfrygCZLTMgG5ttuYIM45LDdXfF
	 0YZtX6OssNf0dy2X+a7jwrHQLJWlbKyDLnIgcyX0Ah+qhuN0gldP/M+QKUAfEBKvsu
	 5bEtqIVrm56Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF27ACC6B33
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206923370.2809.9684089736199089715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a92a9573f5bca75ebd3d1f4c0a46a934ee0937ca592d5b3e8bdf482d6bf1eb
Date: Thu, 15 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792069233
