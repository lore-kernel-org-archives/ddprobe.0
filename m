Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC1A79D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749070795; cv=none; b=a3LUIN5OnrjwyHYG8uv0Hv8JI1J0p+QtO3NeDU81h36ulSxcchfbpuyH6FLJDlQr9KjpvlG+xx9SFNMeApnwreDWkcn6fnwFXcL2ADFBYiugSEKZ6zq3qkiHVPk56ztxgKkB6yWjpi7PkeC8rNpcdlzXKaS0fluqjURHefav1Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749070795; c=relaxed/simple;
	bh=bkXoQQZEiPaySTCX4FjTKxtNmmoR9OQFdADM4kIV0hE=;
	h=To:Subject:From:Message-Id:Date; b=JJRctReC2/VGGIBs6pb69bc3sSU0+YKPlZqbu/NumeCPHAfF4LEa3DUFRDzkq17myTO7+mnbx5Zw1G4w+uVWobb6KNOMtHXvyeCzry2/h7LnYDSspE0b81x4p0xqfxl5w1ja8hRrR7+VEkvV6asBvZ5Z2ULqgaf1XTZGGNGDZDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVH9indw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVH9indw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD579C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749070793;
	bh=bkXoQQZEiPaySTCX4FjTKxtNmmoR9OQFdADM4kIV0hE=;
	h=To:Subject:From:Date:From;
	b=QVH9indwuN7AhtkolEGbjyMAt3G+StLi7v+32Tit9w5A6oKsI7hHX7J6Fw6MF/+dV
	 FsD1wmwAfC5aBicikcI0oC1ljDsZG0dfbNzvs9W+ur+QfXjHCuXI/ONN86zm9G4cbk
	 LAB8mXOb2y4TokroCQuyupNAha74E/t08CSI6OTCm1FNmcLksABR9ZGof3UZRIdL0w
	 K8MmuU8Hu4Og6l9o6qjoVsEx0JQ3ZBAGfql0cTZpV3oGDMdck5ya4r1YReBF55VgWO
	 FcSG5648l54TgApThTTFzdrtyONznp+h0481BpPymr/1+CQk/eUcZ4Wms5Am8YATCU
	 VR/yUuonk/UQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C464C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907079362.13869.17459055331041864333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9fe63f0a17c1fb016bd44bb1ae828a268bc99fee2570aa3b4280385327e3075
Date: Wed, 04 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749070793
