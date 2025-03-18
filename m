Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC27C13D
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742312994; cv=none; b=swi2rknLkQd2XZLTYvXIk13JAMLhuwisWvXitXcMM980wuTPK6OrnSpE1Z+cFNkopt8fD2XzYx2qW6p63eVwRIu1QBZ2mdFAepnfzTuPsXYbeg8PcUNclBFtA2LsQGWnBAlncYqN3BnvwuWBNgrrxyPBPLeW/iq90APrGmZEcPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742312994; c=relaxed/simple;
	bh=O6fS5uWd1Y67Gh/9425Sh7hFckYTeFvz0ZYsWThK2bc=;
	h=To:Subject:From:Message-Id:Date; b=aXy13mQAGxLaO+25LXamXIEBIWq6is+S/Xus56ZXD0q30bxL1emU7O4+ham4eZZNtSFineIWgT7LNXk6WIVvwQVqTvnbV0EZb4fjqE1MXxCNoOM1HQ+N/4sUJjlJOSkT8U4DS5fQ91NJG5pRcTQ4wFd5Ia1szxMRqZ2aaEldPD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5OGcxhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5OGcxhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64AFC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742312993;
	bh=O6fS5uWd1Y67Gh/9425Sh7hFckYTeFvz0ZYsWThK2bc=;
	h=To:Subject:From:Date:From;
	b=Z5OGcxhVLmEfbHYrYTAgvoOo5QzWrl3Qe0Vs4mpQuvs2mGgt031Kfrf/eWouFRBEH
	 NFQmkGOncqer0T78UbBUDKMadtmPHNBpZuVXGEPmBO7z6SLR2QbE0bMG3RcwGU+Vru
	 3SGX36pCjJnfIPHDjUQ1Bs0nhl+CE2n7lT8Q/xmfmhzIe/xiAV/EcS5Fvg7DD45OAE
	 AAUXRBhV3GE++nNtGBepqawqaOapFaVv1bQpuyzwugq5j48THTHHDhclOEa1pxZ8WJ
	 TiarqgoP6/XCTePMFF0/NOEP20aLD8p5emtGTpsrKwMVpFULusxiru1y6mn2jn/Ou2
	 hOgaFdG6SAcBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B70DC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231299362.13646.15409017643105120959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62e0621eab1c8b92e69fd70f9f3f34652800626d1ec7f5b950e3674b4c7a145
Date: Tue, 18 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742312993
