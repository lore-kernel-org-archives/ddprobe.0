Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3689B3446BE
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782152794; cv=none; b=D7qaL/JZvRIIln9Da9oOYKaKDrOLFMMd9ylJ3+KutPfz1wmrWAC2Spoxc17mTbzd1y7S66LBLATlSlco56D27AwdjUDYMAQJcJJtTsk6LcbZFOt7UyFxvGBdahrQj/h8cV0GV+TMVMPy/z97ETqnT8s2w/ZGGIUwMSxzhAcCqx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782152794; c=relaxed/simple;
	bh=3gsNR2pRdQv1Gehk3tcLtuJAfnCGSuZv7GHgfmv4+Cg=;
	h=To:Subject:From:Message-Id:Date; b=t9wtDxH6lJAX72+Srf2R8Yn/AeN8OYE9l0XQrYrY0JcUta7RftNfzHcUu9m8uOFiGpnzQ9IEqmxmQG6FywLf+/e8Q/MibGKZBspRsvHdBseGafJuPfjY+90o0IKpiPKzrLRg3+hW+k8PpJzk3zEx3W7iS6NWHahm0MZi1iNI7bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGg0qnjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGg0qnjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E12C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782152793;
	bh=3gsNR2pRdQv1Gehk3tcLtuJAfnCGSuZv7GHgfmv4+Cg=;
	h=To:Subject:From:Date:From;
	b=VGg0qnjcOJpLW16tHW/OXS6ds9UId3iWXO/q8NfMgllCBe8JzqS4EyAGlRs1H00j5
	 8wg6PPAWEgcIS/N55cC693QXxAqNPMMMJrXyyRR0i/0ziFxDYZOXs4kb2KsMaw4pQY
	 C9L33MEGiD0vknFHx2VxxqLXn0YnTATeKAfUuFomG4pQ/KwOmua2yuozlMZE9MaUJk
	 FFcri1MypW/Zvn/zW/wcBTty2kshmGiVzClI5iLmMZy90KJJxVlBj12ZMuzVGXTENM
	 pDVCT5W7q6ITxT7XZNEB164i36rJi6OQlq6FLqWWGArnrMGiYYf6DY4YG+LzGPzGSq
	 pUbaSUvDWppoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5BDCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215279368.5810.219073198225130199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b635d83dee9000e4f8ca3105bea5190ddb1a552458c2f9ec536afd8aee8f6842
Date: Mon, 22 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782152793
