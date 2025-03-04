Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8F97DA93
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741120134; cv=none; b=MFIU3Zq2Hp0zRddc7EUwZAzUCNbWTS6ktHg/i8f6yavKruFX+6UrBDhwOQmsNa9kB0W1HwBei/Q9SnNHtFd5kf95SGysyn7VNspIKqmkH6TiHVtKUJC5ZkLi+YChShh84V2IJEwckDjuUwBJewGAueAAS2eq5KBlm3x8zmfJtok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741120134; c=relaxed/simple;
	bh=lBN+xLnakxpou1RI8SbOd48xxaqyqQvKw/ey8g2NJrA=;
	h=To:Subject:From:Message-Id:Date; b=kYjKlD4Q5+9xMv6YyEMLsUQXFq8GAtHqIfyGvTXg3QjU1/ethul/PZTA8QqfEX9z8nkYNbQnofI1AJlLY4i3cpW+Q1HUUafL7p3UOG2y1b0SqrTx5MBUffMZT9aDBRpdDPa9ujCl+Le0MiYa4UVKPyxGy+tf03+HKmICBsPFIIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbcYNLqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbcYNLqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98A4C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741120133;
	bh=lBN+xLnakxpou1RI8SbOd48xxaqyqQvKw/ey8g2NJrA=;
	h=To:Subject:From:Date:From;
	b=MbcYNLqT8qIt6ASZUYiKF5nf0TJNmG39gALKHmpY/UYgy2JPVfpGfNi1H6k+bkR1n
	 YDo6J5fVjRqqErFel2vMAzcOlvvM24XJioHiOeP5oqfbWJgQq07JOjv/CAunLZjFSx
	 IKdWfiownnYWQAUoXy7GLNtbGridDsikGZ8S2j/zny6HG3Apu+4qpj1V8g75w6Ak4v
	 6IlhzXGN/KuWiiBv9RjkTOkocj3Zqzbj9X+GPSfpnPzxb2gjMXL2pL8MS5yATmq5mI
	 QaAgdfr1+WpLdNovCXkkivR9Yq74ifMxk0l0Jj8cDJRl+TVL5Jk94hDUEJA/ao8qAD
	 IRLTRGVLqyU8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242FC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174112013358.32730.4256069846959717307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b2ba8d0c8cbf049914ab145f9926ec40eb89d3907887f423293b86aba48b7b
Date: Tue, 04 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741120133
