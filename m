Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F9D1DF968
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744994396; cv=none; b=utehYFo9oaT8c4rz+7D2RrOdneQnqtHGk55Y/0jt0jy5/l6lgOnq/4OaqK8jqPHJvdyQSHRpEH6aXDCouuwrwmxf8pMxLr9fq6gKXO/K4QelChGAlFZ4tJsUyO2am4m7AvRfYa1LPMKM+xxmfLsjn1JBC3IXw54Zxb4LDKFJa7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744994396; c=relaxed/simple;
	bh=R83lYCSR003oFU6GaXDZNY51xKKMLXMt4zZULhSySsg=;
	h=To:Subject:From:Message-Id:Date; b=FR2QZQCJV6UPwT6vIIDLk/v0uob2zPp5YHGeW7RGhXcYHK+xUan9peYsP8OSe/rLh+501wNl3fteOdI1etLZ0s0l/m3NS17VEjKF8ghsvV4KTXbo+34OhoEm4r2g2evkK6jj5khi1/4vRW8dWE+CTEIBBs9BKaZwZWIbXMl3MD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZ3wOryO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZ3wOryO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF561C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744994393;
	bh=R83lYCSR003oFU6GaXDZNY51xKKMLXMt4zZULhSySsg=;
	h=To:Subject:From:Date:From;
	b=dZ3wOryOQ8y27VISL96zQe2mHt4WxNmf1JOctbVfkczcIzMZfJTRgB1pb+njqClHG
	 rvZZ1TaogWFKOEI5gYUHL+m+6bvkHFbtrcikmcWQQjftRnSMdkr6bpT/0LorFBFYSG
	 dJcPvCpkblXEi7WAZl3delCwBIRAqcIdOfsWXKYMtSuyLMuZAct7F+bZO9fvKx2xS4
	 WOETf1z/PvLJUNlzYtjJ+1Ul75DK3QrtXwbXRuhFKeUlaYBiWZ20DsF86UB3QbarSt
	 koEQAFXI7M/taNe6lh1LDpSp5x5T2plAtawsf066OeAInYBIn2OPDp5LhY1q5SO5bN
	 fGRco8hmfaU9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EAAC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499439358.7539.17502527265549084361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d6cb182259a3d2c2bbb112c270b7faf2355109754381ad401cd385701c8a9a
Date: Fri, 18 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744994393
