Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E161C07F4
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733850354; cv=none; b=rpEfqC1knrDtF0MaGXGmqghWHtNKp0xxleu1BL1zYCFRll8IdjT2TZTcalNHJbR1S5/iu+VJ9dXyeA0cX5XSUenpzRbtqIK6zmWLv6svonYIC2iCaT7M6zc4TILgeGWV7kQnAlfKtnfvrPQv4xU3/8QRwEUdChV6yZHU8Pzs0a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733850354; c=relaxed/simple;
	bh=Kv6YJB6c+IZroHlRIRPC28YBlctizyYPUUXCTwhXKCA=;
	h=To:Subject:From:Message-Id:Date; b=dOqzDBsPO4414B81bsD+yqwJugCi64GqNo/E8wob9HDlU9t8W1waBN5/s1HHYroBmKK1JekP87X7CjGsCjk6pyuaBE49T0Pgl0S2Oc1adtjjuzm8tqFL0oDcpMuLDFmU41LrJiMWDWhfJtIa2qamklLXv0ly61zcx3WN/WZ0Y/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORQhseY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORQhseY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB7BC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733850353;
	bh=Kv6YJB6c+IZroHlRIRPC28YBlctizyYPUUXCTwhXKCA=;
	h=To:Subject:From:Date:From;
	b=ORQhseY3elxhtXPte3rkOJmgpG8sHEuDRG9Xy/ICbcxFJmbhQmJ28Rsv3vfjJFvxb
	 2o9Z4QZ8k2i3vQv8NljQzn/YFtt/VO3TEnG4cGfdOivCmLwWu7mCeX4Ql0ke31/lRv
	 A848rXuLTOqzBaxaQG+6CM9jrwyAs99oDFaeAHGGCunzSpCH+cR2jh12qV2Esr3gbH
	 PIGYhU+EhDS83QTCvKZcpXcGCogQgdm5c7jlXYgnG9js4WWOCGyaUyBW3ujoXy19qB
	 zgFfVAHO8LVnLl6c3sf26n91HZTb1Q2iYmSC5Lska7F0yXxz7kNVGH/JD1vP5EgIkT
	 5MvqggMTEBqbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0423E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173385035364.32199.14185809909762938781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17311c8793b413046aa0b6ad2c617ba26065c9ac9955a7befbd1f2c3ba9f3c62
Date: Tue, 10 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733850353
