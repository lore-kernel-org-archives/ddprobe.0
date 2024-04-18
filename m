Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617DF286AF
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713481163; cv=none; b=McX1VviBdsVaXWecXVDydsNdgcDJmC5XAExu4i/X3vYv7aQbFsOGS2rftuyp2GzJnIVWL/lFUW5Qib81aiepwp9Hi5d0H7zDaKlCgT6Q0OW3Szqg8q0EIlQ9XkN4gLPWhm3ez1eXUC5sYULkEJFMO52sQSBrKWdWYuUyCbCWkSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713481163; c=relaxed/simple;
	bh=IjePyDvfbMFMBWhYQ8y3aFcKbFHoug50gMChkwtYYg8=;
	h=To:Subject:From:Message-Id:Date; b=ONzoV0rvQgrDt7PHNNS+EUP4uTNC3NPHKPGFMuTTLR+o/++ZkivvDh10VTzssacx2dylX0RkuNLfRWfgZ50BjX4Tfx+GXF++QEaT/cgQ8sPbtJHelUY0yWBkEPYbpugBpZkDAMH/VnDVDSXSwqzyNn2pB+VgUw5BZdfLyFiWQSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPl3ciQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPl3ciQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C69C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713481162;
	bh=IjePyDvfbMFMBWhYQ8y3aFcKbFHoug50gMChkwtYYg8=;
	h=To:Subject:From:Date:From;
	b=DPl3ciQJXYneeZgll7jNU14qnRdZ/f/n7HCiQzFq7/sSatgGjc++8pdzCTjdr2ps6
	 72r+e2/l0SwVaTCCoYL3Xsy62x4zZf44nfa3sL0VKE89EdZr5Qpwmf5ux3uzWBZuKr
	 pGCGIYobDoiM/7IuZzIdZPvJZHxksttnDoRYNDqLHrLZQ/iTVcE0ogUDqdr21YL+KK
	 Impmtm0Kax+A1XUsW+Ppbqau38iRO0O40iVnzMdC0q8C8ktlt/VerS7CqLJ+ZwpJ6L
	 44aYpN+0RzdXbDS8IU3jabgDDpin9M2Azf1QCMS9AHl1JTfoDCN3oyOFePP3NgKTBT
	 eMQ1NMo8EaaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1929C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 22:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348116278.1245.11039707693765770310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884d3a304fa244305b34ee2ed3f330892df8f5d147a8aeeb381aa1fdaf7d7309
Date: Thu, 18 Apr 2024 22:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713481162
