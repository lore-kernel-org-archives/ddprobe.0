Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EC64963E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718372903; cv=none; b=FTc3l5Yz0OlPkBaKrRuAfwuBqy0SR/M852PxEeZOgbg11aXXW4vK5MAedRgLEVarA/3hlKMyN0Em3JuED64+ER9Xw7f7fgS9/LepJ+FY/+nvlMqsS7byYBtz/Y9bx4yITFlrcOPJdngUOzGdwGOZW1/btco/KGyu3XKKdkS+uJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718372903; c=relaxed/simple;
	bh=dFCC0gvSLJvYvU1z1gWpU0HizCA//sp6zs3ctwBNV2A=;
	h=To:Subject:From:Message-Id:Date; b=fcny+vuI+NhcaVzALBy7OkRybAyLAEjAGNXzLwhpbzzaIUcHLsoEC9wBjbN/dOnYSIfHGYxgfPF/XHN+2G2G/EoilEjYnLHaqtIzwn4RwEWC3Q9bNkD/uf6dxgMYwbTN7LOAYR8MVAlrhbD1dlPNZUIqy7FplY+xVSYh8bIDTto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6dw49Xt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6dw49Xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3AC8C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718372902;
	bh=dFCC0gvSLJvYvU1z1gWpU0HizCA//sp6zs3ctwBNV2A=;
	h=To:Subject:From:Date:From;
	b=e6dw49XtQYpYHxMBWz+n5bksybQOHyLulk9H+I0UgNQF/dF7QEBJNrVif79CM+qVt
	 Qe6oNX9Gg11pnRUOhfgRyvYUUY296haNbb536BYk4MeHTS4Ll1wQGV9REmR1QdWGut
	 0ioHUD6SBbZnXlKPHC5xmUPJKLOY3hfCve1pe8n8G32+kjjLMJvYdER6vDnJRjeI9k
	 RdjfqdPNz/aPDWUKK9aBohtebeixaqpJJ43+dT28W9mkhlUJ72XyDAUrbqb0NTNfEX
	 9TvZXqka9fw89+eVhxxlVt2H5MKU0/XIceItCUQqgMcGbh0oxGdonaj2kz8zSHjbmY
	 F/dzSlgboK1gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD4D8C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 13:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171837290282.18657.6420853646223626441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a47f2236a830ad53aa84fb0b1abadaf41e76ce2ad7c80dda305553b24f7ef15
Date: Fri, 14 Jun 2024 13:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718372902
