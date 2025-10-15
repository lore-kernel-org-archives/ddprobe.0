Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AA32C21FC
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760531394; cv=none; b=bBcKkQPIrwWQwzUj6NLW4hBrQHOKLsb2KMShsSX9SGzjoSM389b88VC6heIoZBphbejQk7D8w/H0e4f9UIJYeW/sDabdPpOqN9zNDNA2qfT4dyZhO/tTtGhqOLAREJDFBurdgiAfUeTxRlxkMF2g2OJxpdv3p3RMbtRD8jV3SY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760531394; c=relaxed/simple;
	bh=goU23vlbun2PMcOzc5TSP4K7hsAK37FkEVNWWRuRGHo=;
	h=To:Subject:From:Message-Id:Date; b=tkLmUI/ZsBO98838ur44VuFQTZHqV11Sc8+H6P3h5ULo8QRxQtwhZA9JP4mYsIP+gkM0LOE6ydr47rRZ2j6nALbq1cGotC1967v3nbD9ndKbw1wKh86hGFVvUy9038PMDCM24G0eABqEOSt1YQ5eiF0aaZsiN5mATwiiJMJR1L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKBqgB5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKBqgB5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0413C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760531393;
	bh=goU23vlbun2PMcOzc5TSP4K7hsAK37FkEVNWWRuRGHo=;
	h=To:Subject:From:Date:From;
	b=RKBqgB5zuukk3N06WgcJzVkL/B/M4XQlPH4cfJpPmPzNR1lpuWFpG3hp1ewAWpUgx
	 bRXAT1a/DSr2BV6/ccUmb1alGoDxiSfvjA+LrRI+1KPaMZJlAUW38Ysut6McGWZw3S
	 MmwzP78N7yv0mbt5puHftla6RetB4JGUr4kJCjtGIJgPDM6r0BP64ZJ7yPRwHuZGRV
	 LmTZ9KgGQ3YcDcWAtNYbdF1urYUkW6UWlPDYwgpaN/4PBYwNb8Nn5JRuS3Aoks9VXQ
	 8DuMYIKau+yWeZNjk4TahCK7Ho+hjtsA/g2klAaLC0B0hFvNL3isYHjWaP67ITS73M
	 wcPoIi0LcOTzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90043CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176053139358.23656.11602782553309163034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6470264cd295abcf74e49c1acc4b6e1aa1b543af56eb4638cee4bb11a3324c92
Date: Wed, 15 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760531393
