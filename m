Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B881D5CC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759098594; cv=none; b=syL3c36687zJnwkepKt/NtFCqXq0gL8oiug0/cjQligGITWLIpPUE11HNpBk6ZMg7v0wjDPRF3nUG7rxKgknzwZvNLxg/yYQV8XA/1jIgczFFokMMeidL2VQbmCnUG2+Qc/uK9e0uNNx7xAlF+1dTlLKBm8p+VA3v8jnLyO3elQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759098594; c=relaxed/simple;
	bh=eDPgiVGan1KtaLHX6hzWTOBkNYlHfx0KdafyFiWMBBw=;
	h=To:Subject:From:Message-Id:Date; b=XscryK9s4ndEcWZDv5Dt66YtVGGkL7p9AA54AV16ONiRv+ErVU7WDtWu3Wz6HbrGYfqBhI2hn5lXL/j4nJ4cMk/vm/8nzSlEbbsEbww+cNKI4E4G0VP7jwNMpjeWoGL0Zp6aJYSHDNYG2tJurFqC97821ylRVALzlYuHxsbaN1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GB2ksiad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GB2ksiad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC17C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759098593;
	bh=eDPgiVGan1KtaLHX6hzWTOBkNYlHfx0KdafyFiWMBBw=;
	h=To:Subject:From:Date:From;
	b=GB2ksiadQU0GXKQqb9BcAObXJz6RNMjfXd1iDioxiMnpgIXGRW5FY0fk/U5Pa88Jg
	 b7hljj+cbghMfzYadT0zdtQMzulgba91Qc2d95OZrviIll5GRw/bfNl8+B2qncXT4h
	 +L9vlY3GExXIo9tI1VSaq7G3GDF2g+qZ3sFM7dkeDP2IlVv4VEkyw8g0iDjH2LaH/h
	 os5ZG4JjIPzBLL58+A4emijsVckUpWOiksOFmbuET1UKjyuofAUcYJ6/sCIisV0Cq2
	 ZSnhEfarq3NzDVm+wz66fFx3fMXqWv1EIyVzaFlIh2IcnxQA38aLTZI/+Vhz8Qok2v
	 1Q/SP9KVvIEYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E8BCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909859357.29486.4319645307424880682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f071de71195352fd372a83ffebef492528dcbda36ac15d9758b031aa321929a
Date: Sun, 28 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759098593
