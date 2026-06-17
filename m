Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541CA165F16
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781669194; cv=none; b=AVKNvb11YDpWDAmVj7VRzwHrmy6ef6wghhD7qkrZ4dDzsUBuJwyxSZG92x2t9oCVKgmuHGJ8C3dsHmzCOB5SnBJKYaV9URE7IvlZ9rV23SkZ6zpb9Qef+OMRaX7BhqheLB9xDIdzeOMNbFDIsm1nhaOdZd5XYXIAT+tnx8q6BPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781669194; c=relaxed/simple;
	bh=WdUw0VUubHSKitYQfonrMGiDIUCP602flVKAEh05vHg=;
	h=To:Subject:From:Message-Id:Date; b=I6M0gdcrgObx4FAGWm3LiMC6pM3o+8sFHrWpkxzaJtbwk0L2By/j+2Io2zcKLXn2UdZ2IsZl45sWC+yOyx3LO1zZ1Ij33yWgLvZQDt4wKApqMn9UgW302RjbVafUMDfLo8rZ6t0tXxdTexr0dPAxLOTX71/1pqpXDuJmaNXpMjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8iQDd2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8iQDd2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5161C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781669193;
	bh=WdUw0VUubHSKitYQfonrMGiDIUCP602flVKAEh05vHg=;
	h=To:Subject:From:Date:From;
	b=I8iQDd2o5AklYapI0Pn3Tq9KtWdgYgQ9RF8y4Rz8JL4N3iXPSJojqAjoXIv3yKNQB
	 pDx46UDri36b6czlD8JNFn1qFBgJx0/1ggl1dqYZQobE/G0E8Vv9vTnCBethc318In
	 01Dh+1L6l+2sRSEyrl/11kWIu+WK7QkzgCNqMI5ADhBiBUW8G36Joff7/My0eZGCKT
	 Con16kqTR5ZmOIIhTDjYlgH+feHvpxd4X+M4UyatgVqAdjLK+im2gKGZEX3cBc5TZY
	 mqLCAlRE4PjagA/CRaDJSi8LpWvoInpJYzF/vWMEEUFtrRF4WVwTonnfPCwt4gYSy6
	 uzRots69MFebg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3999CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166919372.7124.10530593965605258517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c62e52259e932c0f64d7c6390abad982cc8ecbb38b62d6110b54d8b380d1d01
Date: Wed, 17 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781669193
