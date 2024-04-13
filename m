Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565B53D68
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713026363; cv=none; b=rUApepGVpZaUIACTPvlo832vVzQyrroTEDrDi+IJgsWfDds1+vFoMhpx8z7ZRoip5ASmhaiiYsaXshuVAK1lEHfwr6CgqoP9Ky6iDJPtJucnyq33NBi1TbAWuZzocehBJWIZHzsLU2GCchl2xiAy3IiRBByCwTy/V58gd4Es4MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713026363; c=relaxed/simple;
	bh=4AZy8wdvCUpzJ4jzurlCX/5NdnwHkHKDY3iQnsWCE4E=;
	h=To:Subject:From:Message-Id:Date; b=miyzHV4MYikoPjxuqUIhwRmh3z7Sla/xKKOoiJQrLCwAI8Yap1C3+/khMFGG1z48znOr/kxDKGdZ0UsXTqm9oPgDDNhcfKw1fwJuw3jUelJcHpSoweAY8EjfkhX2/Mbtmk3+nNORlpViO4f/46QHfM2KJHDncP+dwxYdZqwsTjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El4XE9jF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El4XE9jF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56EBC113CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713026362;
	bh=4AZy8wdvCUpzJ4jzurlCX/5NdnwHkHKDY3iQnsWCE4E=;
	h=To:Subject:From:Date:From;
	b=El4XE9jFwU//BgrG7s/h60TwLI84EGbpwwcFumIq+1fF59sCVrNu36VnXPztgWH16
	 FIR5QzpAbhjjM0GezPYQvd6X/If9rRj2pfBnI3wCmknwBEasVeSxL2KNj2plGFtrAD
	 j9y4TlB+p0+uN2m4mV87YcuRKrOjBBaNZqPggofQhFHi7/aaDenn8heptro1NFwfZ+
	 /Y+quc8OXyijTMdkrEI6+vOGQuCeYgljfiZK+8fugt9CSvLG5l+n8MWLH+T48W1ytl
	 JBETpc0kuvZKJ7bJOe91vp2dbu0l1nW4JYC5q3rnwhNiiq0yaLfSJayWPv0Dcg6CWw
	 qZGo/jU5jNz+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4152C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 16:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171302636276.5404.17634620647784561013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3710a8c89517ea7412162a19b4b72abca64a72930b11c3dc11dbdf15a5c80aa
Date: Sat, 13 Apr 2024 16:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713026362
