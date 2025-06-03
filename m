Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3771A1804A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748992194; cv=none; b=jbbFpBHCQuiCzyUDLxJcfHdgm6a1GbOmtPcaB+ZnCp0ebRBwJOGXQF0YG1SSAhDV6JI30XbUr84G5dAoor10HWWBf4JiSTVqq1p97t8twgLvtED0cpBkcDPBX+76YdZ7GLYXySYCDcTSYlsVnpebfBOUf/N+T8Njis/8XoaqY30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748992194; c=relaxed/simple;
	bh=qW1xLdgkl7JNYhiLm+Q1ssn6qmfQFqZhRH0CsvbxVXk=;
	h=To:Subject:From:Message-Id:Date; b=rcTPwYtA6JhcpeqfMkWeTnbFmPSd6K9AdM/2HPSK2PwipuivYEqlQrYPze8FOuUUKIoPLaf4zfGbUQW6RpkO935qHB6KgZ21Bm2/iDgGVHb8dPaeFpG8ACc/Pi4dUnoJIYZx6nrLEydcx1CXEnEO9E7JJ2WZqTHfN2iIiaVV8zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+qugo25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+qugo25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A949BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748992193;
	bh=qW1xLdgkl7JNYhiLm+Q1ssn6qmfQFqZhRH0CsvbxVXk=;
	h=To:Subject:From:Date:From;
	b=C+qugo25kdWRrIrHNlRDqWxOAc7R4EJZlpwQ1UQzDju8A9OoHFlAx3jy+qQkIPqIz
	 fy1EmPgu2qjCZIJtz6elW6gSVOGno+35fDZfN88ag9FeLB5U/MBQP5r8Bz5bp8nlpX
	 W+jnRLn7NoULFOul0xDf+TdMBtEhs5bmLP47uNtYjdGQeZFdRNHsV2H3iaiHRyhdEC
	 kPitycTgRMscqZTYtvIYZJCoQjFLCb9yA+Khiyph1irWITPWvo6bEPqOCVVmEdUQUW
	 vhh2YsNjX7DocmSXPADJuFyXU5K+tA+20BfkUlG6J94RAXE6CWkSj5D1MrVkUajIo1
	 WC0xcpJNShKMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308EC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174899219358.19021.1272245598140398540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954caccadd469ddcfbb9c390d0f33fdc061e715ec79a17637f459e136b6c97a1
Date: Tue, 03 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748992193
