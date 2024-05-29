Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8999916729D
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716968663; cv=none; b=TsmcrthhPDShOcY9K3/BItLD7QH+H3caKMet73+HsCFp3AdBX3WeDmW82JOcBDi/p3LAkwKBjFIsMRR4gujrYNOcpTBSqmCnrf0Lcc3/F8fYc2yN4xcyjNdjQQ8eY+GZF6oRpFiMaPtvIuGXLXRSqnzCI9Zpvnom+SVk6mvXvfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716968663; c=relaxed/simple;
	bh=OJ3R4x70ow9kc6NJJXK6V3HzVu8D0qlXuch2Vb/Lvx0=;
	h=To:Subject:From:Message-Id:Date; b=mwU7NezRJEHnjtdTZaT4AJQp5nFvTS4NVADj/pthDJ88q0M1PGEfhdjUkXlYaB2EmQBhta84/Uut4fDpo2UHyb2v3lnGraxYfQQ+bAfG6271gv9OlkQ1N8pc7/EkEMabE5ZMAnZrBgQ9dvarLOPzlbZWxiqrN75Gs89Cma0iE3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWpFeRJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWpFeRJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03B13C32786
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716968663;
	bh=OJ3R4x70ow9kc6NJJXK6V3HzVu8D0qlXuch2Vb/Lvx0=;
	h=To:Subject:From:Date:From;
	b=lWpFeRJrey1z2cUzIJTJYN92EJ6wjBCJXLBbso3TaZciUaArmojsaarhWZJo6s/Wk
	 KYk11hXtb5ffRfNB4el1Ksd2JyyQTuERpwHjzbTmu2WX2cLceDKP94pk5zYQmR8WNK
	 YKvU+zHv9aU8QvXP9VEJ8hfsvWujRCs+kNvkXziwxAoE07efaO9nxQlKmh1r9T8utI
	 KxQ//g+apehHBFKHaDAk2xNeyetkNQrm54mhsoyvEeYZOyFh8TeGWNxSWoQQs/jNeb
	 SL4BPl/C2KUnDgh/CGfwezs6x1tAw12BcPRQYDl9rtAeucLXJPhfxlSNUZP3D289/z
	 PEP80CuHFMblg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8A8C25B7C
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696866282.6776.8480557180554196487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9bb29d2ac7ffb54850df56a5b20571e9ece1d4f9cd5c9101cfe9733b690652
Date: Wed, 29 May 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716968662
