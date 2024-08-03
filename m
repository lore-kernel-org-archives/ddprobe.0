Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416761E488
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722693954; cv=none; b=N9JwBfyLSxg6VxPNKvBiHkyeBnn0gBkBVYnVv2nkG6xPLlsNTZf+mitdrUKihSxT+HvinGNF8GH3b6wqcTz+zhvqm91qFG3wYFfEJ2KVRCE6bJPZzO1Bff9h7Pqn8F2KaRtxMm5teDiV+7KQdyelBNqGXCiT+rGlH/Fq19w/0TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722693954; c=relaxed/simple;
	bh=B5kRGl8FIjvdpsTIg1W9XgreE2BKZC3/nPc+rpVXLuY=;
	h=To:Subject:From:Message-Id:Date; b=RTBMlKVOvsaH7zTJ6zQo/rhd+laS/VoFki45Yft4aB9jrOQC6pvKS501jGywTVYkHG0+QSRtf8+4mhyq6RenoNIXsMSjaSDMaijdeczklcyNoHfrSOSqFsXzUpJeZDL/NCBsLpZFjUy3GJc9t/aIHQ65mVsP4meWE8Ce4HVajT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/xcqC04; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/xcqC04"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5A38C116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722693953;
	bh=B5kRGl8FIjvdpsTIg1W9XgreE2BKZC3/nPc+rpVXLuY=;
	h=To:Subject:From:Date:From;
	b=d/xcqC04wtS0V33DgEuen4Dpy0CscRjpKdCKZ7LlEENNBszX2+B35G1v+3rObLR82
	 22vUKhtx7IacTrwh3hvtW42zAQxQGj+i0U6XHecFGzCSPtc+ws+K62cUirKCTzzc0y
	 nhVAdGxPC8D55VJQn7q3kOsVq4wsYi1GI27OUnejzkkOtji44fMJdc7tft5/nPTk66
	 K1a3Aoqyl/86w3PvcT0R9lbgXEtDVp+Vx8NV5WuOR0zmdgvqeKolmuok4d21yzFipD
	 ho7+AO6nNCILR9sAeIDH40HRr7exeM1Jmzo11iJI02x7tkEQGX0UCYN/MZfWThpho5
	 ykdjkgU3uqiDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF733C49EA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172269395368.31833.16485259258832494737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1082c9b6ed8631c76f718f519b74e02ce1d4a93fef8b8713691ec97844f4ae6
Date: Sat, 03 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722693953
