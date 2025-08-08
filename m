Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7A9276038
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754668794; cv=none; b=OYJvMAlFhucEaK4f3VpJMNMdWBTv3Cwu9keCIj3xswoSvk9TqzhCr/Ulv6J3SjndS79V4UMb2zw0dJPKqqq/tdvpJkcpXDizurWb08Oki0NRJez9CFu9ysYQOz6H8BPDsCs7znN0OrWLd9fhw8jGWlMPJG3a12rYIct5GZLixGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754668794; c=relaxed/simple;
	bh=gXsEPnwJLo+V4qoUvx/IWhWJ1Oe7ao3oF07bGqVo/s8=;
	h=To:Subject:From:Message-Id:Date; b=sZRLSpt8s2wy9Tcbz0Mc22+3cwlVJuCN/VZ4ktlr5GN7K5YGd/cC4fQ/zQK0t5+Q3qw0iPr1uZJnXXJyR6Yq1OV0hNikuDr3JHSOAAv9+Dr11SpCE0PFAmJK76ShKVLgOZ+2Ips019yU43QhZmN+A5mEXhcX21jYu8EvDTG6xlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxEotY6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxEotY6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CCFC4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754668793;
	bh=gXsEPnwJLo+V4qoUvx/IWhWJ1Oe7ao3oF07bGqVo/s8=;
	h=To:Subject:From:Date:From;
	b=kxEotY6tg3oFQnTpJhZnyLaoFKAeVYIKbx1oGTLhuk00uNj4bvGKnBfuiUIZz2YZW
	 nQfg+DlHCPFK0hScIRvJdK6d0XjjqUxZjuzxPOuV8RZcxASq9A+wuU0Zrgfi3+IaFd
	 +Lg/g8t1KhCZaqvgb8vxch2ebPPk5pY8HgZV3mPFXInsTm8cWF4/3wvNonHbJeRAE2
	 dulN2Otxrv6Tg2JQ9mMYcO2elNPZKdwESwwFrIUMlfTpVaMWlhqWZicPat+SExhXWU
	 wY5IYAoerhfjSP21RU4leOrr2FPxfKgKsy/8r5IoNeTETlxEvDlPBJx/RWT8dWaKla
	 sejnPQ6r1ONgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960ABC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466879360.18009.1715116273551252555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08dfb3c0c428a1c26004582f78d2db7308ff40a17493c6ae2c041b50b616b0cc
Date: Fri, 08 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754668793
