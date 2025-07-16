Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172F2285C97
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752695394; cv=none; b=hEDjf0vrmlWn6NnPxbPfoLOJDFDYyfWKwnwVkQzZ3mOEE87iqNj/2EYQNhnmY1FblVBoUxDzbcqIINqajoE/fa/7H53EjFCe8aelCr0+3JVw7Iq9XxynB6RJv8DnPjFONzapuRUHH7X8uxUEHYvHSp+gFy3BRXjciG0GOq933IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752695394; c=relaxed/simple;
	bh=VArhP/2m1JCKTxzVGOJErXyPk8E//2c59Ec29YrygDU=;
	h=To:Subject:From:Message-Id:Date; b=SgrgdimzAiOKZmjfSunCacy0aBenyBTIQs+gU4FbF5pbgO6lF1GMq4qnKlzGko/1eVMj1Ko4yKzJkBEPzbTQQBcc1XQRNhdyEXsbvxwQEypAubc0516ySWlCKPWlUWpNEVcP/vP7sJydzFbpwPqEDUXcMe2BT5OH/WVY+S6PetM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPHQlT1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPHQlT1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAEEC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752695393;
	bh=VArhP/2m1JCKTxzVGOJErXyPk8E//2c59Ec29YrygDU=;
	h=To:Subject:From:Date:From;
	b=gPHQlT1jpiEMHNWd1t/brbg4h2ZuOTk57sKYYqGsLnJHkQ9RPBynuPb27zdGA1feJ
	 I2LOjaJI4je4mz9cpPr00/Da/UbJYU1LG6rH1n0v+0x088N+Og7HaWnesilxt69wBL
	 9h5w17s+2NvUpB234tgPp8uP+i9JUSI2ITUJBHLY/DBdz9o7m+17sqnbyLQdHh6s9y
	 eIBbsh5WSrIrReoJrBT/yaa2Fz8tBoghXRfwvALjQW7Zd/yA2YnHOC//PLUR2LiafO
	 nPGi9wB3kckSBPYNz92n3AF+OgXnAOzYlwKbLuDyyx9DdbRD24VAF4uP188aAcPe09
	 CUl8TDfliIo2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901ACC83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175269539357.25782.18006725134197059911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e218fdd8e5efee65183bfe7c9395636e5f7c2fb2c81aa99b5e7b4d5f5d9b46
Date: Wed, 16 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752695393
