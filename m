Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258441D696
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724071554; cv=none; b=Is6hvYDT5BWnXjWlGeqlioyCIh8O81ZSh0AyfK4zdN8ri4c49c8AwqwC4PS1/ES+l15N8Ee63h5Zd0KRmVQq76UixUEVld9WCIG3qe05+Z6EwKkNerdTnZUCMIVUI99/bN7TFKVDM1ENXBA2SNncbKh7YL4uYAtCbipe9X6xD1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724071554; c=relaxed/simple;
	bh=t54blX+FXucXgsJht91RWL5Yr9KV6Xji2YmWkOAoLgc=;
	h=To:Subject:From:Message-Id:Date; b=AQZ7l5M2bkefuVi50N8tSbJQfXYixd06Ghtch6GPfoHPoJATJup8WregJTTCRNUqT+oJwaT1rQODORdEYldEiwOIQZhdQlgt7SUf7UAy0HChgfA0z6FI8DkdeZgkijl7X+Z1jvosBsQjymAfA5G0yOSVOrZaZp0KySEvXFwnIEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESk/0h+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESk/0h+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8B9C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724071553;
	bh=t54blX+FXucXgsJht91RWL5Yr9KV6Xji2YmWkOAoLgc=;
	h=To:Subject:From:Date:From;
	b=ESk/0h+uzphthNxU26H7TMXhIY+6iZXBOISW5DhACUECg2GOqdnoFrEPX8Hni2eUH
	 VeszvQVHV0+fYftxO7RkAfke4Lg7h9W77P32NFpXK3lX82t7urVQSk7TyK+Q7arMSN
	 yZNOliVrrFaQZ18jMwFjwCptYCLxz/yk5fLhIunKcI/ASWaO/dhof4lZvfxk/+at1s
	 y495fZQOWWPKzDPh4SBjuZqNCsjZZokm7OI+RdJcPoIxMFQHbuhNl/AAIuUeBB10KN
	 VPgNYFsERlKSUB2MrAS3+/7Nkbz6vSQIi52oXn+yZ/oHWyP5zz/EXIfgyWocn4gruu
	 juO0044e3rmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7046C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172407155365.9808.15504136261095966878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21c883a3a3d4c6fda99474405161cd9ba4528977091700d7970f701ffdefb95
Date: Mon, 19 Aug 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724071553
