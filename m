Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243EA21B195
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756519794; cv=none; b=GGvi2+Tu9UYP6jjZHLodohtvQLpCLNpY+xuffL0mwx01xCEQWVpQXiOqtQosTgZMZu1yYp4ArF10cdG1dJN1a63icGKZG7rDCVCqUX32LNKDLYisCPKmQHQAHkzBapw9jP/5d7PjcfnQmILkzaki1yXYiaYg4+uXEF3RHGDhvHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756519794; c=relaxed/simple;
	bh=KwSkkyWSpilm5bidC1YVDGRbqAtASQbFC2cfHOGbuk4=;
	h=To:Subject:From:Message-Id:Date; b=L/Vtx5mC94bcUpEaMpGd8dwuxy5K+cnpl8t0ZWtDPveNNCYbDkDUjmuMAL3OAqomzEjHApkzpTquj08BZRsCMupOj3iJ8Nhi+Wh02qwxzLTyS04TsaXmmu2J/QI0PoqkjZvdAoduFCRywptb6+dFh9L76ZB6Pqy9k774rls2/wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O34XTxk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O34XTxk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AACC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756519793;
	bh=KwSkkyWSpilm5bidC1YVDGRbqAtASQbFC2cfHOGbuk4=;
	h=To:Subject:From:Date:From;
	b=O34XTxk7X/FcfGJXpkQWIaWnrx0CSFBx5pbUEYJxqOtHVNdijtFcp4xYQxNyGv0jZ
	 L3mTvzoBuK941iZ5Y7x0rZiosH4yvlkDDP3TUv3B8iPoB7MpaKyolHw7xKZVL8M/CN
	 1wNDScEO724S+eU3qtUopgqVNQClQyTbzYjVNsjPHpNEo+ywlMx+lPOZbrfxVtWFUi
	 nee9+A96q82801H1L9NoZ6zqw7Z9lsfdumYR4s69hCHdomhQjB3Ua7UgpvQ0O6Kx5h
	 Gl6D8QLg5MIk2cNnKKfhHLXGyRq9ZaGOxZdjXuFN7vkbFeANv+YrJycttKG/evG9oG
	 rdmHoe5X/CMOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D00CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651979357.17499.10620469700513830150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc30bcf4f0086384cbae9cfb68a2e2c13fa1c31fd877d4f8aec25dbd8b5826c8
Date: Sat, 30 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756519793
