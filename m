Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6442F1AB50D
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742318994; cv=none; b=sKXP1SdL7prsOF8n36rfhKJtOdytf/gXM+/R4RE5R9JL2cUBy7MngVJwNv6Nq2sL8J3GtpS4WCF9D7CEb30jeQnRZkf0pZpRKKgomKoli8VHtOafXtXQSpGHYBANqMJG8gGSxrtiznybq9njhdpA3ukZV7Y70LeT/v4UJUZ0c8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742318994; c=relaxed/simple;
	bh=RU9FAsmzJiXMUHdgZMFZVE2v3Sejo0FcuVpFzFOVjD0=;
	h=To:Subject:From:Message-Id:Date; b=FohPcO6CWHCpzyGLV0XAZb5mmDyevgbmFijf7C5hqoyrH14Q9gsV1H/QYM6nyrX84GK9Gm0CF83fNhgOUW3zMxDQ+7VSU65pdNXGiDH1OcMrD+Gpn/LqJ36Ql0AL1PuWv2TXwV7b9s7lRScJ/28Gbmx882bhSKFEQfyDgm27icg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hifWBmv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hifWBmv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9282C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742318993;
	bh=RU9FAsmzJiXMUHdgZMFZVE2v3Sejo0FcuVpFzFOVjD0=;
	h=To:Subject:From:Date:From;
	b=hifWBmv5HUBPACkERBrs/yJ1g5LWkr6lqBVQUFGlJyhKK+iQQ5wCijv2sVTNIXW1c
	 wxtDY9m2WUFwPIEp26K+wWY2n3DdVubh1dDJjFIecPQCUMpEk3IPLehLMunDHjJxg+
	 r+o0HpQ6vOpKCp0UqDYLRh21IWGNE0SgBHOtpX/MUwYKL3vWV62NzopK3dmY0olzS/
	 /R9vdTYPdZHTFJ+MGWDHPh5Xf/4vWYmqK8urw/UxDaO9kvZiefpFfRhoEWgeGzifL3
	 ve78Ebtm/x+prQq5t2hz/xro9SGwk6dHf9kRxJJtkYmjNYrZ7WnOzDRxGE27o7mthr
	 AZ580bDdEsvBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88D6C28B2F
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231899372.27054.16765859328448377619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af52df32bba96f6c99e4aa3a9a81c8216d9a77411c9017335bfe9af54ce040c5
Date: Tue, 18 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742318993
