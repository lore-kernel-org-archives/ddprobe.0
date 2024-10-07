Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A46E574
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728269154; cv=none; b=WcM0psnCfkh/DvVjMuoT0z3Lx1rclOC63u8MaOUPh4ZoBheS2yGyCusfaVAuvLUQvntmHr06i6fyhdz0MU9O1urpOQs4pjVh8xDfBgS5uhTIjkrIXTx6OLzFo3nXYP4s3jAAU+PDo5Klspz4BDk10vnpIpz9/uoiD0aR0B+e73U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728269154; c=relaxed/simple;
	bh=kI/UXbvwOwgg5DNCz9YWYIy3V1aIqTvbWnWj2If7sys=;
	h=To:Subject:From:Message-Id:Date; b=caOtqyuMM2LsCACb20yA+PCfFAED6uAMwN+mLHEi+WITK7kqKE1kNVN6/byorwR7w75i2C62me8qu4eqmCeGlHU8jGb230z3os/KRowUSsgSzjNEPf8BperyrELgUrKWvNWGzhPvnuYvBQHRNI++Wc5Af8LHSe/cZXW61ol4oK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFYK0aJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFYK0aJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC677C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728269153;
	bh=kI/UXbvwOwgg5DNCz9YWYIy3V1aIqTvbWnWj2If7sys=;
	h=To:Subject:From:Date:From;
	b=SFYK0aJuGYgqwYoI7pg0P8E4vvFg1k+7vh7PJ7oz6yBAi+jH4Na2PDeo8ZQCTHaYh
	 pC0SbzOKcpf0lCj+YiRkQt8dPEH9sYv1g+9c6fI9dpT0Br5VqZlOXGpwHt1zzqAdyV
	 kcr3jfDuUmNvI8aGbGkbH/4uiq2HMHoCRHovVylpMOlqIoRoDc0UXUZCRVaovc99CL
	 NglSM0FgPcQybKD4lQxUfQ4Y+fX28Dbk6EokiRGtmO6a9HY79uqLf3w7aZN9Ct8WBw
	 IREcKzybWuGOZMTP0sRDPUCRLC4Z1nvBczgNYhRece+wwlx/NjvnallVz3pN3/lr5S
	 KeRtSVU6ODAPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963FBCFB424
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172826915360.4210.6951258841327998824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66190791509a925a17878f95b833556f951b61a8d2dd5e0d867d71ada45cfd94
Date: Mon, 07 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728269153
