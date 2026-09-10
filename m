Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287B8381EAD
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789011634; cv=none; b=b5z4xZkUe/sQ6hMUV46+UDDsON1vIXmZhX7rUdx/CkcyviWekPMluFyiVsjRg1KThGLUsKBeyOH0RxVAGnUxy5Ro6u8iE88Hqg3tlld6MeNEzLkqDWPEtbKaAZhNhBSGFUvnPjHmqAlLEWy1tEMe/LeSYdSsginXgR0Sgp2iFyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789011634; c=relaxed/simple;
	bh=ySqlizPT8JGDHn1NXB2nDF4a1n2g20fyMr9XxVJ09RA=;
	h=To:Subject:From:Message-Id:Date; b=nk37mYjTHvC39fHD3O7d3pVBQpdKVtFRbsEwiVfumEUQhlXfc1Dii1IphpNBA7f8JkBCZw1cFrnGLirIGxPh4I5KcJAtkCDC7o4PObhDfG8gImNW+XRiRuv0QqecINrv8qNytPXM2oCWHdPHQU4nUlDYQmI0q0WgwByikqozMW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNFAd1x6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNFAd1x6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4A1C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789011633;
	bh=ySqlizPT8JGDHn1NXB2nDF4a1n2g20fyMr9XxVJ09RA=;
	h=To:Subject:From:Date:From;
	b=GNFAd1x6EYImWhLp0d6ufpNgO3iu+rhzVcLADtv+VdS6m5NztE4F9RKSQLPLQSEbi
	 GYLvVXuYbRTw8d2NOwQ5YQ1+1MlzMlb+3fdWFv4CQt2Hmceyqv0sRHq8qqCxFxsUhn
	 UMuGvwhcS7IsCiX905l5GEjCcUHULrQt2CkExgMXhMTV/FvaJfbMMCYD6N9K7jJH7h
	 kCYdjHjFQfu/ePDbXzUtFGZNgnen48lRLP2873mMFzMR6ruHVo/thqIfor3LJYCirQ
	 FeOQB0ETQ0C9Kbr7+400GBi8P8wlJBBqiV4Q82I0BkpNDPsRFhQExlHF9SQZVCYIgA
	 Kow7EfWRUEwOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC6FC79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901163368.4281.1348876873069590450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8473e339b0324608dd238c0247d8b37ce7729784296df68b8769390a7360a967
Date: Thu, 10 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789011633
