Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEC213D539
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747201194; cv=none; b=nXI2nVwdVMeni0XUTFxRRxqYiGEUmxR5A8IPYEDJOT+g0+Vmkljn24XY9eKuzo1tAO6oya7vAU9H5KzSA39o9muYuQbExJc6I1BhaNNf3/7A3PRahpposo/862asGQ9gv5Z2+KTvy+0iVOhwStbUXyOzTndM3q2AOBXI4yBUlf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747201194; c=relaxed/simple;
	bh=1R6jlF+mcDdwbxF003O5bi6Ug54cVo6dcyzuEyar9PE=;
	h=To:Subject:From:Message-Id:Date; b=UjlJRDmazO2AaoywUr3yL98DsQdnJv/jY8e7MdgOyYY7JshLrZSbKI4ipsYW/rH30h9SsN6eSlVoT/voBlpKn7bGMdDYtJomHa4AsB3jVWfEkMq94G0n+9EAbMA70qlFOHLpW7ngaz0XFY+YnwDRdokMzGQOqCl0e8ArJfsJIiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sszU72KP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sszU72KP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA4EC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747201193;
	bh=1R6jlF+mcDdwbxF003O5bi6Ug54cVo6dcyzuEyar9PE=;
	h=To:Subject:From:Date:From;
	b=sszU72KPIFbONj0wnBsB4YX51hHGpGZM7Wmc6OzcAvQzXBIF4bOD5MiKqauBFjwoc
	 H0g5RZ3Efkm0X/dEkIIiY8KMoshSMhWU/0fRszpz99P0EW3fFOjWjw3YgC1SOIrSrd
	 B6RA/xMaQLA8zDomtThMv5WAIr//A9xZ9LJYHMGlSf1gyuGJLTqU5qF0CgcnlKSBwK
	 sNVPfFNhfT2vYXBtfOiwD7l5NuIby3eLdmqgEssXGd/qYFalN0ZJ06gK5yDHtUTRYt
	 zSxWI9zXGM9HPeWQhs83/P5i5FWefesfoqRBAdPmm3izA4EGVDakodd8dSgBcE5w+5
	 LepRtgnN4bkwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAF1C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720119357.14624.10442842621761720479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36de67cf1167b7149f1eb834e2c36b341b7e9fb2be641aeb5fbdcace2bbe3591
Date: Wed, 14 May 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747201193
