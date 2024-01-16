Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EB867C5B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705447097; cv=none; b=ThbAWwI/y1X0AeM6TBoL8K4OrksMtA2gDCFWqAJI13GF94FpBckYP+vD6yGa4J9VnkY8K0fuBJFsyrXlA8hZSwxiCemxz7URxY8Wf+kjGKr9uZ8VvmtAiR6ode6S7ll/ufCK65K3jmt1WZCZlAs5mYK16JwlP0lpo8KQvM6Am0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705447097; c=relaxed/simple;
	bh=+1L1j+4/JWk88AGMuojrCNA9aoiB5/312sp9D0alvAY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=AcYwFPoaYcRuLgNjiqrBGoX2usS78R3qL03mwAGmd7A+RLn0wBv65CzzDI80+193FXI8C5u8+bEGcbruQDEi5vfYF0otBJnVgCB2bmQzMU6CnmmwSEMkVceGiFColKcaLk2YzUFFhuZrfBawuchkjrmmUULI4xpjyslfpv8c+qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtTbIJRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtTbIJRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B0DBC433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705447096;
	bh=+1L1j+4/JWk88AGMuojrCNA9aoiB5/312sp9D0alvAY=;
	h=To:Subject:From:Date:From;
	b=UtTbIJRuBmBea/I9+cmsfPGxv3yulR5E0x2A7p9hpF1BrqLPvEuqdUikONnKHMFtZ
	 VGA7Q4THrbn0Kyhul1bVmGg2sLYVVJ282K8939XUJH8N9m9qgJFQBx+x6oPfSy9y6k
	 fN94UhR0vJYZO7gH6SRhY0ITHsXWH53l+IemJ/j8ddo5je+fA3lxs9nfXXMjSqUZG3
	 SMobvdwLmhF7P4+8p5SESHqRgXcbsv2doC7MimzknfnO/ACHoW+bkXdyeVjzzlXH0L
	 OLwINwqS/66+kuHOkjM3MPXmSjWXHkPUp/9jRbr1MSwJK39B109eATerRQFpuoCols
	 YNe3b8/b7aEZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEF4C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544709638.19324.17688158071915225084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172dd773ded50780e57ea82b3972919101c30652a5a9ed450b77429c88e62829
Date: Tue, 16 Jan 2024 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705447096
