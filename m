Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376FD15A848
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746193795; cv=none; b=TedDte9ySKa+90GkRnot+tNFhH0n3yyM2j6LALTu45Cg39a4JjAXCS6pL1om3r0vKEw0VnO0TJkk0sWnEUJWD7YDaW0iBVSj4YcU5wX9Ct0VMt3cgcpXAczBGc6MmWDl8CxEx+y7WFFJ38ezJMI7v1z7RhsX1JTguskBio1RBS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746193795; c=relaxed/simple;
	bh=zdK/wHPvffDi5yxfDwofZyXjZAn6/pGkCDBYowv7juY=;
	h=To:Subject:From:Message-Id:Date; b=MhNlScclDtaZgiiYx+6kFks9wlVkXW9oVf+pXtltAMtWQzBq92wBaYn1bR+Ewxj7/ipRW4u6PoNJ+31TojKTAiqSIKFtmHnitDW8scbn2FF6x1vaxgxduiG8iUds9JH7YksFQkMNyjUBObfXNL1x/vjXfQ0L+Cs1TGO/sbJyraE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjCgRV7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjCgRV7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9903EC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746193793;
	bh=zdK/wHPvffDi5yxfDwofZyXjZAn6/pGkCDBYowv7juY=;
	h=To:Subject:From:Date:From;
	b=WjCgRV7ALwJWoUl1HwZX/EmkC89FrrSawFprnWsIslj3vKLDA7mXXOOmxdDeIaNwd
	 scHj/LQ2uW1YqxN0KU5Bzd4uwF63VYGtsisho8r4RLiHCYLd25uSGspbPonkGE6s8Q
	 tCGnL2cJSvQZw/apkKlSxXTaj2HDiUR142e8k+EeVH+HCmpCEKGPkD5TtrnMULOM9s
	 uDVwYkk8uY6THYT0Aag3dk/JHWcrVXIPcpaTUiTwNt3BnTvMXFhllHH6kTRw6s0PE1
	 qMaihyX9YnxDk/TlC7TUcpYFylDkLxA5X2m5EsIO4KZxre8X3Zv6NCWuJM7xAyhejn
	 jKnwt7STvxGPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E50CC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619379357.10424.9424852123210350636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493902dd8d5a33ec07e580872d39eb8fbeb08bc8a817d66177fb89f4221bb929
Date: Fri, 02 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746193793
