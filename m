Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C57380FC6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787306435; cv=none; b=VuFi/2swBTglrP1jgYvRsO98OB14/RPTrKiGqU8brI3jj9b9Z0zc03/aGMcvh4uzo8N8qS4JqZJdeuSR1rK1Eg5aCMP4SOKsxa5BrUoM73kg0EAhii3aiy+JyZT3MocBMWthyT4fyJddukxutD/5uiS2VckX/V9Mh+RBC1iBlnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787306435; c=relaxed/simple;
	bh=TFqnlma7XQvOte1FkTn4O2bsqxISxyfgEFgicke293U=;
	h=To:Subject:From:Message-Id:Date; b=UNbrP3ktXwGqtKrLpfAqGAv3hp4RIBqzB69J3Ncm56U7oy6p+ZWaTKnY2+N5gXaDiPESp7SCl7BtpwfVWXnlMcpbAxqPKP6WHXqlKLtvXONWAZy0Wka3W/IiDXlFK13IOmV9L3cG4AyjbY5lGrYL8w11A6+77tWg0BbyFeDXqDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBBEYts7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBBEYts7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C18C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787306433;
	bh=TFqnlma7XQvOte1FkTn4O2bsqxISxyfgEFgicke293U=;
	h=To:Subject:From:Date:From;
	b=rBBEYts7IpE4c7rhr6Nqh9sVfWi11Yb0nTzyFYxw23L1oyHwQddxQvVH4RF0AlV+z
	 qA88RmQ0FaFkuJDRf+2LQK5MpwxtJqjHpp0X6ev71gaUQB1d344QR6CP8zHTiujcWQ
	 rAIaQ1F2X7FO0cv/AVWk4CbMuJienmI5/o8MGF9M87MkAH6e/Fvv9YIQQDEpM4IrSA
	 RXzMGNYpYNWJxjJGlohJBBHPB25AjwKUH0SrNPMlLEhITxs+g44j/Cp08yVEvEmwSG
	 5m1JhFirRZ4oo7TFpDTwGm2288ueODnTsWXLr51rLtGs7w6y/MkweQjxPvvQHMZXd3
	 LWII1zWP6W23Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA959C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730643375.10465.10657544334309871131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8c9cd6cba57a09c1674727810ddaba516dde37c15918ea71076a5a429e6ef8
Date: Fri, 21 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787306433
