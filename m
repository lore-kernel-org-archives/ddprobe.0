Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC08577622
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706102896; cv=none; b=Ke/jJ/V96uUo/rBle7Y4S1GMycSmOQL2g5RSHemmAiQiKQKd6WsOBi4AnpiNlgkS+h61DwhoWKIH8dsLSPMH3nuGPHG5QLSN/oP05d1Rp9ZbF9pRCZMGgeSaq//HaxlX3snS6ltHXNAYQDxO5QUK4jufo0MhDXoI0a0zNlSrBdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706102896; c=relaxed/simple;
	bh=PNMFSCY96WUjVAWP/To72SvrIs2wJ+kjCpVanQHLt3Y=;
	h=To:Subject:From:Message-Id:Date; b=CD9CfGk2ICQMY8B2VTuK9tD2ZqZVe7oU/phmKvAi4YXo/0Gr2tm3Sedlc6/Ztp4KFE60m03Ujrjb7enVWFDgeW1ckZACFLf8HsLs0mBnhAIahJw5bqSyR6lvur6G7ld1V8DHvDb7jH/FJ2qv2PzSARl3fhFkpMl+wfXs/tiBUco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSgAwFgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSgAwFgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EC4C43394
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706102896;
	bh=PNMFSCY96WUjVAWP/To72SvrIs2wJ+kjCpVanQHLt3Y=;
	h=To:Subject:From:Date:From;
	b=eSgAwFgMv7iOeStQG6AEp7SrQpEdJ39vy3zVRZpsW59zVJOmWtBLT3MWPNtFclm/J
	 lKHlYv9r8LCwb1HkBIar4PywjFCtpyTVYtwpaG3AAcpjaeFZzN9LIcb6mNToBiQUut
	 QDegR0ZbwCr/SyoJHDGj8AT3mZTPSuNK84nBZZaT2eYxIVqE5Itaza51o0Yj7XPS8t
	 qROH3mLnbsNlU1rj87Q/rkZgBRvryxB6TGqlru9YPpOEam4Kgxuqzn0eqxpu/VgsyM
	 p5QvhJ2dSKXc24lUZmfuVS/aLe+roovj0N4P9k49aGl0UKAQ7+Urim/mm0Yg8yfEHV
	 XWAEmVc+hKaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2ECC47DDF
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170610289637.4754.7085860362505019842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601fab9519f0f917e41014827933326ddd848ba50d8b2a5fb38d71d8d162839e
Date: Wed, 24 Jan 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706102896
