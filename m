Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489E659160
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720602983; cv=none; b=I0P0nHg7YTCvoxIy5ciOSHGhcio32w35mFl8jU64oHBWbrJ4IitfJot0/g8Y1MCqLWsqXWAWk8hObo+ZrYsoqqcG1MvKvVxUJPItlQQ1UdxGaqQaQGqSHW5eh2klo5lW1qGpCZjUAQ/HvCv6/8ZCTNkWPLa4EmRu92lsn8iwV0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720602983; c=relaxed/simple;
	bh=2/qMN6Yr6bvyKJMvhGILMuXkhS3vWynkV/IrO8ne8u0=;
	h=To:Subject:From:Message-Id:Date; b=eISlk+Ncm32q+qRNJwjvGiuLIEMJsbf8/738z7XuYsC5ZCUu5JosPqx4VOC/h/V0p4afms4KCCfL5KvilyeFNua34i8MLf+17/NgB26+E1dAit1FM6hptk23MCRM1+Ch9iNlmPIhH8Y/WJ+jEVXeapZr6s6F+RYWHWe//lWkbEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzWS5Cuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzWS5Cuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44ECC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720602982;
	bh=2/qMN6Yr6bvyKJMvhGILMuXkhS3vWynkV/IrO8ne8u0=;
	h=To:Subject:From:Date:From;
	b=UzWS5Cuu1lSsJmbkuSflv9otVvQnjWrdqczz9GfMb6p2gv1JL3zCgw4mzvrf9Gr3R
	 j+FqX5aFeTkBhUaQuYnds0fHqP5jAnHsYTzyJXh+zMi3LQY/KodYYlblNnKx+wPCgu
	 01r1ISb0AYlBSntesCDBXfjTYjMP7qzkOQFxoHIEqnf5VCwOt625LLyQvk2tCJbCjx
	 0cMy6F2RqZBK/s+ybTOt50i+li/8l/rdfQ5e5dQxrrLfBL/gmqM7waBDJBunat3BxP
	 vifvIA3IrnXlMVfiQ9v26kDlpjp/R28gWkuygMaNvjlSyxcLDZDkY2Xw2/IM52vx66
	 M1E10k5GD+nhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E91C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 09:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060298279.15547.10700072199946671039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44f8b8a7bc2f4099ef46670e27537c2bf45b46c4a68826c0427d5fb4fe98e8e8
Date: Wed, 10 Jul 2024 09:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720602982
