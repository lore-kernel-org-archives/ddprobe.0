Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78B9442B07
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784810434; cv=none; b=MLESfF8R6vCNNQRqqQHKg80ghnkjiX+uT7U0ysi06FSE2/SEwW/bvjKkpuoB6k6R5fa3zNG37r0NqXLy3hBQuER79/KHntxT9pbF88aYDJRrY0NhwtTkHEqd15Vzu6nKWwM6QCbjUotj2ykpvadwIp1X28qTsdX/66enT+cdiFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784810434; c=relaxed/simple;
	bh=sXyZMD0Qe0W+RCPfOMYeIAOhDFJaKuUboXOG2TRIUtA=;
	h=To:Subject:From:Message-Id:Date; b=CtKCuXByT+ODQQJP1w8ctEnyQY0fxxLesVu+YaAlPBNokFVhQgxu1pAasOUQrlqaTcJJFoACApLSH+CVZonr9KTcdqBYVAxVJ9FXNMIc6hkPvG0I+scWzx9vgGIzrDYL4eKOnYSE0YLfafo3P+FY7kxK2FEf0qxIVa248vWQ+Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeGttfY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeGttfY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37233C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784810434;
	bh=sXyZMD0Qe0W+RCPfOMYeIAOhDFJaKuUboXOG2TRIUtA=;
	h=To:Subject:From:Date:From;
	b=DeGttfY54Bre1bB/RjfeyY6zGvaKPe7+rVK8UGf1k7sZNkwUAEWNYkg3OkNJacwWm
	 dVe2mYjgZbyG9DM249GLgAgHKYVeA09JzTIGiFkj6xac4TjGfqPjOVwsbfOSSf+m3t
	 Kfvjz1aEtiYZV2dDOM3AgMZIqRrQi53V73/uVl7CqaTj++Yd9/z6BDV+Gme7IeTTOA
	 gkf+Y0idloExWJgPYFyAu19JdocbC+OAoxw/2H3dL0K8LiaI+5yfkE8HHsjj/HD/CV
	 5lBqRpAFgbMJsIHtJCJg8lCuRDH4lwyo2ZR0x+w31rYPZbCpQ8DD9zP4D/KfFu8I5P
	 Rg++n9TYVslfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07DD2C531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:40:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481043394.5670.19207884527437077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45e70c6753844b1ddbed39d536b5b55da06af66b4899b07df253a644ac69e88
Date: Thu, 23 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784810433
