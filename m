Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EC393C09ED
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783537114; cv=none; b=icOfhadEPjza1IEm4gAGyIIJKysxQz5P0k0J8aAqrTZeyJsk3C4psFVeuuP3qmArXckf4sS2FtgqTH4+RYcraBH9JeHtft3i/nPPhTEfcntXwF622VynUlNGLYqpeYR00NlSiupwu9++SsIdjrmL0QNlkC8fRDHoaU0nf/nRhKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783537114; c=relaxed/simple;
	bh=M8YnhQqjfH1mg57V7hz355mZl3UTqKObNUU1AIe9D/A=;
	h=To:Subject:From:Message-Id:Date; b=q2QOR9H8fru6C0cb4x7neHnYXc8ZQX702q1cTeYH1F/Ejg1+FtX+CW389xowWbwXMBAV8MUOyBkunlVq5y6d0GUkAIHSVSj12tXl2XpWYO2zRwuYCUFtkSo+wqXt23xSoiPwYO78ItKjrJECbzonOFHL2zNok/1DQkY5+82qcOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ2pjRzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ2pjRzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB66AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783537113;
	bh=M8YnhQqjfH1mg57V7hz355mZl3UTqKObNUU1AIe9D/A=;
	h=To:Subject:From:Date:From;
	b=IJ2pjRzta8VSFIQ7/sVTjiEqm/GUmy8vYIc9sQEyq3SFnOfq+sxSV3FManAvAMohX
	 27T+5OXSPiyoazepD8vFZ7R1/6p3miOZNR3XlrPZGngwItcL1Qk8J7nLCDhyUbxSNp
	 /6nNx4J1fVj7l1NQV1UbNk44QbwzyX2btM6eqADESiTpOq1b27ae0YN9hvYjlhIAJE
	 EF64avOYXeXhCVWzAC+tZ7q7Wyg3K7+ISJw6w5NFBBvMuI0w9oXgohF8kHwT4PHLfO
	 S8aYKrAoNQsvovRYCtFhAMVvvTn/Fy7gM4ABvFqMI0FhdswQR4KBj3d3PsTS3WQwO/
	 Izi+K81VXpnIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97A0C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353711368.23432.6634281736183043087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de5646030ce04aad6734a7b0f9f1406b15c77a2b6eb345def42c487f3f3b6d6b
Date: Wed, 08 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783537113
