Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30616225403
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780732474; cv=none; b=UusRzJtOMDh3saRQrhBN+xP1/wiiUHdtPFLoAIZHFVY0d6Xue+RSE16zogpu0au+yjAKdw1MGb6VoHAnowscsJRoqRrkvWrrfs3V3qXvgqszLkDhTLGfGrc7Pqe33bTIvr5n8w3cAwVZYgxzdWWQMtDOqKKETPFWl4bAByJtwjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780732474; c=relaxed/simple;
	bh=69xKk5Skl32dBfNL2NgAXl2v78HyYQEECbPZsuxKcTM=;
	h=To:Subject:From:Message-Id:Date; b=d8i6kabmDZKaOBeP0o4ZpcP2YdFbv6JcIJgg2ywT4KFHC/lnfqDTYRNRUwW5LU+rCXTqIyBF3IfkXnByfiR9GzUAh2NEEV2uPaCEC94FWgfLOjLTW5SXUAXK3HmGdVmFLYCOlGydC8Y0pkitUXNTqoU2SWt0F4eszEISMy96Vsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTSSUvZ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTSSUvZ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB216C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780732473;
	bh=69xKk5Skl32dBfNL2NgAXl2v78HyYQEECbPZsuxKcTM=;
	h=To:Subject:From:Date:From;
	b=iTSSUvZ0Vtsll8eO/BJTnQROu+fUDOjtzfZBuOqJVawuOKD6MLx5Cs/CecdhFZYUd
	 Mvy3307sSlJk1sqbLSEUTBDk9ICeYcCdhIfq+POoi2SN/OJfLseghlDx/SwtE+CXwM
	 do23cydM/dSEx0WTZ8rO1vExWgfYHLEV/1X/lLV77Ym16LaB64pOnPWSxMI2haG6GX
	 8Rus3MWVbqnFi9Be9HwcxSrosrOxt6fwVdc+kDpjIsE16/GzDKPZRfxu9lbsnOqW0u
	 EnaoG1R84RBjG1mdXDdTL+PrniZC0OAaxHyKwKnLuNCTXxKv/jzEfDbDr944GOeScD
	 TuuDhXuENkkJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD249CD8C8B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073247368.30151.5575425417429707873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ab9c2202f720e3520044994d24551783ceaf03b8e6c3e2a48b20924a59e670
Date: Sat, 06 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780732473
