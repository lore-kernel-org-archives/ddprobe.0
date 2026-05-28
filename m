Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E26132AAA8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779953554; cv=none; b=SHEQGmWGJpMQXaIlvzUGj/ZPo72letp6CLRMaYNMROda3i1SNRumIkzhvck5kbPgeOPhGe7/ONyb6zuvot+4ODjpUfWFBIfyvJUwHh2+Zk+zfXUoYapkgP4IPdDvW/Ipc6MeKKc02UdoLLD53oqU0u7sT5KaKTwdII3WUtNKQUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779953554; c=relaxed/simple;
	bh=BKB37eNzgUAr2G7WyB9un6KOC7Jm5EQIQpT7AtCIZnM=;
	h=To:Subject:From:Message-Id:Date; b=ab+2hD6gU0X/zzAE/1DYGPSrO4A+cHrpn6qvWFlw/4dFpHjgmikkJbEyLsonAaDkCrD3B7izIaU41wTYAJn/gDf0oygPeKyywE/5MkIszad4e4k31es4xGxx5n8TGlyfrrMD4lmetB+GKjOuwj3UcuFaV+j/6IR5OFHlQfHuGMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VY1O9nOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VY1O9nOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7EF8C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779953553;
	bh=BKB37eNzgUAr2G7WyB9un6KOC7Jm5EQIQpT7AtCIZnM=;
	h=To:Subject:From:Date:From;
	b=VY1O9nOkkfWwUDuZOEld7C3idfvhHH3aQC4ejL8Fc0v38e7YPLza0mrL7QsQqA8xq
	 fGG7K+SErygiQ2eTQkZcolOu++wpuuv7NLflHmJTDYlWJKsMYgiVwYg2QqifRpqx3S
	 sSQh+xR0LZyCNITTdUiWr3/3b2Wly4tiBKNLZlX8hV0kgo0W6gWUaURb8u0+D9t4JU
	 3nYysSu8d0pfmg985Be7dqtwJYhadL46GMwYtQGdtyXNCkXyOqNeAqu2QKPKDRYkye
	 lAJhWnw5r+pdy2VuXhPRaH0YQI58PbfgetJH9b7Jf/KFnoAdZICPvoWfuZvrLIHp4b
	 DKMCLMJHs13SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AE2CD6E45
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995355368.13426.5683045513901912667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100c64879eea1563b85e37c55bedde31751db6eec709a00e1186fee87375615f
Date: Thu, 28 May 2026 07:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779953553
