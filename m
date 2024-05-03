Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5750F28F5
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714744343; cv=none; b=I+mOl83wOLnaqRraHs/F7bFZICVeNtUoyARwg9M7REn+wI52nnosXV5TCgGtt0R6yUiS18ikyUAhSgvfPRhygc/dy6+tBVSzIhk+HPUAdGC4TifWL6zJXonnSflJzkhpOjGUVKyiu9PvgIDAJ+SyWyEz4dQzq1uCvYUW3KTLdDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714744343; c=relaxed/simple;
	bh=4pk/2sgHWsoIjt8CF2uw8Ex68kEW461jfYBjhyI/HTc=;
	h=To:Subject:From:Message-Id:Date; b=TSZiz37lc2EqcpyL462x7GTxsGLGKsqiszoAX0T+tiFa+xkk9g+M9UmAnFaJ6k3FMPUvqaYqM8gpBZVMvcJInKlG/+5eC8tgBKNdEJA5i6pYvv7u/khnUUu/hUUwwm34Wn/lKqgrFbdiYe+HZ2OxIS3fOtDLZ0LwGFTEVRDUtzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LI8Q0etv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI8Q0etv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86A4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714744342;
	bh=4pk/2sgHWsoIjt8CF2uw8Ex68kEW461jfYBjhyI/HTc=;
	h=To:Subject:From:Date:From;
	b=LI8Q0etvkycDs4wkFn0ByEdyzt75bdr4g0kN5pwNOzWH3UB/6p3a/MK2Z8LDBNBHM
	 6bGPyIkWR9fpn1Uk64+KdHC0jKDw+wEAk+DF12eAJJhgqE658+duZ+EXHvFKqTMsPi
	 gEep6KwsZpZMVrQr2+/FIUc3VCujc1jNuWL0iDUxfaAwxpIeTCu4zW3a+PdGadSdND
	 EaKGadQXtoOn+Im25rdIZw6NxFFbysviYoz0YnYSyaZYMitCbsAhWpzITKOk4jaouw
	 97H9CCKkIcthdp1Dl/AQBR3Dc4gYqFiUFgViFdaPgdIEAX5ltpY3UvPrFMETW6n6zF
	 wL7qiPQ3RlWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C040FC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 13:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171474434277.4120.4749762062586693007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fbe6dd404d1c311e7152cbe75f84aa48cf3fbb5353ac52376429977817828b
Date: Fri, 03 May 2024 13:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714744342
