Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0E53BB5A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760648993; cv=none; b=a1F4L4TcL5bbsh1NX1j7q51EzByvKAEjlvxMDRniu0XmhfBNY9gKslBDAxzEZXXVb8e3KwTiDxvV64219bMlajs+TWho0MvjqZQ/PsAGM2Vgiygvds6M7j2fw8w47vMV3K1Ffxtpd0m6eAMwfdg6xIW90bEFXDZR7IzSz1xfQ68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760648993; c=relaxed/simple;
	bh=ejYniTyrdsglLabmGRNeGlNOt0V5SPxSdPkBvDkXd5g=;
	h=To:Subject:From:Message-Id:Date; b=Dfr7XBeXR1okHfNNZDMM/gFuUiyQUjgU+2lOqeSE8AovfhgZgtb8HZvxrjFnXLFPa70Mya/o0IzQ2SKMUYTPioDMKxJvhfahdiT7DQqN+/msBXmAlR/EFg59D0iezDzarZhA2R9RxNQP5MuIVBci/2UX8UNERGx11tVtdZAv/nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HATlYr1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HATlYr1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D83C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760648993;
	bh=ejYniTyrdsglLabmGRNeGlNOt0V5SPxSdPkBvDkXd5g=;
	h=To:Subject:From:Date:From;
	b=HATlYr1Y0yNQ30G79snJWpgLikLyCtEKvAcEV/kDS8KGK0oj3Vo/IKDa7w7x9HScS
	 E1r8OrJF1YTmnU6W9pGAQAOPNEZ2O0/eyrFCf9zPme+9ZMQe5gObGVgD5X0c5UB1SN
	 azxQL+DaPePxDppXoM3DiJFB0Mn8fxflWV4V5NkJ/4/w+rAV03ky3JdgWEy7OTNzyZ
	 FCbG20X5bpbDBwE3jVsWLeTjQuJ508EfBTKuVnlkAVvu/B1v5sI0fyZIeihn6UjaAM
	 DM+j0NHF1366/wanDG++wBRF//Rd6x/2HyXBvXA/n09FIqTXUlhfg6qqSHkAWDNFbI
	 O3ooYy/TptZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DADCCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176064899357.29253.16271581220598583551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a30f0f5f40acd2f0ac82f1bec8071e4ad3a60f0ce4bf989a904229344d2c7c5
Date: Thu, 16 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760648993
