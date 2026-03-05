Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117CF15E5DC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772682894; cv=none; b=XDts2lVzC6QcErxXMgbLSKct8gAa9VJb1iJKrZZJjDxq8j0I38p0UTduW6+V3g7xK+XL/BcvUZ2mhspLupjYWV6rpfuf58aapwnCP4xNFScVG9l66VEFPtlVSnCzK0leQukpkxu0Z91Sv5J8czwjoa7YvK/FVOR82KE/vxNfC6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772682894; c=relaxed/simple;
	bh=qQtmi7YGFwx5Ardi/PsHpEndkG8CfHcmGv1ABnZdcCc=;
	h=To:Subject:From:Message-Id:Date; b=PVRkC9AaTieY7rzfREf9uZX7stXqruiHHgjkSvMmJWZuqlvqWzcFKCkTWtB2EHSNPT4KgJYpIfwP/1MUsfXU+JpP0VmQqs+MLxAXKSxEuF1a/i5+78lgc+IfEJacLrB9oJtnW6CD5n4b9d3keDdaBIPf+M8+bfJ2vkdCqS4xGJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYDANiHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYDANiHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3038C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772682893;
	bh=qQtmi7YGFwx5Ardi/PsHpEndkG8CfHcmGv1ABnZdcCc=;
	h=To:Subject:From:Date:From;
	b=NYDANiHnvzmy2mUIML2XiOGDE2UyJevIEhVHGDyXjpruZsnfIn1FyY/97593cjkGr
	 0YCrXJaFlikMtOYOj9Wmihsb4AhRi0CRWLDH0tywRh0tDJsfm7LfsxiTEn+pC2EPBZ
	 aNk6ZbSLQgH59fqB/GqcTnO/w7CxVwcAKnfX9Qt6Gak5NMuabNVED5N/8Zi3juCZ5R
	 mjEDuuHvBqAyWcLnmtw918w/xP2G17HoI2wlYXDfDRkO1lnZ0lUMDWVNT667Hvppet
	 o2LnI19FyQzE5kVk5BT5bfq8BqD/f1sAk9MhT+p7flPvN6yigBqdHcS1TvemL+/cnV
	 GDE5iJRlJThyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE3EFCE5A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268289358.11193.11523174118697261917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f3c8ccf82c6d844856298e0adad2077a2bdc83c03d8851e9177fca4ec16d24
Date: Thu, 05 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772682893
