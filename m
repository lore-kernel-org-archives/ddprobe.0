Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F081B4F2C
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770816894; cv=none; b=NMx+mEZOwyqzN98p9V7BAbWnH7LlVphB9uVHhg4asN2Mw7AnZo1odYdL7IBLDkOeQFLLCM5L3Wa3c9OPikPMXKVWOVHGE/sfycPVKkErNSKSgLAy9vCmKatl+6Rplm8WjPpOmiLMBttQwYHIoNwsuIWnL6topDy93Q37m91ik4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770816894; c=relaxed/simple;
	bh=VKaTehxJUbiSi09HrhmOQQ36b376NRDw2uPBIqS9cuE=;
	h=To:Subject:From:Message-Id:Date; b=U9TKElf998N0w39V4l8T9q1cTKF1d6wPWe619+xz8TpHiSbCSJfYxSO0EFli4XX4uJcL+E4NpVwkMXd+nJOXlLXfOwqUW7MGg3ahHbjkbdw6J1vKXMwVGkrTp6kNysTLD9CXWIYD3JaaM4NhWwcU7kAZF77CotWMH2KZB5VHj+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmGG29Yo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmGG29Yo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DDFC19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770816893;
	bh=VKaTehxJUbiSi09HrhmOQQ36b376NRDw2uPBIqS9cuE=;
	h=To:Subject:From:Date:From;
	b=YmGG29YoXM9hLOrvRQbyVVVC093fnC8SEJCDHGdn8VQe2+t+h66b7Fh+NrXaA/Qhz
	 IdW2Pw8tP8s/Et9DSIBfmUJvKXI/T+rPAl3KJPD9Cgc02i+G5oRUAMigP7s/T6qJyV
	 7TkckwaIaUz6Pg/trrcEENFUCQ2J5NU1FHxNRTvP51FZHhyS4JNhAauul6LWydDz2M
	 rz4pQW1K0QtVEHPNPsh6EnQIewETC1RHyplk5SAkHJJ+Ic10lbpVVmdskrL25Fm7S3
	 1MXrEkcUpG4oOnaSUFLhBISjfvdccJJ+q431adUak/BB6mkaBNyCqjz/94dWtor89z
	 rDD34WA28FY1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A144DE9E308
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081689364.10970.6112766746542841516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a5dfa6c58fb39e1e3bc13141d542388347cbdde48e2479efb4068301b8172b
Date: Wed, 11 Feb 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770816893
