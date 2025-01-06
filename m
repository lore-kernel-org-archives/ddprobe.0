Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535A550285
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736202954; cv=none; b=bFhz77Lb6nD3eSuaRcaZnCeImulaCQllxcxZ+Drhv2YzcnPZSqtJYkBh+9nxWWUYq6DjP8s+UBdNKFkPIqi2N6zxNJB7EcZkOz+NnN8sriNyPbHn1opDkf6Es/RnirXFbNAVHeeri2CHcHZItXOYMbTrq+rHRUtcASzxkZKxiPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736202954; c=relaxed/simple;
	bh=x0UIdW50Q2OxA+OwQJcvWehi/YgBagbDC0L/j4rctL0=;
	h=To:Subject:From:Message-Id:Date; b=PUS2Yg4hGL/LX34JxK88CpqjM5Kyu9+dWhaaKiaFLXaiT568rKhki/hzQcBhx/a/ug2rK1hbzXsNYy1OGg4R44rNOaejTo9ZRtv9r3ApIOO6IFr+b5mot6E6LgqsJNIcEgFXItsAAJ4itaW5g2l7+vJFEkrgIzGXpkeZV27PKzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vP92A1w+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vP92A1w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4F5C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736202953;
	bh=x0UIdW50Q2OxA+OwQJcvWehi/YgBagbDC0L/j4rctL0=;
	h=To:Subject:From:Date:From;
	b=vP92A1w+itiIuQgO70ABurP8/UwHv0JSOlqxBBjG6EugbDni+lKjPdpNFuJZWArdC
	 KlnAiiuyR2yt4Yn2j/4s4jVyMlH3g8jdPbxkyJurISQmlIXapmu8l6OyBBQdgnfYZ7
	 nmgsV44KLXpfPcm3zZNr8NuSnmvaayZOfsrmuo2KSLKi7L2HxfNCxR0y7zudqUGmPB
	 P39QQ8T/DHPM8w22GKdic9J+9CkugaXXk0HsD43wKsmCruQxprwybHn9icC3+f18Pv
	 Q6PSGRd+cb7ZV5xM+gFYK9Ayv3Dk/7r+iS2ay2hZOkXD1KyV2cTFxe9XrpuumWhk+X
	 PDgGjhDn025bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98251E77199
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620295360.23241.1905597960826167819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe6317e219207a1ab758a333c517deb7318f957e451c7b7d8b56fd4fbea2225
Date: Mon, 06 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736202953
