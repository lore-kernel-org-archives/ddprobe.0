Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABFCBA37
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707985097; cv=none; b=RgWmhkGQiMoOF+5vBuRW/WFTkYoeoywowjcHTDrnIDj11pIuQmphnb/C+dAAQJ3x0Jr8+tM8iJo7viSe49Q1s1W8GvurWKQ0WHsFFFbQ5yInvUhfpgSZhHtvElZH6B5CbChHYuU5q46QP5/DAroybQQY3Zc92ufWZYAEw8tTLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707985097; c=relaxed/simple;
	bh=aQLk5xXlfhFRrnOvAwI2ZRgvPk90AeMLmCixm+zGRL4=;
	h=To:Subject:From:Message-Id:Date; b=rGxgeHbSFNhhjB2re2Sm0QFf94VkWjhC9KsEv4lHBkl79J5QkS3WF3oDMZkB/mKUxQHLK6MTXd4WXYEv5ToZNomyt8KAWafG/jz+x7ZLogs83PkHIfuGzEOP9J4B2CpQ9w7cNCRh9pnPLxt0+51alBmprcIV2FpVdLvxZu0DOHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkJCriGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkJCriGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1712C43390
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707985096;
	bh=aQLk5xXlfhFRrnOvAwI2ZRgvPk90AeMLmCixm+zGRL4=;
	h=To:Subject:From:Date:From;
	b=PkJCriGabfpqL4WCfA9fe9erSufSW1rM7sEoxa5zC43vUolbVg99vRCHZtgXYxxZG
	 61IfzwwmeZuen5Z9NwMflul+vDDyCR8mgl8lrjqIHiiYS7rLbR92Bd+4S4zKr9oIhI
	 cWBa0p9o8liSMrGdRR+lglCqQ9y54K7nsBXcWmGpsZJ1jzfqDvqK2bz0IV3GJPPORs
	 WOa1L6s1oJCPtcXiioosg4u6wphflqveUx6m705sQ6WCrvn/uXSfnU5o02qlhRasyx
	 Nb37zYHgFhHDYuEFCWoSbfrl3QzW8fDHFWIccTt3sDdnvdw5qNRDBI6JjDKLVt7LP1
	 HYy3rEJhdfE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FADDC4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170798509650.8177.9663589277518299222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a6c77f45842c88cb8475708103006c611d8568876a97aa81f331e039e9410e
Date: Thu, 15 Feb 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707985096
