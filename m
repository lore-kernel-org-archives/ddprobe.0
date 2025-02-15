Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065378F4B
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739648335; cv=none; b=rSHUL//ixP2pMgDHKIUIOX8mSNI1USv4mlg0D75POTqpyGzsaP3BGpDOIuDK1kmqiGJQ217UCwFXBScQKaOS5iR4Fngw41+otfipHLxjSHPmGTEj0ToFpY3K9JLfK6XRVolYVqUYHnZ2nI4BeCXtGppcM9ANxTBosxAvHD84f+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739648335; c=relaxed/simple;
	bh=MJpuqaO39vKXKyWi+c/ZfLiWEUV365d6FkZiUMuPlFM=;
	h=To:Subject:From:Message-Id:Date; b=ugoUH/2QNVZKRgwZ+2ICxaUfJX/BJLufnzTOR6adIMxefEsDySPGnC1zW+zii46oE5ns3asUCJgy0KmSnRXOLV4kooqkS9vZ/ak6rvDmt2YE6n4diIT+U5LzTjOj7ENRWdyE/jwI0ajJkVHwiBqLauWQSVXuZpSjcWUWPPnzCWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2mnusqK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2mnusqK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E7CC4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739648333;
	bh=MJpuqaO39vKXKyWi+c/ZfLiWEUV365d6FkZiUMuPlFM=;
	h=To:Subject:From:Date:From;
	b=s2mnusqKwiIG0SA1s33NYtGodDkb5DNbg31RF54JYkjOrxbjk0MyJbl26JtHErLAF
	 H8dW0fX+UuAjcp0tAQUXMWr0hc128O1ob1zxUilXKfFAGksqs+evBMLx1H/USg7k91
	 uxf4UJfI62TOrFwjhxWXKtWifFF4bcVQHH9XuVVrgSq2CDobI/i6SiFCh6EIrRZ7/p
	 9DCu2d1vguUQ0Zg61J4fPNvLEgDNdJfllbitpPh9Ae8Nac7ewkxOhtMNbpJa1CtAU0
	 +PiBbJO2hEK9AHGHVbEEmiZHfXjNm3VYNT0TyqiTK4UxaKPVpBMknCaKDydH77s28F
	 0uddTRj+83ZmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9917AC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173964833360.29049.15286811099841822017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5345a90254ba416a70f75e907df9b2b60f511502ceba8dc17049fc93bf9052a8
Date: Sat, 15 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739648333
