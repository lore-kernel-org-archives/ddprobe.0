Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D9A226D04
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758094794; cv=none; b=k6lse5R3tnNVCmg6nhOeiG/uOVgJ0MtJsbRrq05PJvV6Bp9HkEiW74uq2IYe77E0Ijqt2q/x6O+9LAW0Nsl53GgHw0WLoFgPl1a51Fk8TMD1RcrgdCT/C87b5bcF5K/15KmIkpBt501kXb9stYfe7jModizxS4Yd3lDNwfSNh3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758094794; c=relaxed/simple;
	bh=DlaA4ZPxvTRq8oB3cbZbmx/hoxwoarO9S2BTlPzFAbs=;
	h=To:Subject:From:Message-Id:Date; b=EUKSski1RJCjssgUDhCUg871rNoaXE/fHT7SU15mtBX7xEgr5Je6HjoYyuagxywSZTnGJY7bFJJ4gGNp3w9kv8cJ0vuifHBiWM5KZoTCOAx11M4M3bxIu1tjaCiTejSiH2VXN+jVNh7wOc0fP/y9WBz29IMFCGAXXChRSlfw0LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMYOA4f9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMYOA4f9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A270FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758094793;
	bh=DlaA4ZPxvTRq8oB3cbZbmx/hoxwoarO9S2BTlPzFAbs=;
	h=To:Subject:From:Date:From;
	b=EMYOA4f9/5fmKFyxMaDU8idnttwqUPMA0JjSrIRLLaXBACb5Qdd9TQ4j1gHc22C/U
	 xeHS5gOcOmvI5a9qMxV95sGsxS1vNp8cLBqWMqBqxxxBcimkXpZz65xalI8ZxiSZrL
	 I2e2Oi/OwUTuSdvRaLCKiZBkehTBwcE2z0v/NVWseOqXAMDa71H8s3NNMJxyBxLIhR
	 TXlxRia29kcoAK+slQTdFdUQ244SbJ3Ma67HsJ/G/gyBe1Lgqp9Uhf48RPGwzmboQl
	 dCAeqKXSl5/PRo1SNAVIm1AUzoxRFZcs0t2zs4xs7Ui3/P8M+x3HTEeEqckMoXksl2
	 X3+fMKrspkgpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905C4CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175809479358.5936.5514458038246402683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69a35dc9c8898bbc5e4f7bf9601a699ae4dd511517e2492ae6d19dde0d354074
Date: Wed, 17 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758094793
