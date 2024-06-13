Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BB015CB
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718284703; cv=none; b=HcP7HKO5iUKph7BJkLeYsn/S0h7UJUqdYNZuq32nli/A3c8bxU6fgu7gPFnJs2bcJDlAU5AN099cZeS+kFkiTDYzXbcvi/4Jip3Ex9iCVKROCKBCf//8yURn5zmwz2OhNiFSeMF9vpiJOeBVvNUk5zcxsyMRIHUq6no9QTw95iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718284703; c=relaxed/simple;
	bh=8jdFYFN29jwXNdVAC3vDyQ+Eu7jgEVOGWwIxe+EMv2g=;
	h=To:Subject:From:Message-Id:Date; b=sRAqUo20x526Irvk2risA01+0ZMJkZtSMXHNiRlk96B5c+Kay80G+60oTTKDiXs1iK/k45xK4pkEzuQIZ+QVCAy5smc1hb8vFjswsgeqm2k7APG0mDGge9wa8y1B4av/bJ9EGX4otGW1JKLE3I+fCAFgAHRKHJC5OI2sssCPfi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIavCNFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIavCNFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7734C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718284702;
	bh=8jdFYFN29jwXNdVAC3vDyQ+Eu7jgEVOGWwIxe+EMv2g=;
	h=To:Subject:From:Date:From;
	b=UIavCNFKsFmxKBgovUQuT+xd0dPgoHBSEt/ZDQi1hdFvKKS5eRQRwCDGL+SPO/mDP
	 9uxGjzpkD1C6BsvASdf9GTkSjE1mmm2BtyW1VHzgRuWvZEqRukkRkc7PlWM9jFHjU/
	 A1oUlTdXS81D9AxiuU9IwGQLVyPIjlj4myiyzanHKtQT16v0c/3kZjAnVwZ4Lnk4np
	 4dMYXHfRbQW2dSlTp2rIp1txJOAPvooOPG9dZ2tWzzNw7HxBs0NZcC3/jTvMzOYIpR
	 nHHVM0FrPs1B44HyRJ4nxn/wcu3RR9lexsbTptoEKXGtZzeVLg7swm9wwSI9Znfoad
	 ybermNxxS7URw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3ED1C27C78
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 13:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828470285.769.5466177063306165665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8b5c5030642f8ec7863e51f20bb2421317dca9cc8dee6462de90a49cc39d90
Date: Thu, 13 Jun 2024 13:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718284702
