Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132EF4DD3D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790617234; cv=none; b=qVxE2kc9AJYXo4LbyRTVU2XFk3gOn1xBDkogSK9Ep1lx8f0ZXihHZ0aQr0m46Hwo+ZPSc1MJVvUNLhhuyV1DIOcw52b5/5tYc+V9wyb6iWkSfn90Y2KRn5H83op8OBjz0grwEyRsatL881+wku6RQKHiS6CAlxrB1N44xoSd2rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790617234; c=relaxed/simple;
	bh=6yBFOrtbXY/Qf8iKRxd2LkxEX2L7pN03OunWn9MMJYw=;
	h=To:Subject:From:Message-Id:Date; b=Fk3xtxopwbvXlcrjbY43u7OD+yixKCQET1GAkNnUycsHS/EqDh96JHgs44II1Zz8yT1Ra7Y9t+1CyGN8+tTmFGwvdryIURvLKhnp2qxWvvSzhK/65Sk9koSaVVMZ1i3y8AAr86sQudnR/yWZpHZFIS20qV5SE1100TYZYyGD6DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSVPqsH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSVPqsH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5CFC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790617233;
	bh=6yBFOrtbXY/Qf8iKRxd2LkxEX2L7pN03OunWn9MMJYw=;
	h=To:Subject:From:Date:From;
	b=KSVPqsH3Q4iNK07IxE1EprLYPgVQE0CMAWOttSmte/BpQWcjXQfqu77yrM/gQy1tz
	 wIZp/pdSwmKY2i6Ks5oEM8TJHv7BoM1p+p44YvMCPz15eSmp2Xq4wLqgpTurhhaOHe
	 vos3Pe52xBbprv4+FEvPJu9FVbn5A9bNXJoPf54n5BsrRFCSofKDliLHuqb30UjdSp
	 j1VXvuN4ODo3QTkg6aacRBDiiwihgH0RwD1tVT1S52Jvkx5NqwmXr4e0QKh+bv/y5r
	 U8CkITVhEOiRfCaLfL+GIzhcIB6huQV0EfWtsL/IexHJQAY1vVKZoKf5CLWw+81Mpp
	 H++p9rNddEdeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E27CA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061723368.13881.1664367907324633785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820a68b22af0bdd34924d302ca51db9ced442c4a98a475496e48107774d7737b
Date: Mon, 28 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790617233
