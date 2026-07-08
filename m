Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2363E5ED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783544314; cv=none; b=WjFESJdwGv/d5ep9VeJ3XL3okjwS+POy3RXFUfGMPAyn+5aajF16QWUcTw0JvNr5T0F9y5ilQCBrW8pjAa2kOBxwcHepTh0L89f9EKNeyivONxilOs3TneGARnkgp1XpWKucv68o95oV7nHpCG7LwiD8mInXZ8TCdArRw1ykE9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783544314; c=relaxed/simple;
	bh=5mztbJKWak3p7LJjr+Ze3tP23NF2TJ6stgEe0TsHFl4=;
	h=To:Subject:From:Message-Id:Date; b=uHBRf6nT4s/qGxEzvtla3FCtwSFavdPv9l3acV2S9g0lB2I/PFOdN424mXmO7J0KyWtDL77ygMdmAu9mYrOVWgs6GlN+bRMp+hilaoT2iQR95SxPOAuqUFvCki1Zp8kBN2jQLe2p+ryLJb87JiXal7xhKDiKeS5+Z6WnzlSRf0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuJHhl0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuJHhl0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C23C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783544313;
	bh=5mztbJKWak3p7LJjr+Ze3tP23NF2TJ6stgEe0TsHFl4=;
	h=To:Subject:From:Date:From;
	b=TuJHhl0B8MYoN4uSVLM23bx3X5ku6KhSjgVnaIcNNKE+Iaj/zNcdpPotpBhhlpkPu
	 mOUC2AXb4JuQPCmM2XDhimQD1QS0s5olIIDh/NcC1MJqzjOckWEAmhlAWLKtCKZ/fO
	 A4CMXLwkMFH1L1io0wysz0luhCbYa0iO2LQUzQ5maqb9L2uHo/skKV3232fLxtOluu
	 qtIuARjkqRyaha0JIaPIFt4nA2Leo1h8GGWwOqYOrfEJzZrh8iV54SmWt6+eidMXx0
	 Qj7jIB0TaJJwl5Nmz3UY42A/FaEKiXlCmf8RZtV5Uzh2kOT+KKZp6kiN88H5QFd/QI
	 igl+bBSPs9nWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DFBC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178354431368.15445.803696962873367404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec4cacc6a4d07ef3ee94fc3e400ea9fe09cb29db224356f0d94a993938c3bdc
Date: Wed, 08 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783544313
