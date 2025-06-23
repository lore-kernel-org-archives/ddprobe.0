Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FA725178E
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750682995; cv=none; b=RF4WV04iMclZJokKxYj4T8J/5bKzgL3QnIiQpN2mSk2Uw/e1lBb586+QE9qN8jCwbTHj1HwomMKZqZHCcAt6u/K3vqylhNWg3u/Znb27EHWioeU4pvb16jC/Z0KF35ZVJt3aX1SHTAVVdJIENXYbGq4PURSKpzdXpsk5Eep4lfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750682995; c=relaxed/simple;
	bh=AYCzbVHq/eKFCTvOKwKuKHotdLvyroWiPdTAhQAfRdc=;
	h=To:Subject:From:Message-Id:Date; b=VDGxgU9uOOUy0B3KNUTDojjt5EE1jYVK5+MUjGKHedJmd3wHzsUXPdC4WQ+a7bszzKGBznGoHbFwsL78rGcgPuLGiWjKXHGbQnX8qpnxW7NoCYXgIOo/edcPXBIQH2ZKUaGl9btH4nj3QATcBoOYsXFXTly3VOZqqhqMIHdtoL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N3oW3P72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N3oW3P72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD0C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750682993;
	bh=AYCzbVHq/eKFCTvOKwKuKHotdLvyroWiPdTAhQAfRdc=;
	h=To:Subject:From:Date:From;
	b=N3oW3P72Yykuawmi0AJsmxJC38HH/xXiXudrpxtsTrgpcnQEL0DkZAVczgDSETRiK
	 +QMa8k/32/xBqBZSOO9s3Pi/2KEyVqW+fk+Eu8bRXIVrHdvPjHcDWV+4BZQLLc72LW
	 VsuCGgpZyBr5HW5yMuNnOLltOeB+lyA7ZjJY5Q6lwqX0zTHIk+ert41BlTStVxfgzG
	 rnr4GRRCCTrO/xKhLoDLGYyGEuGRxNKp3aK0Q6Og6mgVS3YCIVeR8CNTXQgHTkmqGD
	 CYow8VrV+lkzhyrxxFDHkiHiPIqGMASJCR/P34+1xNTarVF+HQHMd09AdbFvjeHcfz
	 NGL7BHuj+8Sng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9016EC77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175068299358.5413.1700612980790667730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e474ff045f8e418842a8d45b93dd575afbd6c24763db2b4e1de8334b20000da
Date: Mon, 23 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750682993
