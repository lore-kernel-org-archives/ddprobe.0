Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCF68472
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791771634; cv=none; b=sFiiOElyr6Tg6ANzzEtcSquOa2uHD2E4xWHT7kiOxnstPqJoJH1yWRK9wD8BNpf76A1Wg6DOIc88hpBO3oF6q+9o2n2X9f0rrriVDED9uAFqC3Yj3fggyN7/Zc9dDQQznTUrti18euco+Aqw5Y4FPjGme8Hc+VLJCmKanRsTng4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791771634; c=relaxed/simple;
	bh=SNFq+xyMFq9q3QiUqJ2lf68uLU5UiInRsNqRq89g+gQ=;
	h=To:Subject:From:Message-Id:Date; b=Jw7Ia2CLLQ6zPrFbIXfROiBvCu2evkhuoRrJeMeM32W707fOkQo4+DI0gtzw/XD4ZVEgfQD7HcRHT5IZEgMtDp2Fg2YNA70g+o5Mpu6g3Gh7rzX+LRFq6eJ+cDv5Or8qxeQlDGFg6uivfMbBNJN+PU8TmF/emljXInyivPa1Qq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMaZuPXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMaZuPXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC15BC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791771633;
	bh=SNFq+xyMFq9q3QiUqJ2lf68uLU5UiInRsNqRq89g+gQ=;
	h=To:Subject:From:Date:From;
	b=LMaZuPXPxRuKqXRZNjcnkXECSUJ8Veg5CePPXK9wO8+trkSgKax4Msg0IPcknJPQq
	 z02W/CVVDqhR7ReEM64g2dOsXK0LcRoDqb0j2ujYz1pkuTcJ4mU+nIb9KrediW1VEz
	 c8iNbrP3Xi4F2LUqVbN/c5E0ciwlD/2h7RBH6nbu2f06I0Sea45YWevF2hc1O2z+sb
	 U0g92IDF7fqM3zvE0vKPj578avTYq41mxSSRT2tXvPxS7bVmw5VnSYO6jYOcd2jWMk
	 mZfblC2iog41sHfYgM5eGYRC5rdkM5Fs1eBZTcOABLaRSKvzou5QICx77R9b76PqSU
	 np1r9mJatiKkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9724CA9EBD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177163368.20710.6371050574159094585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 833bfa6bb022fbe93cfdf1f7ae1a42d50f7aa50c951a0bc8dea6cdfe73556abc
Date: Mon, 12 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791771633
