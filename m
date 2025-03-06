Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441B21474A7
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741272536; cv=none; b=Ofqe1PnQDavEiVI7BeA1hAZPXjNpw/l89aWcH1ytDEjeH1oKWyRj5QXz+XHV+itiRxEO1jDjkfN6oRwd7xM6/LJKyYvRfuexzVF4MEIfE2wBKyChgAiBBDD9UmmEekEfig6iMwe9z2k70r8HNTMU0HanFXGSqfASlMHUlb3nZfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741272536; c=relaxed/simple;
	bh=ZSFLyFx4tvaYxGBzt5q8WH3zZGZufejgHbdrxohIVYg=;
	h=To:Subject:From:Message-Id:Date; b=Gyg2A1UZ4YS48OkuwbagZ3X3w/gV0koeEnPIlhyfiKi594q2h4g42bmHEK4tiHIx1pMKusKn8ICYtuFhluwVSHC5cu5jc+YzAc6SBL9nOmLYga5SIyQkLfvVteJVNwQ9/A0sIQWYJZ4l8exVpezLRWaFEPY9WGxdGdAtkIZcYGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nK1dNXFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nK1dNXFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0266C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741272533;
	bh=ZSFLyFx4tvaYxGBzt5q8WH3zZGZufejgHbdrxohIVYg=;
	h=To:Subject:From:Date:From;
	b=nK1dNXFZlTtxVfcR5qu6dgcksvTG2V7dGItI6KgIPCGvCSzrrhgANeqCujDmecpPE
	 JBB9iwN4OKrmnMA3EVvVqzWGsChmMCn7Y6ePC3E1J3RD+jV/eNWVWizA4y5iIygKeI
	 9yVJd9+Zsvlcd0OLvUwav4+KrxpSJzNarVWyqoJaj7iohQXzWlxIZB33KMYdhr7zuM
	 f2IyXA3zRlhMJVRiWtocTHeRYJ66bRz3nYoxaP63bFXpnAZDple5cX2YkEyXtgKEyL
	 7oen3JHoooN7m66r7PAGpgLSIY5h+uJLEE07yWd4z6+q8aNTFBceAZwrys9IrnNlZM
	 vaOucHWXiHEoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C95AC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127253363.12129.9509027098426892342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c858b1ef66e3b8050b4109dac161927741edea6f749f2076433a278a8bfb20
Date: Thu, 06 Mar 2025 14:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741272533
