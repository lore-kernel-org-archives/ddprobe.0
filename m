Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5766B78F3B
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738665954; cv=none; b=MNr07A/OeqRc5yvYwvU/gABUD8OMkCpTikc/XIwfJRyHXIJP8nLAelw8Q8CXkXYehUCXBtuc56f0+9rkNkPHwPWC4kbLWSllRYJLew2rYoPiN0u+/qY9ExBCNlGLxeCTedXNcoqPN9ygoow1JQUJlYxpKb9B1pusU2pi2f5iF/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738665954; c=relaxed/simple;
	bh=xLPpN3Jws9hW2RSQnhkg991G7iPfuhE8ptJu6LPQx5Y=;
	h=To:Subject:From:Message-Id:Date; b=OGb9XEh9hhyLQ59qUy4q18SEhd0oDUvRsfj4jGF+scnpYyaPNhVi1Yv42l0lYK7eS2l6pvi3scPjmmrX8SyUIWy0KIc/4Frx5bGrdHJD7eJpDZTOgjJAob4ydREkzuSFGGnjO40p1jTeaDd3DvMGRWXnZtHzTYv1v15bLdYHPSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmTbzRbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmTbzRbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DF1C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738665953;
	bh=xLPpN3Jws9hW2RSQnhkg991G7iPfuhE8ptJu6LPQx5Y=;
	h=To:Subject:From:Date:From;
	b=kmTbzRbuEcDlHQUT5EGeBkKTG1EAbtOxGIrMRiZcFZoIbUWY2QmyaPWAcxVeJCI+D
	 dW+rcqhiZnXS+S2Y2NHe1g7c9XzokM5qPrr2bX51sNxXkj+TO1KeTZkknFQi66TKX3
	 HfrpgJoS869xHRyjxNGDfhu+s6WzgxCDOPuosBaVl9Fr3oWJGRUEulKIlwQ3K5ENM8
	 xWyqoU4EtO0V/4p5OCcnfq0C6Kj68axhtn04y/Rgw7jEdLfZEkCRHPlR70cz6zpDQS
	 2L1qulyscfFBm32BYh7OdcDpHud7dzRA6Q66eXsMJrIm4o6HkohF+G1rY/yRPgOd0n
	 cNyQuK/VobbQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B42FC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866595362.25702.14107051516162430877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08295bdfb513caf1340d614b3f74833d4587e72a612045c3154a1778dd9326f2
Date: Tue, 04 Feb 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738665953
