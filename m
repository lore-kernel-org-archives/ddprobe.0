Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EDA27F015
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751387994; cv=none; b=ckcpc2ozvDIMsNVV5rjT3D88xOI2Q3z0iNa9BHcz2pyCSCd5guoXFbpE5B5JJ4BsYWaxKn3vRDyB6YjHURXpCbGwuGTit0tjgEoN11/SopPw4ZEUg5pwprVLP72XqpaP/1xSjvo21yFRoSVWNBgo0uXNE14kxwl2DJnYaR9pQVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751387994; c=relaxed/simple;
	bh=N9H4KNH4FpzZztqS+vEpV48vW0Ylw5TZfSsXXU8toqQ=;
	h=To:Subject:From:Message-Id:Date; b=Gmpd4GSTqwsC4Ton7SkBZRXyHmxZ9sSY2YKEFQAIZmP26SStw+Zosk+jaNH48UmAfxh+6dU/69JQ08P/HD7Kl+r2As0GG0vcXo8Z+EpTsDQGE4ZZf594+EqrRX7zAfdqaAa4MOGGT9sS26liYZqoRW1uZ46WpY4aLbr4yefwFr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIcz/LKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIcz/LKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1338C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751387993;
	bh=N9H4KNH4FpzZztqS+vEpV48vW0Ylw5TZfSsXXU8toqQ=;
	h=To:Subject:From:Date:From;
	b=WIcz/LKJQKwQQfHVukvs9mfnLQWfgU4mHHc4reBVlzoEbILrkBA68hYLXF7eb0jvy
	 L6r51qcCvaiaarAnSZM3MjwHGrEyJXvxWwMtmRLPZPNWXmcr8cBcdW11TOVGbJUW+J
	 TKYhlxTsuuL1a1m+RTkstMUKY94PoY7UAaUFHOo+dgJhiK5hdnuHlffjqPKm1x+VxY
	 35aXdi/0u9bx2qKdiCIuwSmSVGm96wrkOjAlc7wnI+S+8eysDNBNn6Fyn+ml3RdMVY
	 dOOY0s2Tyg16FYaO6SqpgASidnDMQHJ13i9AHPgs9n2ycgRCs2rFf1XRdq+KLJlSX8
	 jkHh/S1rTggmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F699C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138799357.14870.9780780466042384107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9263e5b56eb641efde3b2aa203772655dc166d69e40d51b0d237ca0a7b01cad
Date: Tue, 01 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751387993
