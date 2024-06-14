Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584E916D4FC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718377703; cv=none; b=pnuclejNonYcMtYx9I5JRBW82YQQSuFw7gX/nVFzCO4U258DrVAC74nGfZjaxRyScLdWOTFu3Ez2rgs8yc0t3IXSLu8hhB4XcnXIqtOzklWul4rtg5Tgh/YzFNklAyeWfizmjUVzKJt1Aj3Yt7pEBcrzWUOXDoYK0E5MLNza1oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718377703; c=relaxed/simple;
	bh=PFD2UDTZIeEEIJBJ/9uj1jVARONDfd53JXjzzmbb05M=;
	h=To:Subject:From:Message-Id:Date; b=BwMXVK0K4L0qMT4w105m3SAucjTjDSte6ZLJFVObQcq6ijeg6qqwqwK/xCK/GWhi7nFKCNvl6VzFwPf+goj/marafBMtfy9O3uYJ/+jfRbTV7gJYvIB3hiqmp0b+jHfaMqjh8xC7UiMj9lSripyJ5436a4oBGSEG2chcSfY2+Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeL7LWv0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeL7LWv0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C7BC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718377702;
	bh=PFD2UDTZIeEEIJBJ/9uj1jVARONDfd53JXjzzmbb05M=;
	h=To:Subject:From:Date:From;
	b=KeL7LWv0qkXfb8vuarjzC6kVTcglyZm/rx9+yn/emOBVDxsKdfPnMrrqKXtSTJLWU
	 /X0EVSNOHLjet2UUgXxh+qHcvQrhqmJhA+k9mUJWBZHBnR0/KAB+lYKUdrUD0oVwTU
	 oI3PJuN6tQPQl1os9wAHuBE5NWioe5VuKiivYb4V5eZKOgpd6KsRcTaTYQwcZZYzGJ
	 yAMRXfT0QezdNmFoWpJobjPXh21QoS2SoIaaPQITSX2HL9jdpb2kQJiuWnil5KIsQL
	 gwi5QXGHF2CahaXHCUt19drIXDUP5G9wtuNuh/WCo+LS4R7HzwrllO/tB4DQLdpn2V
	 7I1LdM2fiOtnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D15CCC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 15:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837770284.20413.16835867532267982895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1e1905a7e1b7e3428a867a57b2bb87982cb6cff16f84d4562e86c9c400c8c76
Date: Fri, 14 Jun 2024 15:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718377702
