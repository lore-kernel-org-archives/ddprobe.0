Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C6C21A447
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784777374; cv=none; b=nRnF9IQwvZcMXx6izb37RH4zUl96gySQNBtZfANHXRCbMeymnW91NOtHG8h/C8f3gHC1qT+qb2UzdqiaJFCi/jFHFHr8MaMxb5QSorWtcUp3uNDvxII7BoPYLJXBHDlV+QPPsxGatGHPAosxipoF/rtaIH0C/guwYGRHIT0QU3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784777374; c=relaxed/simple;
	bh=aCTCq2gHwV5PE/Ca8g78DSSJwkry/gAVNk2Vk54V7OI=;
	h=To:Subject:From:Message-Id:Date; b=X2bgKQQNfZBbPK81IAii0uRxu3U52guOnxzTasf8LCmpJ9X80PGtbaOuSmNmECcij2yH3bsI8gUd6MJg5dR7cv+p2mGo92jwHUYJwrOk+GOWsugBINMMAg8tOJKskZ1RW43tOzmvMcQxDCUhq2YRhZ7gdbFrff2Fv4WpSLh+J3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOQGsDPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOQGsDPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40E1C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784777373;
	bh=aCTCq2gHwV5PE/Ca8g78DSSJwkry/gAVNk2Vk54V7OI=;
	h=To:Subject:From:Date:From;
	b=rOQGsDPnAUGfMPEV5o2J7Jc6FQHZGxmMgKVr5anLenYrIc6NDThs6mBvaBB91GM8X
	 9G9hYKjZaj2Wte0R6Mcax2G/C3hu6685ActKJ7IvOWcxxXNmA8klKG8B/9zhVNGGTE
	 qYbx8bQceuPGBYABC/nFCTKIeTBnEBwAUOd8tECfyMTGXnIGCgTNLBwUFrrjaz5ONy
	 Av1Bd2UNYtklzqS22uq8+eSdJ7lKcWQaugjaZWG7amrYAQNhjz5wzxgfVm6niMM4s5
	 7lmGqik70gCUkzyNW9hvZOcmxTSVIR9Gmyp9jaKy7aHqI6Ojv3WSPkz/3EOjLDg5lf
	 L1hixg3dAyVYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF89C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 03:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477737371.26257.12381007011598511047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a523cd7d96a97f068cc8e71837547b69927f2f9668a7a59b5616215165edbbc
Date: Thu, 23 Jul 2026 03:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784777373
