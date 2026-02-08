Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DC52F3618
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770574434; cv=none; b=Vk6fk60uhhvePq2O+BxybiEsRadbCbtdJW+yvRPET3tHck/f9hFFEJ++Tll+NZyMVKHFJaJj/Q5wIOpBLezSEm/axLMenWK+flWc7e3tPWQNxfs1DnrT/1Z0WWKOdWFX23k3TojHZpgTYOxqRn/IjsMxKL86SL4flQnlapaGUhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770574434; c=relaxed/simple;
	bh=vr28MHBzjAp1n60mY4j6Sh03glC52h9Wei4dx2KkNCM=;
	h=To:Subject:From:Message-Id:Date; b=I+Qw76KhSRQzAUL/BlxrNG8VNJ1NfK3G45j+Z5tuF0xsUKc/Lh5bI2dtt7jwt/idE2TzVQ2LzeANToGElaqjfSufeD/mOj5TofF4xxl9tj9+BasLun9lWS8qGmJ/C54FW5VKVhNCjHpsUAfBvHieZQd5MOUh/AuaxFcur7xkx1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pghHwrwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pghHwrwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0A0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770574433;
	bh=vr28MHBzjAp1n60mY4j6Sh03glC52h9Wei4dx2KkNCM=;
	h=To:Subject:From:Date:From;
	b=pghHwrwBE+F+VLaqBHKsfUGhV1mSKJjQrCM8MXtXCVliukHNHFP2hjMt9yNKny3mN
	 b1M3/FcOGvaYY6OkE9bIViNaASBdoyqLUKKwMxbGBYRtIuFi8ID8WXFfePqGMP1uJg
	 raNX1dGnQsi7/jjDpc98F1J91Q3BGpuZV20lhXqDcBlBC2H4mQIoUxvjHfy4MnLrXn
	 JIuYqCfm3D0kcou5EHu1ScZ3CW7rXPP7h+kumgpaZuQg6QhaQoVIM3+5xeOIvPJLQO
	 QvzokvT5GliYjz16rodUMQf58af2syR25YbgqWU8pK4k6EWohQxUPCPHezB4EwT7Ln
	 CgTBL6xww8exg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD02EF06E1
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057443358.6330.16828748562500627219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29b54d7454b03f65f3cc04b5a9d3b339d312e65ef05936f6752ce7585d16763a
Date: Sun, 08 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770574433
