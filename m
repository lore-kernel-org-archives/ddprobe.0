Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCD7101E6
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749094794; cv=none; b=Cl1Y6W/JALMbsZb6oVQRvRWIamYrhH12mc/m4vzYA1AyI5qyMP+I8J43Ufp4vc4XBMEAV7oAVC+zfjeX7a/IssPttrsBd++/+AbH8BeSruC6/aduJpjuvSjFFlm2OXDii8jfp8GzReh3eyppbkTE7hZa+Os2MUb4jv7wxl4DGkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749094794; c=relaxed/simple;
	bh=3UQD3E2eBsuCWNRyHauHtIzciwytpJPW/QLyWGSOH+4=;
	h=To:Subject:From:Message-Id:Date; b=jbHCJNpeJX184GkRgzD4jYy8JTu9UzKLTlEC9Gn76oo8xIiMVITDwfUwmpSJU7VVVyRzUGozetQT0P9lQGQ6tMg7MXN2/dltLYNXxSufznzY6lZvbbd9DnkewsYDAQNYXyaavZePY1Bcnow0lDlJipk+HblxGkQyRScnDLuLdWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReSzstcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReSzstcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3820C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749094793;
	bh=3UQD3E2eBsuCWNRyHauHtIzciwytpJPW/QLyWGSOH+4=;
	h=To:Subject:From:Date:From;
	b=ReSzstcUTqGKq9fy9hONU3eGqpASQQny4NXmXFKZkLQssIRZmNbOsYEfFsnejNgfa
	 Sqbjd1oIsVPfP3uFNyTSMwRYYPjVav+j8Rb0xXygDLYxGSxbY8DryhASnSovZtoEE2
	 Pkcbj8L/oFEU5Mrwtck5wVz3TRNVpXLz9bD0F9c4ymFDQBFYRfoMcUC9Pa3ymNQfdf
	 aAOOiqHI8q3Hm+gEKp/MeoABbaBuCSTRikY43ZbY8nsEHyhH4JsB4E85bnQJGYaaet
	 wlsN01SMNhweomFSJUjz/fN1KD5YkMVc7leTqJ4e69cDQYl7vDFmIUoVaFjSILko46
	 2R3bm2UKg2AIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920C3C5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909479359.3224.11675307744871464058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8634985dfdc4e52a30fb50d5ccd7db8e0ab421d914ae147007fbd4340a4461
Date: Thu, 05 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749094793
