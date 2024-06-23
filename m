Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 662EA38C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719135743; cv=none; b=dSGtl3VL5sdw98+/0SV7zMKvS18VzLuF1xnx9e3pKj3Y2I6Ut3qY6Fb3XvqTEbVcNLULqSP4+FpROa3x+wjU33zdffWkquSume5McZsdq4epQXCgerVvWrHerowjH/HW52eZX9jJOUVOqlgBgH9wUQxkjKWT5wWyqrb8EnH1Abc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719135743; c=relaxed/simple;
	bh=TVCvtKgtjrWFL4jGesc/TpUPiFEel8UfAqm9a5aFSPQ=;
	h=To:Subject:From:Message-Id:Date; b=ETJlClCvY/SyaKPbEhKKBriocThhzcnVAvDoD4vXaQzeuaNMXQsRj5BSOX9HFJI66sWEHaOejlWWJCgfU+NpeB+E3DRoA/JwiCyiyaB3smxo99Z0TpGUaClSThYB0Pb5Ht9il9PCJH5u1OolbPCrDJMVYr9xi7yjUQqYTqPprkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL4CkSTG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL4CkSTG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5AFC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719135742;
	bh=TVCvtKgtjrWFL4jGesc/TpUPiFEel8UfAqm9a5aFSPQ=;
	h=To:Subject:From:Date:From;
	b=BL4CkSTG0MnCVcTgdYgP77VwLQBEUv9lKC3Zd16H9/NVpIwc8jj1ccP8/ZkwFAe7G
	 r8h+OzwdMPOIfdWLvY+N3ZcgQa+UvhYsdLcXMQuxUmxTWU+1MSvWe25DU7SCVtHiNk
	 h4UrNgnhKOWBksHChI0U87hHJNIU0uAzrf5plDjg5vpmIZ1v5M2llewdlVsO1az6eb
	 5s4wKlmMz6i5ANN4Y/1AaDAL6BS7h01JvaB1GcI7r4TRn6edGnBWVEzhye1Kr38BoV
	 EX2RgvmY2yRzMMv7YOY5RuI6mk6mCCijODvODzBdPmKTcFzB1R2wANQMGyESHIujEe
	 anJcR1P0oJmfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64B5C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 09:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171913574280.25588.15783748312366988644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c1ba244fc1afeba32f384251ac969a21d9b33364474d82e1714f6317927582
Date: Sun, 23 Jun 2024 09:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719135742
