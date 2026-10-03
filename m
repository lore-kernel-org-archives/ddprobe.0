Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2042BEFEE
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791013834; cv=none; b=jM87TVH1tzoXTaiaaRP5Z3C/c1pcUUfTQvFggwfvXdomAaOkLGzgzbaPD+0bsJmoUMobK6MER2NC2Jp5CcjAkWJDSLUrlROsFIsTh1FFXFDI7beOIROKxfS/Ls8JXh97AaYQ7I2tUxRmXxJ5FJojWZ073M9DqKVQztpIGZTHjIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791013834; c=relaxed/simple;
	bh=c5aaht/v5+RKjLBV3B27I/oKYfmH2hL0XrEw//v3daI=;
	h=To:Subject:From:Message-Id:Date; b=t5pXTBC3kHRAIgFTGHYi08i75K4eAalM6YhqDBtTH3YzSNWz//bPfdmZqEorxxjfycI5lk+UjKCGxtgiUUFUZrOsWzJx5uvIBnIMIwrB7qX0PZnDFMa0leknPGcXjAbGW0AhOfVH24KHyggwZ7vJFbl6EtkB4bmzk7hoJsTN+Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2MXS6yY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2MXS6yY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEE3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791013833;
	bh=c5aaht/v5+RKjLBV3B27I/oKYfmH2hL0XrEw//v3daI=;
	h=To:Subject:From:Date:From;
	b=c2MXS6yYirU9hBV7K+GvSfv8rRxA75ELL4JhGipDRe0/sqyOHaLwoxIan1zZrI4Wj
	 CrHxLc73M2l4bUye1F4PFL0fKR/uP0+UkF9/ar8KBTnUeArFd6VgfS1vjUVDXPIdMb
	 YmxWmhR+SQoP9fC40fFdyiG8juRR2awwi+pKoMuDnZp2lP7MRleTfZrmxRN56XIezU
	 CEHUSN+1Dl3KtFtkD1OLggwlAdmqzip5V1UDkyKSvamIYZayDhkPZ3Bkhumw1lBYS6
	 e3W4m/V8a3TQ4Ba11JiAA0gCw3ojpUh0qO44FRKlmyHtKjddZFQaCMe43mXytE350D
	 jzieyjseQpSSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B67CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179101383368.8722.16445213484309843089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c78d08ab13e520b335594f9492dc1b3a27893a322dff488b5b8f49cd21428c
Date: Sat, 03 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791013833
