Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4005717D2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746676794; cv=none; b=jSIwFD/VsoRKJurjRgkdspGfkiGgZvTUJL9K3Xu8ItlEblXmW7kHpdXo5hkdsv6gnSxXAro9DqRfjMK+ERDZfdJYeNSV6dl7w/Yrtg5mADrHwTle90112T3tHtaotGEjUnbM0XR3/guzC2gf6DNu46N6m+HB3wtPEbDijrDVeTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746676794; c=relaxed/simple;
	bh=GpH8VuwqRxTUosiFGB+Hc6bFqb6PzlVvUcDv7p5bSH4=;
	h=To:Subject:From:Message-Id:Date; b=gl65pdqfLobZlsOcX3UJPPQy+M7QSmuIV5sZgFreHeog4nCbV5pl/bBH6/IC4mGvrgO3HVpv84Pt+hAX4mN4laO1yD0hymtZUgFgbU+wR9wGba9cy+uVcF5a6/gclRON798ZzRA606jO+akSYFepIRguiVzyz5yEfrf9AMobpcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvUkNBhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvUkNBhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4378C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746676793;
	bh=GpH8VuwqRxTUosiFGB+Hc6bFqb6PzlVvUcDv7p5bSH4=;
	h=To:Subject:From:Date:From;
	b=JvUkNBhzBUZPdf+dkpELCELEX/qjrp/TlI4fwYxax34Cq10l+1pBLAFmmI2OSZ842
	 xw0LUhmm8Z5sQaYGCA29QtNLcyWyicEykGsGFkd3IdOg7NBWfq3gJVExyVj0JD+aIe
	 Tpx7dQ4OJiRqXoFI+8k3iAF2xXDbBsF3yM8dteqQ2U3gsGPimTFQafAu22dCLTurVw
	 r6Ypv8g3MPSCgFaUF7HN73pG/bGiq9WSkHpQTvRPBwHgS9B/ngsJt08RKDal8oDxMQ
	 /HfE1yudpWbmjTUsQDHDegiog+j3vltoUvgSAdk8vy0BrX7IK2Lh5HKN383SUWZG23
	 0ZOXODwwBbzPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F28C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667679357.10201.11811811750499464821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bf93efb50d82a90485133df06d75ff0ec8f2098cefd412bede93510306514e
Date: Thu, 08 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746676793
