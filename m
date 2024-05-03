Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5881474CF
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714722143; cv=none; b=Jf88bu21nFnXUmWfjwcAE0LpypZAA1Vf+Va6MBZmEM1HwI2h5aI8yG0EaMnvK48bfAZqPCfZIs70NVZIxL1XZ7SI/WvOkA/gF0zLj1PTiA1Znyxfr1K/TQZjCR3NqftimMaRC+4tKrR/P4GjGlkdUBbtYXEIhqabbtG98djjcRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714722143; c=relaxed/simple;
	bh=P6XwdYC2FudRh9gwBsyKf/VNiV00ao/cqic4p3QeWX4=;
	h=To:Subject:From:Message-Id:Date; b=BA4KbOB94tJ45dlc7xTlXjLg2wWJQnTd815bmGQnJ+SKIE6EqTlh82GUbMGP6/0e4d7WuavbARUdSMwHYLwA1qVfSLBiMTgnPiFzd8QJGwUB4imA0Y6hCISxEyl2kLJmAoS46x9Qu5GPcxUMfw4W4fAj/p0LmSxFOGaG5TEbjCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpiMJ4/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpiMJ4/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34EDC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714722142;
	bh=P6XwdYC2FudRh9gwBsyKf/VNiV00ao/cqic4p3QeWX4=;
	h=To:Subject:From:Date:From;
	b=IpiMJ4/+bopiFW2rcS5GvME4yflXP0FR4mdbrh1QDIHKIznyW79cN/uLQjgyUmZv1
	 6fiXgNtaBT7xacDi5rsMHtpJ5RUifRjqd4a4KuzcKudXyYzJ7w1DWXAXBEJGTsiVVm
	 rvzcHPhEsfg/En3tbbSUZZIhQmxM7O+YBxZu1et7FcDQMXwUS9MYdo8dt3G+tgACjZ
	 ohkIP+8EZtE/46svnYUHK15ZBQnWneLDMz6eyySEWUTtR2pSZTp/cQuyPN4BjZSG7R
	 fJ4FQtLr+RcqhX5uGwyo5rs6NZ8TViNqKSz5VWCTKzH5z7F+9CAEIj0Y6wYhLb1ify
	 We3OpUhag3nAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF46FC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171472214277.28369.1555357576134973369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed1ebd243207f76454bcc06e5f7df910188ca1a7f7ea104137aea8e0b7efe23
Date: Fri, 03 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714722142
