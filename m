Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E14528C006
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764216174; cv=none; b=PHkmCbllNGkX/bV22N6mUwUtHPkU8L87JdpTkfvjJ7QNYffzEQuI7Uahear7LhTnTSAhqR4m2LgwV0qVjrqwDw4EQb2puV1tc1+9hGNZlFgXgufz9kHNbLsOL176r6DW2GvaTMwyAnEoAKHcC5oM4kXaxvr4aaThVe7Kw8zQnP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764216174; c=relaxed/simple;
	bh=TWFZ54Ogb81/6ES4PLqi92XjQl2ysw30RJgTqMeN2n0=;
	h=To:Subject:From:Message-Id:Date; b=h/zrnoevnRpQaGSap2ww3jD/OcR8nVDGrJrh+5fdH6gY3kf2R8jurqX6n4K5guNrigAcIKGdBxapBKkFQebceaHgkL1UFPhJ3m82Gt0OfJPVjTqBRinK+3sW3QOQKPk7rOnmZvnMp69h+bz9bON1pVeYE9XDQ6U6pKgR1f7FSNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npHnnNcy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npHnnNcy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F6AC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764216173;
	bh=TWFZ54Ogb81/6ES4PLqi92XjQl2ysw30RJgTqMeN2n0=;
	h=To:Subject:From:Date:From;
	b=npHnnNcyL3cDz5/xAaRIbp1yrUSn1u/hqlTnBjX8u/ki/tLMkmP4PVbq+4wzeF/R8
	 2+u3Ui1cSajTgtx2cFI0M0UjO4S5lL7GNCiFUrptPvB1WJbJGsWHY1PQxOBzovwai7
	 sqWLpgmS+fAUaxbdjFUu0OvEKTFxtwK75mCm+6mCoLqgiIsaxlv4RBMYL5rPcUNXBz
	 FGgpAU9BagWH13fvED7piE+5AmuY2RU7o4Yj//18O6YftJGDPjj8ZoT7rj0lvSHqDK
	 4gug3tnz5fx2A1I3sjlgI301YXeBvamcGsZTif+O2ypxE+JYlRHZCwDRghfyJnTGZN
	 Nwi+c2xPlSiSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA9CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421617358.21141.7444590132448700252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1337a55079a4a332a560ee74e9c38a9b7a10d268fa01deb6ceccec4f2f6ab9
Date: Thu, 27 Nov 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764216173
