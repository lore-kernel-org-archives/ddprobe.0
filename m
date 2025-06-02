Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2696B4C92
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748861995; cv=none; b=Ch63F+zoWnRgUX9HLH0+MOAUQuiISUDbZvO2QY7YScGGpHpJBzfT45aLXaOOOkX8yO71ExFwxCW1qgbnC76SZPrJztfgnQRlH50KakyvTGDfO+1zJ1i+dj20Ir2DKo66p8GzXt4yc939MmSxW98cLZGLw92f4H7gtoJ1iRIWsZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748861995; c=relaxed/simple;
	bh=FCMwt597zX60vyP9FzorlYO/DPKfq54IM+LueOd8wEs=;
	h=To:Subject:From:Message-Id:Date; b=EaZ4JDVnkLvzua8ensLjmTbSe5I2xakdAwx0f6L4ysGJsBGibEX9iSNeYrJbt2evODz6dSlkghj4R6AEfmTlPxEPlzobZRyqjp/XZoawM/841NBA5g9VM6aITUk7Bhpxa/vlplqjN4YLO0wMYw7yUp3k8atDz2WUSVFE5opljtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4/uvw+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4/uvw+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB1FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748861993;
	bh=FCMwt597zX60vyP9FzorlYO/DPKfq54IM+LueOd8wEs=;
	h=To:Subject:From:Date:From;
	b=U4/uvw+XomxzCtavgJ9RzUuKxxMDE/GDhR/Y0yDd5I4AYP+oTd8V1wiZjx1W4MVu3
	 f4IfpWyc8gGBLf3nBtUh8hyetUeDFEAnIAbyebY5UuiBP1cEu1k10v99/H6SyA7GyU
	 5/r8hbSarXCsOHO/5/z6qEF4VqgAguDzhRRTreuAstM3OGooTSw6FVE4WiIpKWUUrS
	 2gT2jYZuWvK3NzBstZeH9yuqc/hLDWenXUSKLw4q3LwpKm3Nd0RIfKJayHOThAmZuK
	 daGxeUlHhiC9QdV9IpAvSZq4He0l+asZeQ6vn8zj/fdzTIN9E1rBxKPNH4AMSBSBux
	 5BnGfl8LMoiNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5BBC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886199357.496.7879322389599560149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2f860637020329cc32678c18be089a0713fe463b1659793b0e7ab349896ddf
Date: Mon, 02 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748861993
