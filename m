Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD893164BB
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757003994; cv=none; b=gZ53FzsKCo4cYzJiYQ1Fwi7TJ8L1n+NykZXk7OfCk9bQQugryb/VPFNjSvq3Rh6mEk8XdyAJ9wADRtay3ivdgwwV+FJueClNcSwoa3/5mIidTWiHyKHReQVRHnQlZik3Gh/XLIee7dSJipA4AAy80YMf+MRpZEAhleUxLwiLXKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757003994; c=relaxed/simple;
	bh=yuOtcm7Gj8yRbrByYeMjYuDYqW/HF8St/vTPumX9/vQ=;
	h=To:Subject:From:Message-Id:Date; b=hCiiCqqjQfh1kDux67WzlaE6A3UQXymOLfN3av89vF6NGF7TZbCXii52tp87ucs00LLAeNtWnWHzblUaUqB7DwQTNCmkqk8NW0u+KPpNlW6pPpsYiAoFDoDiaZmziR6jKWI4lWQekv4BRDPOiZDFCLfnTKIpQ5q+NrEJiPTPUyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCdZPgMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCdZPgMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A2C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757003993;
	bh=yuOtcm7Gj8yRbrByYeMjYuDYqW/HF8St/vTPumX9/vQ=;
	h=To:Subject:From:Date:From;
	b=qCdZPgMpWUCiHVJXDc5YkBaeig/mh5rs51q24hu1rbsStG8IrZQI3ISTfa2eOH/2v
	 HTSxX9WGJkoIprM8x5t+mK2b1TsMs0uTmZg1HKtDcsNHoJL9w5NF79h6qFQQw9Us4X
	 RUMVJ4IL0RVkdN3hWyPZ9bpL8hqLeO1YuOjYEy9AchZiWTJciVJFBVbWuTLDwhRZ+b
	 oMJoKqw6SKm9fJf8VTgp+hSSc4IMdS7GKEuxeyXM27QIi0lQwIxwKiIvGRaZc21854
	 ZfizFL2LxgaXbuhzIAzZJuGMIjy8sGsOfzxi8QQfJ7mF3kP7GYJvSO/9rogxsW997L
	 vbpFf0ZAGfhvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDECA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700399358.24598.5790990939286278644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c32955933be3ddf55d20705380f2b00cc3aebf8165cf7b300e990a784ea6a8
Date: Thu, 04 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757003993
