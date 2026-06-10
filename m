Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9EC242D9D
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781064934; cv=none; b=raq+OPJcHUqRUpcYUykumecj3o44eN3UBbv+GkZrq0mlkxbTICOkJh/k80HJotjNH+UP2r1GaGwJA3tt9syu5MMXz8LkQlTlqFUtvbwTSrOXavM8qZepfhNaclQYB7neefrf+xOqXoi5Az8ur0DkLSfETbVZrX4wCYyGMulQN1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781064934; c=relaxed/simple;
	bh=K644OMfcqRKNBd6bvd7JUQ17N3+AMrx/86EcRhyfS2I=;
	h=To:Subject:From:Message-Id:Date; b=aqG1CCWVWTiMCv7YAmRfOlS7tLFgadzVIn20XvN2eSCMCBzMzZT/spdM66eiJfbOaAtye10TQrnJ0Gwn0IEMIhlyoA7hv5ue2A1egkYbPOIgouR1tsM+X9NrKKhk+JetAUX/UVkdkoF3Js1cxFIanG0EdMNk9nWkwl/JmXt+CYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Up51J+Mr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Up51J+Mr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34C2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781064933;
	bh=K644OMfcqRKNBd6bvd7JUQ17N3+AMrx/86EcRhyfS2I=;
	h=To:Subject:From:Date:From;
	b=Up51J+MrUf+rR8nxl07D6/nDIwMJZ016FBtq4wzkWKehQHPgaJJdkrUe3vhO3IzJ/
	 7hrPw71sSHp+QRoyzCHMYrzAu7ajLt5wljC5PyVuBZA6wvIv4lNqmlTKAXrKTt5lcy
	 4V3xL9VDliNv36e21h6aWKfMHJi83nP858L/bCMk6T05VVTie6gN93OsKm6mDK6iaz
	 7LTPejfjAS8i4u8o5AM7xZlboc8l67ScL1n8bfUElGRdzaE5rjDZOr+SClY+MA7F8o
	 R51aSCt4XXEDNAlPg/WrOIeBTeRN2mI8rrCDyNnw1MVEFovkjpwfCk1Y2Zck3ypPg0
	 2ovjnmaHWyT+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCF0CD8C90
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106493369.20532.7710119022884431417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfec5a89c50f578178169927a73120cc10e5016d9ed6232dcf032579f7dee36d
Date: Wed, 10 Jun 2026 04:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781064933
