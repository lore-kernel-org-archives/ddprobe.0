Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3C813A88A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719380603; cv=none; b=QtIDxAuBgXUkyjtNb7CCcu7AVfw5I3EgtcVkPgsZMXp3+Y5E1LUXdaA0bzNySJOxSu8YxNzHzgZvsiz/jTmS3cGYBMOUbkchx4cPFXGMiZ1zHri2w0JsEMFieaZoVqdUpL4eefi/3BGAc5Fc0GH3p3GP/1Iqpu2JH4MFoCsugjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719380603; c=relaxed/simple;
	bh=SGVvZ2oj6KUyDMmMlRmhu/HVeDhcHvGSS67qanW3foQ=;
	h=To:Subject:From:Message-Id:Date; b=BIDcAdrW85gHPlRmViPufzoiWzkSIeUc0fdKk0rVmaXn3aEs4y4vGD+4SG/jZJFbKxJsO4IydMDLeGalRd1YkgqV9HPqun1+nwhjOeXMXy3Si4bPFXqC/W2nX/6tyySgiylrvzfbR1Fc7bXDwSMXJJpZn+SW36Kt1ZD8/pyfcRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpweVpOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpweVpOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5795C32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719380602;
	bh=SGVvZ2oj6KUyDMmMlRmhu/HVeDhcHvGSS67qanW3foQ=;
	h=To:Subject:From:Date:From;
	b=KpweVpOLwsWI/szooBx5nAT76puZgYYzeMLyReRERekVqm8WJdBg/C5zSeBFUGEC0
	 kHx8ZQQgWt3G9eJF/Qy4iY54yNp55kCiR0g9z4QG7hXysz9Vbu3Mx6HIFrd3ivAoai
	 yEd0OZDW1b4Efjkp4oykSZvmC36iCtbrvwjrVflGXlcFTtPr6ZDFp5NuSjPEQoCBuT
	 volmS5MHtsTCVqoCS0tHAUnEAs94foErzb941GbC+n414Ub7lJP7t+983DKxxoF3k3
	 bdlXjunhoOZ4iEqf2X73swmaWC7gHWcZFj6Yi12rR+fRLezouc010FuD62qLTIbF0B
	 WrVT7DBVbzPHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C204EC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 05:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938060278.18704.14997148949054587427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10ba63a0640407c6c7d4d16d38ffe06c5f382cfa38666059b369a44064d0f51
Date: Wed, 26 Jun 2024 05:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719380602
