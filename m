Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BD626560D
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753345194; cv=none; b=aVdMb7yzrLkAnP/JHmKZaOzmFPiy8jvEvff1LWNaWKpRJR4oClHfaQLRHEZL8rqsk54blLDI8yAmIcvTitbSOdK/QThRhnKelUs0185wz3z6K+V3p1YhM51shkwFx9kMZGjWGHuT8D90hQ3mJZVwSZTq1+0zJGT5JhUTcriClKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753345194; c=relaxed/simple;
	bh=yGuH6nPoKAyFA4+ly+9aubx2DCF04TeKg5GTMdWFcUk=;
	h=To:Subject:From:Message-Id:Date; b=TTjCaX0QXIG36IXyDMkafaBkaoC6uJl2PiRSx1lZaotO3nwED4uvcjAE2N1SS74pQTSwdvAJA1L7CzDB106RM7hwd1t8Gl9wBp/qLFsW2E3xHCZF0d1145iJlknznc/CwENcKbo5kFjDF7cluT7bpa8qaH5eBiPRZssFuQH3pnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9GGiqiF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9GGiqiF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D00BC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753345193;
	bh=yGuH6nPoKAyFA4+ly+9aubx2DCF04TeKg5GTMdWFcUk=;
	h=To:Subject:From:Date:From;
	b=h9GGiqiFfqy6ibHEThPsvhi6985HwaFI24ByIm/6FP0BFQKW4xQEtpQFyRcm/WxHb
	 soosBFs/zxOq9l5JYu+yFp/OC6PySFUWX5z/G9Hc+NPRj7XBgCPvMPEZEXNeODqQWI
	 TsfwKny//fRHtAAv9DAX3D7hwm2LTgDyKaiM5QvN8eajZQRuxb00DFZ9QF8bAmzlnU
	 FW0+MGVbJL3ixfKy7us1BTqO6ebB4cT2juqOthPDsWaSXviOe42JQZcqyr8QpvbrNo
	 G8gJ2/GYCSvA1UXL+faU/kKOBx9LBwNwYGMC8sDtdR+ARN3HpGCR18do2fcmXCFOBb
	 Q/nyFCAGP+u8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CFC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334519357.27980.17676963972358385632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77784b0e583c77b9e9a21c5d3481614ae1794caecdc812e4b7f92b1d680fb1c
Date: Thu, 24 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753345193
