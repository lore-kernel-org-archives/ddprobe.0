Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170861D12E1
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725076554; cv=none; b=rUOVchlR811EBI2emgWTrMuW8pdzWYvyTV2Y6fl9iRKuc8q1vamN9Ei5otHODfecXOJ0AaGzPOr/CsRwmylgUrnnC35OsZRfTjtSUZf7tVoyoyXNS5QXCs0A7jQ7BcxxqM6soYj7lfElppZ/R6WbPFo+7K+9wA3JrZZ3BlXlBgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725076554; c=relaxed/simple;
	bh=ykFwU2DFYJJlselt/2E3g8fw1QPKB30p0v8smt1aXvc=;
	h=To:Subject:From:Message-Id:Date; b=EelUztrZ1RtPTPDSXhzKOyHBJ4FuAyU/7Ca9VuGGdKG2CMMBwBzmfRQn88UvWyzIhjl1ZhihTJRZXt9reTyb2rBXHD40OYt/1C9j/viGbwcDYZjKsfqQQ8/cy1iC2ktFjK/Kn3wE8H3UNK2Z1Tubt/tWD4n8cb8UNxQiF7jotmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbhYrQXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbhYrQXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9687C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725076553;
	bh=ykFwU2DFYJJlselt/2E3g8fw1QPKB30p0v8smt1aXvc=;
	h=To:Subject:From:Date:From;
	b=AbhYrQXi6lSekcooFqG0meMznqiyom7/2hBxgzWkbPdzvB2hOHuQLpr27Mx6HAzDH
	 IMubAqmRtLMgThBI8SWhltmqltrTJSke43x59cwkxDKLLbqp+wFyVsMErfD9e3F6H6
	 nr4xYCcJExqAfIc36TgqKjMBt6a5DMtmBAG7HF763U9X5dsvUdVA37CDExktlD6I8M
	 Qud3kXNvVxf45QiN0F9JS/VV+ZlFjH4AqQGNOmle07IT1OKb7XX2X4uLhMJilaVoPe
	 g1FRljet1KAv4uJZY2T4V0rX4tXPBdq1juko5EoVSM8zX2P3u3DQwhCWkK6BVsqtpQ
	 Hx9xWXBe6ynnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EC8CD1293
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172507655358.9467.13868164100681681201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03f0af9257329fa208db145de11c1e7dd1bceb9d63f46883955aed88d3f936e8
Date: Sat, 31 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725076553
