Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE8B20010A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785388834; cv=none; b=NepWFCEFlrfS/+2ncVcw8LLYLGUlAN4ltzGtudpV6rNukjGRgmGPcao6eUxl97J9+TA79+5Q+yfmxFGGv7KHRFZXSGdKBds0GgWktZ12m4OzKke7FdKdbmOXmIFDlVV9zF1i7GGkLAr1GDri2EHCJiT+9EICBEvVjegjeq5A74I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785388834; c=relaxed/simple;
	bh=OoT69JaD9wRRiSU9NExyNY33ou6JFSBI0/Hanp4u83w=;
	h=To:Subject:From:Message-Id:Date; b=he7n5nU1cAym0gzZxRsPtfKX+A/oiVXZDExn8jCxSuhwer6fatW4m6uWurHhaurRbTGwnaqpupi4UstC69g4W6E8Vaa+vXX9qG8QXuUnfULIQME45/Wk7JY6Hcp263tB0tOIR+2G89wnZ6hqcyoIJynG+5DtkGW31GJPWoM2Whk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qvf28W9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qvf28W9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A7AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785388833;
	bh=OoT69JaD9wRRiSU9NExyNY33ou6JFSBI0/Hanp4u83w=;
	h=To:Subject:From:Date:From;
	b=Qvf28W9GHgf835+bbwef66Aby888TkQ5GhqQJ4gIO/LXne5fA8ln5KZ32dLTDARCR
	 kc3nrZQg1uNnk9QhNNJ4YPUpBzi7ni/hpHsbg6+M5+LFH3L3SasIExcP7/r8e+O4Vv
	 ksYIpFbduhTGZyxS5P9NXlBCX9QaSi0j1LtVsFwrYb3Ma1FJ+huzb3qK8IYp2qcFtV
	 FaeFFK4DFcEGRQvIp/RmmHXdjAU716aZKbEbsR5mdIySQULTb1Q+iPFflsPkw2ezet
	 1M4+dsbBi99coNkPe2xYu+updFljKOvZBibeuLusJHS10Oo+WOk8gqcOe73xiTOx4x
	 Mvlicke5KkyOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1898C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538883368.32293.5545903001668479444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf0cc9d556f4ef5d0611824734d5236df61805b7b37f9d6d92ce5f91202a5b3
Date: Thu, 30 Jul 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785388833
