Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFC12DE718
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751494794; cv=none; b=cyKco9dxjGeglQlh4ddb1quXmDBv4rjiSXStTJc7/jP0CKg00KuWcrMHBv9k+Rk9fYXlpSM+Ux28H7au69+omYSAgschISjtV1yBI6Eyd25RgYRe9GFaM+OIkKGOWwvlGFykm66kmR9UmP6WRBHENTdTRPC1wlyeG6xxQ42cdXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751494794; c=relaxed/simple;
	bh=TRBQb6VNTbuvcpsEy+4k+7eGoizg6/V0NEhcOc8VpA4=;
	h=To:Subject:From:Message-Id:Date; b=tEscgPJmDwIbrcfRncJF7TrxxQ/Hn9Hv08Ph9VVuYGbGxjy+bgRDMdd1h0Z2JNb5mp2AJ2qBshjOWryy8fKIwh1l/4eiHUHoROx2Dz08ogKmEJWBb4A9oxrWWvRC5HAzMjUA4hUaFm+0Xn6XUWMwXgSaSi4fJzu3OLgzg8+U3Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0WzXyy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0WzXyy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2C0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751494793;
	bh=TRBQb6VNTbuvcpsEy+4k+7eGoizg6/V0NEhcOc8VpA4=;
	h=To:Subject:From:Date:From;
	b=E0WzXyy00WmpwYKYhj56JfYk6Iaf/ho+U7GwCIq4yHHUrkDs4A68v4+zIZzGfsPxS
	 J+30Mggkefs26AWS7QZBMAdC0UL6iDmGzqAkZpglM+NMkM7gDPobkQAfq8/tl3mP2e
	 WSumqJBba4Xa0gwt19rC1sHKzcUHWl7ppaQmXAG2MpeNoZNoJmriLxiG/w3phtOYIN
	 zUD47O9Mtr2qGB2cLYUUGD0ylWOayu7v/FbrE439RlCZTccsmuAm0yrjBBT8G9w0tv
	 hCcLoh4DaglvSys1pX95ryZTNwhDhBMxK/RWDhzkXQHQf6o3/7HAb1g2bl8RbsmZ0H
	 WADbSRGO9SecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50AC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149479357.31629.17274987529707757633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf2e12f2b7ae2532a17fe925248e6ca52ebdc4638052de5fcbc28534022cd92
Date: Wed, 02 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751494793
