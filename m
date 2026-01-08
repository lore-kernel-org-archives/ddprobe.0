Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E860243636F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767873234; cv=none; b=sQ/XPP06W97gmjqZKka0c4DHvO7R0rL/JSSVKV9E+WHpYNx5hffnrEBhRSlCGuTRmHVt23VWVgFaW3kwb4yhOJxG2IqTHWOU9+zM3IEU+CVUJ2azBC/fVwe3IJpgem6LwEDL/y4r2KrwiKCLNHbN337Xdd5wrxgKf3FeetNMY7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767873234; c=relaxed/simple;
	bh=9yYWc6UCMmt7IPk1GBT9tce7DRSGZYnFu9tftWQciog=;
	h=To:Subject:From:Message-Id:Date; b=ElLphrXO+pKTspjfmO1WeOVd42OldjLmvZ06BBvxiTVAxOanvAly3MdwRQThAJ16tE86lalQ67U5g5bVahBlwLhyr8TUqnaB+O6hI0QRCFK0YtN1eUdYEcvTkbiso/8bkuJ7+Tny8cRFUDMfRKnCHuwjjPl0/G1MiatMvHnHZHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFtm2U7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFtm2U7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEEDC16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767873233;
	bh=9yYWc6UCMmt7IPk1GBT9tce7DRSGZYnFu9tftWQciog=;
	h=To:Subject:From:Date:From;
	b=kFtm2U7m3rvuI8UGp5SqcLE7ekc+g72CrpCm7D5h07Pk62H49EhONk+NPNNGUAkY4
	 JyCnqNt8Mxh2yCzhnjjUrWLMuUHXIOYhO3UwkydMI1IE/DgFiJ2UzywYda9NtbYkCL
	 qMuh1TrWwZYLKYD4oB1MusF8JOtxgaoXjoB8CHVOZdDPFtTjfwFxiYv3D9xnDv1QFg
	 9Cod4l3bmLa/tKS9/0OVTZJcmAPRZe1rKdHJB2xZYYQNxOwHJwGqjPZPrSrCec1DTb
	 xlz/oIS09/JvPxtHY27W3kmtUuenMf3BeHK0z+D0y6DVpZWSoszIJ73u2qYK7dtP6v
	 Uj7lRNGloIQFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE5D185E5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176787323357.8856.11330767845224582253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8f525cbdea222cff4cd211515b2fc2a666688e12fa630b4fa76b8890e806ba
Date: Thu, 08 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767873233
