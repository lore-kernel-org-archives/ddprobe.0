Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95E891FC4
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719642863; cv=none; b=JSfyOjwQkb0HlrXmDeCFwsRKowEJSXWaNoDLRyYB2y//vSVTJ3/9SmaKL7E3O+/jI5maIQUzscpOjRiCrf4Vk4aZLABPuZ4uSuhEkwxO27irpU+b98s/ec2ciE5Sl5bKpoSvrNMNt1mWvirAzhgYvanNetT2NcNcepbzmes3hN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719642863; c=relaxed/simple;
	bh=WIVNX4DIJK9/xNsrw4txohFd8/bE196uk8Jm3bOUiYE=;
	h=To:Subject:From:Message-Id:Date; b=ap10Tge9dWDMLgEgbe9+IYG5CZdmbBb6tTgCUxNCVKByKqGi7ayegGsN01I2c2KJ4acbpTWOW2e0wUIaEOo3BBv27FZFU2F22hghS+xf8kWAF1Dl3oam8XaVOqxPZaUjFQQ7uQ1IZkGcCBU/O4aCERFfpCvWDMtg1iSGYg43uKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObY1a5wP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObY1a5wP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1E3C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719642863;
	bh=WIVNX4DIJK9/xNsrw4txohFd8/bE196uk8Jm3bOUiYE=;
	h=To:Subject:From:Date:From;
	b=ObY1a5wPmunIXkXYUZvN0VGH1cyWTrfD+aO/d6fyjJjS2y8MNwjDVkum2h2aR/D7q
	 dd3RMY73SZJC3h+hGs2xi38w2nsJ0CMiOdjRBoaiJcyPzk123Hk0yON35mesEJAgtT
	 fLBBrilmVLse7gqk/m2u38mSY7Y6sWAQ/L9diGT7rPAfwrMYYoM/qYz7wokDA/gWfE
	 CFreF8CWNIAGHsgQiXmtuliIlPeyvkRqp21OqgfCGMaMwnKePOQW+T9S0n8zSPZUk4
	 vhZsXXHp/rCbJD79l9LkKFd06B67tRAGwpx+3ZgLRtTT8fN2EeGR76NGSqzj02DjFy
	 ItSs30jOGHN0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D482FC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 06:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964286285.28411.11266874480108074433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee42963ab9ded5e73daf98a4780cfd913b29f9a6b89d401e65cf079b4aa8361
Date: Sat, 29 Jun 2024 06:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719642862
