Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59DDA36DA08
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782878314; cv=none; b=bQbw1ZvKt0oWlr1Ab2lKAFMzTPWaoTVFk6TzG0nsTQ0Q9FX/P0QZAEeOCROuScrV2D82hJKXz5/ztDQsu1h0Yr9q7yPbk87od2eCfFmLk1wiykal2oVHkVosp+yRW2IhZcYRD0hOKHc0m2ZFPW1x9YnxdQQZGbgPJmxFTJfaN0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782878314; c=relaxed/simple;
	bh=gGnMRGu3JSCbru1wTERqErugPcmIqgbKWV/g42fTyhY=;
	h=To:Subject:From:Message-Id:Date; b=pyaLaj395BSunaAnRncaMujonWy/ldnF+DheGqP6X11Q1cnSojGIuKoQe+wtFqQF1dpCEdD+WaK1SGEXWPxb2kbDCeKFYnkpp4jOlvnFMYZspH6hIxpWN/Dl74GqsunDA+dO9oUu3X2Aw9ZbaiLId1CLpXJwSssXkYW855JhQgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtX7+lqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtX7+lqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEFEFC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782878313;
	bh=gGnMRGu3JSCbru1wTERqErugPcmIqgbKWV/g42fTyhY=;
	h=To:Subject:From:Date:From;
	b=ZtX7+lqGo6udMdYMjaXOjfvAw0zDurmwyCjTB4hED6B8uAMZyUeu/lPsk35zTW861
	 roiAIHbxPsj3P27awtOorzg+9+JxCHi8k1sVZoxTAJrNhgflJ2HSgT92L4Qcn8gREV
	 3waXuUbT/g+7MIN1gcUO6+CgZUgxn6xMITZl0pMeHmjtIso4huYMTydvO42+EKF1eX
	 GHTRE9uFvm5olO9leJStN3pOXwdrENkCL3q2CMiVtiqmtCaN9M2AGI0pU2V6WII5Fs
	 YQymEHUQK+G04ihMx6zNERyEtwPbKBPCgH9Ul8Fe7OTQhAUjGYJK3sDlpK786mrugK
	 q+PNh4qC1VLxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8341C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287831368.29848.5243914194581822053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6035366204b07f48f70e108afff7f79532a62cf735064450449cf818a40b936
Date: Wed, 01 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782878313
