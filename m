Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D2620B02
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707814097; cv=none; b=a6E+Qfi+3OSSy+ZLwS7Rt21vhUfsW6/KW6HUCMDCvAvut9aYppbJdkUBF3u74KwvoPAtI0X/32RgAP9mvKWyGDJYRvpREvnTd/fdGeVm08aO9FJcyXyN98gRmiO9k0pj37ObuJ+gx9exJTUicGsS3rWfezXyIJczmQUdRmuAZj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707814097; c=relaxed/simple;
	bh=+ovomod42uonK7L9nipcOFGnqRqQZBV8MTYKhyuwoFY=;
	h=To:Subject:From:Message-Id:Date; b=gamx4MZqSbZWsZ3dKMx1vD38ZVTUARJySN5h5CaEeBpgAitw7tN1BgH4IT5I1iy+BJYWishWDaPrLmzNjrW9kiM0bIZV+YubE5C3Z2cU/9RGulsb5xC9pJhgRuR65KYJ6epjpxb+wIDA8UGgGsa1edpHp79JWzeRZ3gXxMpSnyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rrc/9EuQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rrc/9EuQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A69FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707814096;
	bh=+ovomod42uonK7L9nipcOFGnqRqQZBV8MTYKhyuwoFY=;
	h=To:Subject:From:Date:From;
	b=Rrc/9EuQxFl1qk3PbrxZCTgVj+JJZKSVXqeMmmahxodz9fljEGeGAHW7drZ/YgIDp
	 j5YnzsCl63+EDXh3wSGV5rTt+sMjzYjcfFn/QI++vRgwxUiOTvk84o1y1JdrcIIIdl
	 rXuQBrqKHGwNL/JeujaKvjTmWj0RZfxQDNVIrczFjp8+UcIjQKJJuP1uOGMuyf+Iun
	 qUnIcpXGNIaTfrY5+bJdkMR2Kb2tgSbVaySgbDottRxzaySmdVD+I1xnME6r7kWT1q
	 l5KsZYEzhQmHRvvB0ItT4W9e5w180WLMCidvQ/KhYzNqUXVqPJKA7kjDRKDCTIp+N9
	 0LH7LKEoj1YfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF45C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170781409638.29703.12534100120726657542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c2aa99f37bf86f2c61e82c3fcaf07cd5fe18a206855024ea925149c315b68ce
Date: Tue, 13 Feb 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707814096
