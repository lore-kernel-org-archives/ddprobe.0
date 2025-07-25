Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261682ED179
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753450195; cv=none; b=U5QET6/8Ao2GX8wNkbts413WkjZ5HQd+pqEiUhIKV33EoZ3xBWBYOb7k+yJyal1jhuQIf0hbqAYSv8QY6W/aWBTFdJ+60eLqZOfqRYprex2REflObUBZ0QaqODnzM/+8bjVRXxB8EuE7nYRK1GmqRAkcEDNrt1wEiIUC74Dh/lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753450195; c=relaxed/simple;
	bh=VM8GTV6byxB4bQAyN4Qk9F20SlNNjlV7pd6ZI0DH7SA=;
	h=To:Subject:From:Message-Id:Date; b=t5j0a9YrEG7cKMiIxepIiiSNaNoT2k6Der6MHmhAWa9YO4JG9yzAbgymsuOPUmETlfV5fsPrlnvF1u+/KT3fr4gbPRaCSwcXo801F8oAYU1V6j5IRAumtrfHgImUm9zzTJ3hQni9X1KfcbXQrwvstr/ZPMNvyvlr9PrXUgY29vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5+TB1r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5+TB1r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D35C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753450193;
	bh=VM8GTV6byxB4bQAyN4Qk9F20SlNNjlV7pd6ZI0DH7SA=;
	h=To:Subject:From:Date:From;
	b=h5+TB1r/ejubzqPyHM1O3ja6H72WZs7rT28TGTCQGtjf2bHqnflIqI91zC1hxPNfk
	 AkF23iQKv2Kv9f25WCLGdXQs3ihvS/OEnrh9nRTYc+ZJ52k8gnn9o2M2Ps3kjS2PMV
	 Tm8UmXHNqRPC1wJ/lrYNR10ks1vdadLSbIaSLITNv5KpDqu0hiqQ4Dw0UXb2CiiP3H
	 ZzpOFQVRPlMSjHKMTxTQKtNOfULrd938ah1XqgQQrOtTXY8e0s585S5SGDgIr4iTO7
	 usQhMGXmKqsATGv4WUvjvWe9QhygNqixm+SMOQjs4BsZPRJUi8t5xpftZ9hbn8ockt
	 Eko3K/HG6pFYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E9C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345019357.5204.15229991664621913526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a975f56a65569e6562a4f05d4a1f860efc924bd693d5532c5d63c6016db987
Date: Fri, 25 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753450193
