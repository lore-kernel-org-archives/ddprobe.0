Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65744BE430
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789553436; cv=none; b=YNhIrhPMvygolJHQCGobr9/DGGuz+/8BckScUD/4Huq04PBnetNbdgtRRGoGA+gmadipSMptRWi18r5UxHPcL6anjdcHIULZiXzbn0tkeMJrRR9pRBbFoEBJpaQGyc5jDWaVBNpTaGHfDXtqcZ/IcyB6fOljt9o6KcTZmIWSn9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789553436; c=relaxed/simple;
	bh=xP2r1kF88s+rRq0dvnFSdp750VIQBoyy2T/ZASr9mYM=;
	h=To:Subject:From:Message-Id:Date; b=SE2i/yvM8yYWJqGY8RMF045F1CWxAvnuQH5WVvx1nc6hMXNZumztLqT4ybxZL6SdB27xQyO/YCLP2gLofSjvM725nH6uhewwTQvvDRpdfWNNrfMP3TSXeew9C8BNPV7zdpvCgiEByFdVU0WGoWABpTbr2zToUK47BMmr0QPQ/0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujayLy+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujayLy+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5268C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789553433;
	bh=xP2r1kF88s+rRq0dvnFSdp750VIQBoyy2T/ZASr9mYM=;
	h=To:Subject:From:Date:From;
	b=ujayLy+V5D3F1eL4Bi3+YvJ2FsW6LSU/1+t5QTw/aFd6N5gSkaxANbc5T1JYtq0GK
	 HhNaStLCSvcvPbjVaffTqbnh7/3sR2B9/j6KZEA0bqmwhkwWLMhq4kaILdjA2KlUyw
	 TtZMHH/s87YTXx5il/m4VkeTCWdoF+I6heUn4hU9WPW/LIfMwGChdK0GkHkmODWFav
	 JSNb8g+eqZYpKXfuwNjlPVyFH3468QkvSOKN9/o6ztSKAy5rEg0QZi69ZWLpQME8Pb
	 Vz8qpw2qfIJdmFehauHvAig7pHqJ7IOC4he2ySD8nkTKwspN4fEJr7N7CgyLgGv4ML
	 +Bfv9TyWig7Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF73C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955343369.15321.14918389900502846375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbe3ec0c035229722081961dfe141bc5b40e378e862ab45121b41b7b52d2e205
Date: Wed, 16 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789553433
