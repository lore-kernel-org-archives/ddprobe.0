Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332F3153BED
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763858514; cv=none; b=SAeIqSBfnxfJg8eaMApSkvcwex2DabqyqwrPxUuKBuWmucmCk7nNO8LuIctJIJm8T45AH27Lawjz8IxMwsbR8LVicdzqm4wqG3teaSNyooX9TLWL+8uWDehU9WaZvPrzosEEdGcUXnnTAJn+EZtK+LRTzeer01w5BWa5fw7t3u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763858514; c=relaxed/simple;
	bh=sBXp766GwxmgN0CWUyWcDj1uqjX/7Lvs47urkOe4gqM=;
	h=To:Subject:From:Message-Id:Date; b=bkcsjgLGr/0LTG13AoRI9gbKgGGA7tKnXhk7Src7sCrD94pR3oUK3pXAnuq2SHE1OhvGJJkSZ5e6LhgFbkrSYke1B+dELs3A2F0jyiza7EVsJWb//HkqEcsUr3BV8DMRjCdlOcHCL7TOAFhI3Rw5PLaVi+xoJQKwNT3d8VIsc4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKNL2+fm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKNL2+fm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4EAC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763858513;
	bh=sBXp766GwxmgN0CWUyWcDj1uqjX/7Lvs47urkOe4gqM=;
	h=To:Subject:From:Date:From;
	b=CKNL2+fmJpy2yOrg6jkv3E5Y/g9nhYr99S8WyRaZbtOHi/B4zwXqc7SvnudntqnDY
	 DoFHbW21ssd8ukHm4gdY+BTUD2UZUID0s/OeDHMYbeGMWQY3ivnmGSO9Pdmz85MIcq
	 /XMU2MKp8pYw9kTD3LBbejdUJqiK4o/j2iacs1qC18wFgjxI6uoYS5DTk4oB9In7HG
	 WYn6RETr0oJrbGC+GdV1LrsCRvsC6pCuZq0OPB3dR39Cx6D8ZG2rxsP+ujDIGNfbTm
	 5G5dIogUR7Lo5SlaN9kMskHUKoffjlM1FSXucqLthtMpsNoRpJI3kS8jxwvhVWkNWJ
	 dOJgKqAJRPoHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99525CFD314
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385851358.12387.14337590412802033043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46deb1cea8bd1213246f786c150433342cc275561e3575c841872b17129b932f
Date: Sun, 23 Nov 2025 00:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763858513
