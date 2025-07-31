Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E2120298C
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753986594; cv=none; b=Pak4pjvbc7tt9g5EAwVqI+1LhUjNOn5JkQqoqcg/w2TMhEA83Z1ZKYSLk0/cakMkNxMqteZvO/qcYYRhubvj7KJxUNWToUjzWGc5Zqyehp8RlCKpB4Tiv5iL0kvFx8jKp1QG7PO6EhGw1X21bJeHT/fp/yiFHcB81A2Sxvpc1tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753986594; c=relaxed/simple;
	bh=4gvn+ytkElHmbbi2SLEahvidEJsl1qhQbIN6Pp9otQs=;
	h=To:Subject:From:Message-Id:Date; b=I1TKfIf7bZ/4XDQUCX2CQAC0xp/LHkccnoB7KJwdJ/UWl/18w4u/G8VYcvL1ClJ3KkgRUh3K4K53MAjO+U6QYOf48OxdxhlYNL9kVNRm7NDtKwLVlhqXGRaT63snL7ty8ZzOTpYbprdW3ffh9qTHeH5x3gMOKS81Ia4XSjGDfok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLbKjr+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLbKjr+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8650C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753986593;
	bh=4gvn+ytkElHmbbi2SLEahvidEJsl1qhQbIN6Pp9otQs=;
	h=To:Subject:From:Date:From;
	b=SLbKjr+bqXznxUYusjPO+Zxoocw63cdJcTv0P83qcx1wh3AIinkj6l10/CmSRAqHK
	 plcnUmu+G0BoCCw09SrKZRYQRHuBle84dC6Lsp8FOZtSL/sAN4uux1CgNVkVE4+NBI
	 d3L8UN0SFgPd37Sl7Nu4JyrggxMG+Ozd4tug6l663w9RJOdEPcF5xJiKl6k/AaYUUm
	 rQKqT0LwH9Po344lzBMDp2jy5jG+mXTWRwbXLktVK109s5Fexoc0n15Yku7P7wOfp3
	 yvEBjAfH8ta7XCtY6/mE4aurWkL914O8Uk5Qu2GouMHv/Y8Kiwjdg9eolC4NedwE2I
	 hwJ6bVYsnQyaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958BCC87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398659358.2254.4959593966979091450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7f3eba82242fd7715a90cd0139174a93c517806a6febfac86819b492490ba8
Date: Thu, 31 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753986593
