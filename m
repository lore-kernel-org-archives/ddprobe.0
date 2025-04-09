Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450BC2B2DA
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744193394; cv=none; b=o6ZLIR2GOiDrzqcwSEMbVKJ2KiUfSbeOn2QMFzhocbpdDS4o5M1n+9RE0hcACDm8f0N2PTHdqNkQLpWpcDvpdvhmdoRzLCuawtYohqvVrTN9MpENGqrjN4UW6yLZ46oFR6mWskfyaYPQrbDCO8cLI3ctfKAQQVPVJ0g5gxav+Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744193394; c=relaxed/simple;
	bh=nKofmFJoz3Rs9UkDdFpQ74THtkOT55TQJm+GYR2qqAI=;
	h=To:Subject:From:Message-Id:Date; b=HzxXr3Q5+JwSBbslBVmXaLKwR0Jy1UZPLs40oDY/UC+qn13imB3/EykaTT/arelqEWFaQlioceEEoiXKgZssqaecsd8/OsU9r+ZQaVsha7+z8jW+PmYtpRaF9db10q0Ofo2RsbSIcGmEeWWa4FSIOHeRyt/sev7iLAGyXFacnrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiTbHUJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiTbHUJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F81C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744193393;
	bh=nKofmFJoz3Rs9UkDdFpQ74THtkOT55TQJm+GYR2qqAI=;
	h=To:Subject:From:Date:From;
	b=TiTbHUJnacD4XD3/wnAbm5KaF6Ey2BpyS2zdxmPeH0wPT/8dGnT3ZoSN6xoZzm5OT
	 Ktoz9PvTUjGh46vfcgNM3JkKfkN9tJeUjZ92KAhDNuBL9Y9/3g+hjmycKsP9fBV+b9
	 0NDT6sy88VOP32jfqxz3jEKGCckrzgzh+JrNI30Va5qUDnDYzMlUjpuKtLJDmiwor4
	 A9YKOOq1oyOdfSmQkTel30DMEJfI6pK3xqfXTMP8b11fRnGDrhlWPA8PIuERiKucEw
	 jd76DHuh/fXw11YVkwlcneAY/x/nWFU1K2ImGFSUaAdL7FhH9b7wtLHGynBhXKTK1L
	 8Wrd5BTfHtk9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3218C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174419339365.26332.11636991626643121972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99fc18b679431873fd34dbe785d9ac197fb837b3466db028a34a7fc41821ae89
Date: Wed, 09 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744193393
