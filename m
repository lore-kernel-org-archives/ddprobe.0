Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3445B31717D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784147914; cv=none; b=YVu5nIJaGPmxRQXMDVHuClIEARWlJN4dePluWUE3ByVojgPHNxEk79VsK+CLA61wn+oPiC3O+vWtdGOv+7Fk/np18Er7YmfJksNTjjLX/ErUvdbIr+aCx469f0gbVwKKykhmJqXSjps2rc8LCN6y+psFVqXonxw1jRpQR2Wyjdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784147914; c=relaxed/simple;
	bh=e5lTIgN1gZlIbiumktmBLr+CEXdeFk9Twr6vpryf4aY=;
	h=To:Subject:From:Message-Id:Date; b=NH8aMQwXbNQtTHNDXo8cnQ7I5UTtbiOxYxBthmOC8tJSDpRoXenzqFkWnVLupWQLVTJpXtvwIOVyEuVFzJ8JgqfKyrBf4DoSntl0N7PqDws8XGTJy9V4dmcIcizQg+fL4LLAZ1J16EMfAWecvP8muFhfqHKzkgPhDtmIOYmk26c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GC8pN2OF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GC8pN2OF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFA8C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784147913;
	bh=e5lTIgN1gZlIbiumktmBLr+CEXdeFk9Twr6vpryf4aY=;
	h=To:Subject:From:Date:From;
	b=GC8pN2OFrZvYoRS8743gY609aMPACBI98Fb/VdzaJsh959Roxj9QqJzL1vpCsRST5
	 VtBIPgHLvNEkZ8pdQRevpLOa19g+GQAXsyrmRL0SJ3BdWAJaejmKP/euGiAA+Ix+vp
	 1s4LcZGzBKLfGENJJquzTrRhHtcbrVt7GgmhuMxXtDXbUNPyC+KiAwyz29Wh97Wrq8
	 gaN0UFGx/PHA87puPifeVDEc9hByRkl7tCKU9YQokwEMr9E01gibnpxO+T/aNVlROM
	 QSUqzIdkVSGJGeC3NBZpCsN+7KiTFS5BwAGTQHZI8STDD5CmPiLiO6uxYexm44bF6b
	 0Wl8jl94RZOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8467C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414791368.14110.2296973890084005662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0236240ad5637f8e81c192e1872606c8467418f1d32e0676055122c38f114f92
Date: Wed, 15 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784147913
