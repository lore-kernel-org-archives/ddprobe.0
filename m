Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D39254B18
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778339254; cv=none; b=EalnWkcM+xaBbPYxIYTrFCZzhhwas+EpKZPAaUFwjkjMv1ScTb/DSnnKQPAA9kOGR1d5anEUwou74/ZSnjZk/I5fjGiDTKTm1IbXaAOP6fn6KBjD+Ywkq5TVz48jIi7OjDDx2TTSiQ2zYE7vGpVaCmOypKE36OS20pRnHN16fBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778339254; c=relaxed/simple;
	bh=K9V8inFssjlXdIroPkmJTxgU7C+d1lfTyuKGSVP8yAY=;
	h=To:Subject:From:Message-Id:Date; b=s4hEXm22bcyh8Ko7T3o9CkxS4i9GQGdeW1STqoKNB3T4iqD4kR8QhQNz5K8QkBkgoavB5PahVeXHay11l0ljOdgNdqx+9N64QkeXsVs+NwXZe8UGpiR9Pgh7zva99gz5CViQpMsP59ROGQPlGklqJeWCmou/yYDNSoBlUn7sNh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7d/5M3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7d/5M3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3FC7CC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778339254;
	bh=K9V8inFssjlXdIroPkmJTxgU7C+d1lfTyuKGSVP8yAY=;
	h=To:Subject:From:Date:From;
	b=e7d/5M3/OojHKhYTD7KCbYHmFOELjJ4DakziBw83iWAzuIIL3RADbouQQPwLnDc5U
	 c0TJrhM4490HI/cjY+1zNIbWo9VSj5Jd7R3ozJK4CEFEV4QzlyWmTGY8dUseCegb47
	 o1iL4mKWZ1X+FIyMvt4Sm70rQYtooDa9dxU5nxlakw9V6ylk7VUPGlJN/IeiVclf97
	 1qsmvDP0Y0L+BiLT/33v2WbYgVQEvsfkL09mvHckBTJHfPV/8rxDv5ST/+OJDZ6rkE
	 3w65gt4aB3jlH5KphFjlODxFl3bo79s+hb/WhqBB4j8i9w5Ha3H77O5dWLHJbdfBk1
	 ldVjzxl+xmDDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07C5DCD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833925386.12495.11990358110426817580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68174883f8a8b3783641d336457f0a86fc7d4832b4a540cd17464f3ba8a9603c
Date: Sat, 09 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778339253
