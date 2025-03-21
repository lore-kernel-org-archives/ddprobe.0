Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539E622DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742578794; cv=none; b=fHOC5Gi1TejQ8wsvPma+FdMGHWljVmYCnp2qMu/0ywRJjnOwsG/uSDFSzYS3nipmitQIERZj6cLH+vfQOFs8a3Ho4XC7pGlAotfXCPNXYTf8ClHir7uJHTjUdPexJaPHIcDA82ds3Wo/v1Roa5nFocr0rxmkYBG7OMCDasvHoEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742578794; c=relaxed/simple;
	bh=CJ/QYcBu39XrMEwl9KQ0sRp19R7ga13Lnyc/sNLIYt8=;
	h=To:Subject:From:Message-Id:Date; b=IFoAZ1aWeFKQ5dmYZursGVMJFIkO8AhMFTK4ISdvViRFKTTJJLfP92KePhK6BfkMMKnS4qtKoi6EMQxPINBdEu7fadfq5RGAxy3YPcYWDRbsKwZrfnR/URdtP/GsfmupA7JyaNBU7jfbC1NvKaqz8OHTPtT8wN5JAP7zovo30w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhnzM6SP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhnzM6SP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FA5C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742578793;
	bh=CJ/QYcBu39XrMEwl9KQ0sRp19R7ga13Lnyc/sNLIYt8=;
	h=To:Subject:From:Date:From;
	b=PhnzM6SPblbfzqQfrcNMJj5kMlsnrwZyB0hQ0zXiWpa6vcA+iXCQyiOMWnr82DCXY
	 LLJqSmWXXcmwjg0rVZJ4oDPccY4jv+m21fubn/zMIWn41ti+lJbMLxL18K+RiDKdws
	 Hb/S1e8xkUa7OXY8r0YywzsqsI04SRCC/QZFX2eji+4F3GkboUQ1g+t/JdzqzW4zlg
	 tIOQs32EvKjLd/WOOId61aylGEjLQ+WfPZxb9rCu8kRbPitxhnOIaaT5kKAix4xbFP
	 CctzU2ms6aPFNMKSTe/4pKePyz7CTITKwxZeyZZE/0+/tKS/ZY5Si4CP0InUqLF3H0
	 1CHS0fs7hKYyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D5C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257879366.9700.17370587454530160083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33af8ac2ecc6121127eb30a6e4065a18bb90c950ef2cbd1e82bc4b1ef34c5ba
Date: Fri, 21 Mar 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742578793
