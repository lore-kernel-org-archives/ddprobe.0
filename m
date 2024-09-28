Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E61917999
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727535954; cv=none; b=EhvtPlzuwp2r33G9WKe78s4ILSpedhsJiVi0h6D7BHbqUB+6iax8unXpuNylhIyq4j3CN4Jf9ewg6YuI2XDKozgXYcYKF0iUj8ZTGhmXbQuuMX12XKTF/VZ30ViiKu4V/ZuZ4DG1tK33Hk7+2Fr+hkI0q8vhSdaojvndUx9I4Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727535954; c=relaxed/simple;
	bh=rWEMUyUDtbBHC0jlRExwQ4UuSWkm3xon4SMLYwGD8fM=;
	h=To:Subject:From:Message-Id:Date; b=CMpyUIWIF+CvIQP8te3fc8LV4tqLom7Vr5d3q4yJaDdezQKHdc8xV9rn1SBCF4s8UGaNWFA04wwFrfidlsQtHc6/lzUS+RUjpWvEdQvjpnPxf5BXPFsdgZdEVpGdqd2t4YSYWptljXqj5GhLtJA7g3QmBL2dTN+vOAKSz2driKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFoL5hQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFoL5hQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4FCC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727535953;
	bh=rWEMUyUDtbBHC0jlRExwQ4UuSWkm3xon4SMLYwGD8fM=;
	h=To:Subject:From:Date:From;
	b=TFoL5hQS5UgVRv1a0q5T1iPvcmzgb0o4VnInuZBzFgwvhpXZXf1ryQ4rz6BJJmQRk
	 fbPFezD6s8GreZ8aFSIIWs910v7KjEVkVJVxtJYHWKzF79nPTREHVtqQS78LnxR3Bx
	 EvmgH6Kur+Lj6ZiHRVAtXU/+C8lX8/8gJpmrwRLk4IJRj1W5H+j98j9t8ootLB4kDB
	 6nZcVXqpiIrLp5EB2nVWlx1CTaKj6MHD3U1jW2o0551DaBTKbXcDIufXmoyjB2wxdQ
	 w7uhiQgOPua2iKh85hCQ7GocNLrTl1ggsQUYVz4J1GdlAF3f3vUTbGkE3KWrUOhe4f
	 fie8+uoihreHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983C0CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753595359.30808.17288247170605661138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99345984a297cbeb52341c212f913848a0aabedcf63be73b2a0c004b3dd72abb
Date: Sat, 28 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727535953
