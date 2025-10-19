Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3464E2512FF
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760899194; cv=none; b=i6++bdQwL4iRO+FbjRcY5f6tcbGJVzvySwd+O/+NmAYtoH+3VlQa0bnbQF9KnwlsrWwR3RZ+YRb2gdSHtKG++o7imKhDt28h3zwOyr0n3TJBOXKgRAdkQcSlwXTRRtqCYOPJ9/qtUyUFRqjH3IAxRynCm/I7fAGWDJ5zPdsX5d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760899194; c=relaxed/simple;
	bh=ozTX/BgiXa2FZ1qVX7Z+o08y036w5JN21/0ykd1NDBU=;
	h=To:Subject:From:Message-Id:Date; b=kBMNym+N+yUFWRsLqRMQkrnLaEJPYbmgwz8VaduAnPHyYJe4VjBBQPHcaPdBhQxR2YlFhQZjwL10ZKWE69lrlCi+U6yw6Pw71al7MGELpV2aYPtbtFrJluURiDBuADQQcCW4t0jNv2FsdvoqbxBYS6rblSq5AA41LXnc0neS3e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P91P5Y4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P91P5Y4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA294C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760899193;
	bh=ozTX/BgiXa2FZ1qVX7Z+o08y036w5JN21/0ykd1NDBU=;
	h=To:Subject:From:Date:From;
	b=P91P5Y4pMNxDG27PbM2Asbta3Zmsejsp8RyUwdk+1hwvZ4AWc9dVlc/d/x/UusN/8
	 IoKQxyPRm+nlM0NPPqKcdDQb2onL6+KSfCn4yh/YD65lKHXa3ZMqoqqahra75HzbZi
	 j9mRcZQVJtegtVvJChaCA6QflzUZk2xs1PlnAVMdApnRgn2hy1V4g+8SsAypfcd5Er
	 a7WiuqutsH/GHEaqAA2jdeLyZ1BaMYOrr9zi2z28R9zZKIRqnvP77RYmt7nNwOVBUy
	 SNuDaBDwWQ3jBg595b/mwoOw55tF9L+p6Bio0XC7TJgjdt+mPcZn3rlKaRTwCDtAer
	 x/aJ882at7AFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F96CCD195
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089919358.26803.10099780632167107335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9afef089a1afc7eebd3700bd6aaf70c1c018cff97291fda71c03ce57af42035
Date: Sun, 19 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760899193
