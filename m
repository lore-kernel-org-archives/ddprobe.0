Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F87481B3
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718466503; cv=none; b=BVRcznBjBDLQpxDebglI+4mXVvXAMJHXZHV5Cer4tKExmiFQ3SlH7pggcj4nCofM2T040hgp93mak4DyuBoPyUql3dvPrRzDl4t0uCvebgA5aAlPBFAHRzzUqRcpsq0+VwqS93eZgbwMWHQjpA6vGO+hNED1AWefkEZu0jFbJ9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718466503; c=relaxed/simple;
	bh=ATUNEJNGFNzk3WtS/LcHCydK3HdNEqHp+GoKBT/GmyM=;
	h=To:Subject:From:Message-Id:Date; b=SlAG6PFsFZe7TQkNILfs2qlTWKHGjZFPeTkvDyHj7dXll+pQawMTysIXdwuQZNmjACoSc/Kk29WrVGo7cYyz6Amz6aKGqLaMf13fLS55lNBTM0j889Aa52jeOwDbCO/To1OUxAdbtqp1MzvCa5eF223uPnXtt9JWsXsUMMOxBQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vrg+FuSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vrg+FuSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED389C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718466503;
	bh=ATUNEJNGFNzk3WtS/LcHCydK3HdNEqHp+GoKBT/GmyM=;
	h=To:Subject:From:Date:From;
	b=Vrg+FuSa4xExhx7WtHxifpi4+M+JykezoET7hmuywcV3Jx+K3DwkN+iEIfCor/AlP
	 fBRe15fySZ6lXowSFfN/etg5xczQi5fr0vOt7RQ2Ym1KY7pmH9qNI/yslPF/uyLw03
	 Q4g/WI1SCKCemOfgPrXX9U0Qt2WmmNxPusX1holCJUCBfEjmmdbsTEe+5XQxlRt5zB
	 8vtT5KscET6AvYHWeoJRhWWpIHR9K+6ztvcWZp3RpjHQmNawL3pvP26K5Vux/hqe0q
	 slRTwvaM/UXVZNgOhqj98GVsYo9bziuPQ9fq1DD0ZZrvDTsJQJSLyNnKiRVLJervr0
	 09TQN7lmr+oZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C92C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 15:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171846650282.28667.16040126106595942554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65bcce77809be685aa7b4d184a78a86c87d580cf79a5a2af78c21fe86a426f8
Date: Sat, 15 Jun 2024 15:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718466502
