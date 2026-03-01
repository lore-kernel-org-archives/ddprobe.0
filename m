Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E531397
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772356494; cv=none; b=fvkL2vMSePWvVbnvPcpX7n5Peo5KGzupR1oZ7zvsgQdYgNLyn11zHbxydUmMZIbpj29V5GzOLvrFqTSG5PZWXvOmfNnz4TljEqsOopvVmv7LlpG1Hnn/cFgZSxzh+WTSaAHAAWUYUzr8YUQT5rihRYTpc+jfNvjeFUGD90ql964=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772356494; c=relaxed/simple;
	bh=YF3uF35QiDPAUMb/va9QhwYiGg5jmFzoxkGu0jKxRPI=;
	h=To:Subject:From:Message-Id:Date; b=PUg5svoC0Ztnx4LIQHw31SP8V8EKXoQ3TY1bdybbbHCXMRKcOnPCVIwH1UlC6zdp4c1OethnCwQczL2VxMO/RQfTKWN9pSGrSjQqutZcQHlIqYOVFamJhY4PvmPDe4ei0Kg6Ys7VXdatkEt6Apz+Ba5sxXmyoH+7eChikVGr018=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7emCA9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7emCA9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE57C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772356493;
	bh=YF3uF35QiDPAUMb/va9QhwYiGg5jmFzoxkGu0jKxRPI=;
	h=To:Subject:From:Date:From;
	b=i7emCA9aa+Zv//GdvWlLpEu8hSGzYmTCWeRmvvGYqMFi1/mEvI1QPog8Mk4XH1vSu
	 FN4qVnpDRAl7uItL0qBGC/kt0TGmRU6z9FrQPm3Badl+yUKbs1RJOmXK3RBSK9xs/n
	 zVIoVq9btjrqYBFqlneTwrlac4KKYKd+SLmqPngd86S9iBksN1fM6mHTVSwkcFsbbt
	 NmI0fFcCYdAwQ+TRchgFUuhl8J7jpxw+OzUbtEtg9AMh0biQ3NSqGTXNbjOa77p8o2
	 g2U6Ozdt5o84d7MPvnsiJTkbypXpVyF8XedhVSQxpTX6kX9823LjruWza97Y+rsQal
	 TkaHH/OogWXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FAFFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177235649358.28763.17905442316004357824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c573fd0321d3516854f4c8efb7233763b7069a6e179de82a1f463f020238c1
Date: Sun, 01 Mar 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772356493
