Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1181138C431
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774271694; cv=none; b=E1lzkzSsjFjxeAUNf+PLHt9I7D62xSzGyZh9M2G/JFH6hX3C86YkvrOEG687pt/5BzWMsC5CdxdtMs72g1CSwGjwixVtTzSui0pUWXxN7W/rpR5kx+aNbmm2sVH4l2UWN5IGYf8hqc5jYgdiO8SZ/ZdbbbVqflz/6iXfb4POBi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774271694; c=relaxed/simple;
	bh=ZI9W6Vm6KRnVpV+jeAIxyN5WyZRnE18d4LlxEFcc6R4=;
	h=To:Subject:From:Message-Id:Date; b=UmR8VUCkV4BVnEIS0oNI8UPz4uOiXoJNE/uv7ckcp5fTA8GDOaozfoooViRxOgsoWUgE6QsdgRFhuOxwRduyhb6dLQz5gD3db692grAuOTWimBKuQPHBMmRWvk36JdpxHpr9RiTitSNEvogi2vfGZwzF4l46Too2SsNFYJ/HaLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHXOh/iN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHXOh/iN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3089C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774271693;
	bh=ZI9W6Vm6KRnVpV+jeAIxyN5WyZRnE18d4LlxEFcc6R4=;
	h=To:Subject:From:Date:From;
	b=iHXOh/iNcZ2f1YF+58t0OL8mGDGb5TRTYI8PGcoqVYiPVaLW59ikbqoL48MBWtKmc
	 +pVcesvwf3E7j3V6GosqtAyhHLnqnueUx6EXUoXhR53k2xGWSR8dxRiFQLEPLdgjlq
	 aqMomZArBQfh4RYYQzkIBK1MNzwylFEkog/Mxcx9wMFp+Jxy07boR92in4wqS1O21k
	 4o7ciWRHwFls8NdnoKrespCM/m5wPwlADhvf42WDXxgEESyvKB3n6PteHWxTkZBOt3
	 jfQJJBxCLeMIw93OuEoHKGEZfL3Qw0etkzqn9+EtwEPy2zU7BHaqv0EDn3p9dY2ZXD
	 Uj9+AojzdA+Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9136CF46101
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427169358.2420.11715443378245279005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6ef1a5cf19f3f2f1ca917b19e475766cafcbcce232e1b19b11bb366fee75848
Date: Mon, 23 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774271693
