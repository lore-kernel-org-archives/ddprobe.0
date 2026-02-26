Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0141917A2EA
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772085894; cv=none; b=qWW0sX/AoSW/XQrtTOxsO24hPYI2Msiz2qbHk51jxcCDZZT/5R7iHENqgTb4BXmDs3U1dkPmmd0GiLSjCTWF1Va+/8Qw2OACxCD4Kh9YLYcicWMT7r43gH8eDv1K2FIdIQza/AcFCFtyXN6T+Vd3MMqtbq++Hpv2As9126WBvg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772085894; c=relaxed/simple;
	bh=pAvV6DKoE2mmSogjps3Zu1W22BxGw9Op77jwFvSRqn0=;
	h=To:Subject:From:Message-Id:Date; b=I/oe2vv1YnYqWwWFhK/dm864HUu1bjwIK0t/teAm1375tELeMKbgrE4uUY9svXoAgJ5YGRrnloYQl9cu5OCedi/5cQeAjdGF1z7fe8H4CXLrgrQUK8KdxLm9ei+hSTpBLCZwdz5Li0S7HD1khUtDnbp4jr9MRzrmRrm3xL5cAPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYJef3X7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYJef3X7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF1C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772085893;
	bh=pAvV6DKoE2mmSogjps3Zu1W22BxGw9Op77jwFvSRqn0=;
	h=To:Subject:From:Date:From;
	b=cYJef3X7ZKzMMULz+TNytYCbW2INsmCuj3l9IISH1myuhhoOtyq1nQhlfUQ7O/t0W
	 oLTZJIMAxT23YFoZ3MRRuk3W/gNKbPbW4p9aZNEIwYoAEmFtV88qxJ0QcIWofV1Fhx
	 8M1EVehuo0r+NJQ2XD/8fz7gho77M5kEQ6mRGLh7GgB5eTRXjbMGmfRuSHWvOTQkkc
	 BIVKQrjC96qGjjs2SLAHp5mXEzEFWMiCpwTt0JANunXl5rt60HiEWl7kjIA9Fpz8Si
	 TXI6NMzbFNcnZFeGyK0eiZUCt5Or3NXpMcmu5LUEhcLH2mUXx8tK2rX3uhrL7os4SN
	 3QXrVzLp7zagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286BF55450
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177208589359.2720.10514748851882719883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f14cd003406f900b1279a8b6f943efda0e7e940a719e3a8a1818340f06ebb06
Date: Thu, 26 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772085893
