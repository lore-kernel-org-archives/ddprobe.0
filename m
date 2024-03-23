Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA7E18659
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711231697; cv=none; b=sj0bNk8wJqnkkiBrIK95RypWUx+7K7rxmB1bZeLJisUWeA9cIo+xNTsL54ic2vfR85m1zOhBYwEXmyelta4UbGJVGuiec1yqAzLiAEB4LNWrXwKRsNz/6lEOaN4wJdDW/z/E7on69CisTpc8P91fjXbZwHEundfeVFi+vMv+PlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711231697; c=relaxed/simple;
	bh=/dlHScX62nAmx5pGr4I36dDZYhszYE0UdCx9cvS6qeU=;
	h=To:Subject:From:Message-Id:Date; b=nynPXPJS521QxsaU6hL0+yffzCcldEC6AFLRc6ll5DFojNP/b8f1PCzgrNq227+zptuGRALeEs9HaVlzeIS3aFAXpfdpzujyQ/hTkxaoen4tGwq45DTTqWqBtU5PLHKIURf2zYYmArhArclkBt92XIp9A7FUzMJ4ZPS08rdO2EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVYXmpV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVYXmpV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEDFC433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711231696;
	bh=/dlHScX62nAmx5pGr4I36dDZYhszYE0UdCx9cvS6qeU=;
	h=To:Subject:From:Date:From;
	b=PVYXmpV+Wvv2tuAkWj1w5qFeLsiqVnZfjAl5k6qrlOnXirJnVMVgpdlX6WsmcePBA
	 uR0pG4ThaupYNWr8VJj7ByOxqd5EcczevxMBsRlzZwTNWZOtG9/L5e8XS+cvRdJa4F
	 uazYyxug08UaeGtJkjuOnKYdtPQ2wbZ9Vywi/CLrzvyWp6a3HCP95MNqFluXod1Gzm
	 2URhUvSZI8wGW9TVIM1r40A2qAC2kdFVGzO1ytAihNk/mrZolhWmyaLgapONB2DB4E
	 ux9jrevJjQNkEym6X4Sw58eukDycmil4qR0s/gyUPeZJzBySBsVTIOuBQXe2HBSCnH
	 +N6c70JO+odHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C839C54E67
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171123169648.1806.10980736573329900268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80fc0a5a309c14ffc4fbb9fa78012c7b4dac96adb5c15a5fad36eb7639617e76
Date: Sat, 23 Mar 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711231696
