Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4359D13BAC6
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729584954; cv=none; b=JH+Z7AVciEB3kpdrMT3pnZl7Ba4/+jH+HSXrKFQos5ScMhoqiJMSXElGAIsnBRjTG/966MuBbt6UL/qLQiUAZ8U6G6GpoVRbld487jcgdtbXrP7+a6fsbHmxSNbhrqbQhllSoK2LVB8BfXEjQbvpihrwsgFcDQesyVSfw7kixsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729584954; c=relaxed/simple;
	bh=VKDLjzAQrXjn6fR4W82t9JPeup/0yh3ldngin/8QmMw=;
	h=To:Subject:From:Message-Id:Date; b=GTJpGhsxDM4Xt/4q441dFJzDYlS/T1hfbMGyvccRn9jcZB9R0icqMaPJEFvtrPG2abU/10m0RMYrXXv8NPyiEhd1itYiPa033DBcjk+AbUG326tjPpgRin9q05ABlqoyB0VhpFtROSfKtdNRGBddDUNv0lyc3+nbmmROPcI4Jk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLuVxIAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLuVxIAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA104C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729584953;
	bh=VKDLjzAQrXjn6fR4W82t9JPeup/0yh3ldngin/8QmMw=;
	h=To:Subject:From:Date:From;
	b=iLuVxIAIruv8yPQFoNdRc0HVMtRLWlo6UcTolEHMltQaS4mYWrSTemdLHA2Hhp0ho
	 S4VXwleUW3w75b+xyrxrL5x5fyAC4oHNCtxCpRgthAVQ3k7+Z0MqCrVa0nx+v7Gkrk
	 P/Mro7uk+Pa+vIdd2CiUZsoBQKCmw4GDl12z3nuMyDNIUwNBCHMhtp7+Nh7voW6whf
	 3vP5ni283ILIiv4RwIlYvIEcUgP4yDQxzRf27un4he4/O/rdds4Q8954SboZmpROjm
	 1mqZMCAWLrX4msZbWJfFVsM21XhO512yaaLOW7OtvU1VB5cXXgqDuIsrxlyMKG6y/2
	 zm/WFLZMh+BCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8525D1CDAD
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172958495367.26703.8029519756412704414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f128cbe2dc51aba05bede423fe8c4dc7460962d8e9c3267f2d8d44aab30665
Date: Tue, 22 Oct 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729584953
