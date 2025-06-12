Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F417289E27
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749740994; cv=none; b=F8Ge8hD3Igylg1ooT0QJNatlhkmWHQ3uvQrXJET7YQk2D3GcWsd1LNq+OG7qhNatkVz9HJqGKbvVGHpT3Kq3BpEFsBoAMGQ/y4kCbuVfFZEq0NrRlkRiHSJRwgHbjIiqNzORJusqy71Pemnf+5GIodlxTzrKJpajCZA0Rc9+leI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749740994; c=relaxed/simple;
	bh=lc4+9NuMKJakodB+JWXZWDPNH9nzau02CQJT6acxlyw=;
	h=To:Subject:From:Message-Id:Date; b=aEkBjHI4mSkTeYc5YkA8FC6G+rz1NFtjZTpqL8rbuZviAWiRUlPUDFY7rWImr+F17KN5LkTYJKBmnpycGWDT3HLV5b/0JTbNzwqyuWfmbCxFLHseoLt1EkWXDSEWBGTqvtpmD+aQ/EKO3rxuRBgWUy0mil68eVxAU1P+aTKzRXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icxDbwd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icxDbwd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B40ABC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749740993;
	bh=lc4+9NuMKJakodB+JWXZWDPNH9nzau02CQJT6acxlyw=;
	h=To:Subject:From:Date:From;
	b=icxDbwd6AhKXmkw4PpId0e3vE2ZpZuJXDzTEOxeEVtbhYdNdc1h2Bxo+4qh1WYsUW
	 ykO0Ny526z6PK5vh2sMGshyO0d4CaNeKk3aCZHfGzREMsbxRRk1MLaZd065+gm3Fq8
	 YD0Zl+mJhRWchfeSJjbnRMklJssfckdnIThYqHQU55CZapR4NGd2jKhSyqQkcQpqr1
	 Tv6PKsbxlCnshnD/mBIrzrEuuudBGTmnM9Ita6bh9/miZjamNX8jTBAcDU/lR035Gd
	 h0dmhKv5D8URS/ue/w3Gp+DdoHMjARsZ5teF6B5O5B2z4hjmp4zZkm40mq/25wSJqX
	 wMo/NX88mr0wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A3AC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974099358.27818.11007505490303189371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8279cba5c42f9c2a93d383d5dd433bd24d53f31420150fda8aed952fa14a4e
Date: Thu, 12 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749740993
