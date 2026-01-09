Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7393398A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767987234; cv=none; b=iP9ZCdm7LS/WRkWytUr0sx4GNWfk0ZuAlSZ/ThKuu6Zw4Hi+IbxaNgZTck+HDtjkcJNuRuCHZfMpd1LIROwVlWdylu/uDxepCPteJ9L3NKkODG7fmQ43QHY+ygB9y3/1tBTPYZGFwJs8foM+zozUFilL4dX6TL+fH9UQ3IXuHzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767987234; c=relaxed/simple;
	bh=d2Yz8iLR0zi1k+tAOjONehCyj/XLR1P3zQke612/6VM=;
	h=To:Subject:From:Message-Id:Date; b=RbUHwBObxt9UU8HkGaLLpQ6iueJWtnYl9z+I7MwZU4Rq2OebQVSQ3XwWuW2e/2JPW69xt9oSGHoS4ZEj2dsCGGDvKpdBkr7RscTfQ90M3MDIltAyi8OyosvIURyFVUa/rSqULL8iyF3zv4EJrr1dRvU0s2WGLgUftpe9+5IpSak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k48upoaG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k48upoaG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F77AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767987233;
	bh=d2Yz8iLR0zi1k+tAOjONehCyj/XLR1P3zQke612/6VM=;
	h=To:Subject:From:Date:From;
	b=k48upoaGv0gcsRXjJDAVbd5/1onXU0eQQIN5p8kM5FelI1X5nSEEhcz21fGa+BNJp
	 /K0hFr3gTbo/t38z5qwZqVWuTGwxrA2Zwg3nfYpSCa+ZjxmJEE5ff2CHkFyXpOZAdh
	 ASIXXcA+E00I0uXf4JtmvM5L3drkYlU0PHNrnmR8JMtrtO17Ayl1DPVUpsvztw4w2B
	 lU7FZdtEcPeVD/kEk8fhLzNpQGBMOmOSMS51XNZYsCRciP+mrG4f69QMobtrkR3TxA
	 f6vISjvVm9cDjSESdCEWfz/t8I2DIG38ikvrPMdVXn2oyjymsOgDX3alAnmIBCdavZ
	 OttWmru023imw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90501D26D98
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798723358.25999.10693380469421122800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de37056274301f8f8963a945dc85a42b599ead9687f07cc224e6eefda32a5283
Date: Fri, 09 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767987233
