Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A93C2627F9
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751870994; cv=none; b=os+Kg4d18cq+Vh7+l9H8jRGqm5/txM8++iLXoic4amZ3tYNgHKjEEbpZD+li/xofTpeG5KVZ2YZrJwnyIB7RmPfecKYxPPbDDZ7OWW/c3xrHzNuDicHKiXelC5bzttda9zO5uvCaSWlbT0iCg7gy/cN++Ytdoh040rf9k6ZnRAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751870994; c=relaxed/simple;
	bh=ishmioKrcrA1dAOprBXbLZ76MwRe8z5yCw5ZOBmInuU=;
	h=To:Subject:From:Message-Id:Date; b=LT4mjo4f5RXL2G+zugG4I5beulNZ45UhZEDigwqO882S0wUwHx59wf+g2Qq3mU1qh8X1Uh30X3fG5mhun4gExrX3QmYmv2kQ79Vg3BGLZcTlgGiSeFG4unJgCaTtgJmh5VEbOu+ONbTGw1EjeVZbp6MbMilLCkTGW+oI56mkWeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XChWRBnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XChWRBnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E37C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751870993;
	bh=ishmioKrcrA1dAOprBXbLZ76MwRe8z5yCw5ZOBmInuU=;
	h=To:Subject:From:Date:From;
	b=XChWRBnRiGlqGIvLUBhtco5O6ZbnCP0UnyZxNxh+/S98VhiHeto/v8PlE0Hp4tUyj
	 S3UeqC1HsSFmTv0/9/3zuMPSJ/TQiz1nvqFhqBRrcctvcMSKTFTpMxNjcOljZBuSuk
	 6pKJF1qjNinHFCd5yeHKA1W3h1zH+4S1hnPm1TP2z76dJcQgs+1Rxwke4Ua9ja7gdw
	 p4GYn6JMzDFDkOMDyuKusIfAQoj8PVXnC7XxKJF/LAROpO39TDRgtyo9pAwmNhwZcO
	 JgueLJp06AvC0sHV3X3uuJsCX0DfevZiXV1I1Tnq55L8C3OLWGISF7vRpRSrXIrNGi
	 /IM+qauaY2JZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA52C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175187099358.24672.2821783417496850951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b115749529ea282deee18dde351baa4077f1aa44cbbe53474794beca382b82c
Date: Mon, 07 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751870993
