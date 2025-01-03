Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB4D1C36
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735889754; cv=none; b=BP2j9P3UYYKCm8SbBxMFuKtPOZGbBdlYkt4SeoMJgH16mzn7kPhcK+rj+wIxM2Bd/I38jO27VQ5aaEchJu1WYMfT9akWDS2TQRwCZ5vjy7oySQBG2FG8UlgviU/h71oCrnFTL7ZJ7uB+/yjZiU5pejc+JAx5rAs2o62rLel56SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735889754; c=relaxed/simple;
	bh=Umup58yTcbQLVc/RnFyd10poZn5JTACNIsDL0/flRvM=;
	h=To:Subject:From:Message-Id:Date; b=gkWNxh0JcS+8gCxGbSEfaCcWtrG9a9z6G1RIYAH45OHDqP6KmFtKtAGQjUL+pZZkTP+htbMoE4Mwghg5gb7A2WLiQGeYpxo2d2+j61ZrJQFS9aOdoeKSBxZ8bhFKC9UOUFYloU4JcqyXVZpgj/L+h9QzbnSz+hBNfrnsQgjRRrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7H5z6Xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7H5z6Xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7073C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735889753;
	bh=Umup58yTcbQLVc/RnFyd10poZn5JTACNIsDL0/flRvM=;
	h=To:Subject:From:Date:From;
	b=q7H5z6XtGWGpdDUzFrSqPSdIoVy+HsqRv8HYf+l9wJGvus5lsflNqFEe4qT35deYX
	 k1xovh/ItIqtVFZpYMgDtbsCArfyWD8VEKkgk9Diu07Kl62hr+/O89p2cEyFzAlA07
	 tWAOxfYYv94CIC5ebeYl+aPgFo0VhNh3ANXuIJfhOnsM5U5iiSHYPfTBEVc5GCtBod
	 NbzUlWVroJgC6XDUCbTOstNVnI9BgFbd5FOsUwBfX1UAsSDFrlFJjpNDhUCZv52xLE
	 Iq9gklMfVEde9ExOWIITWujJh/OKLARVkbhrps53FTHhAtMwTG1IcIl5E+AWrpLxrr
	 L88MnLqHDiGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E8E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588975359.27804.9899525774537264429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e9c7546161c1aec1f76b1e42d21195d6b20b6dd900d1205e388958cb08f8b5
Date: Fri, 03 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735889753
