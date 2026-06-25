Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CEDE23A564
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782416854; cv=none; b=Di63Ev3fGbhnLpLKLK+/MFfme3S437OiqwRExZKa/MBUEsTjAB15N7adoPlDxsD8L1aWClUEFLAzg6kr5/cqL+JJS2tDVS1n50ruK45PlPr/Kcuk7W9Ga8ftfwHB1CPOPS5VSJ/kEsBin9wzmNe5x9S8+pFeQBkxwQH6AYEaA3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782416854; c=relaxed/simple;
	bh=xJScXgPVSUQ1goxjVWjq7TyMKmhpj7zZ/7EHkJ8WEWQ=;
	h=To:Subject:From:Message-Id:Date; b=eapSJXTyUg38yoa8nvzAOeizY/DNEaBSVdLqr0Job5oRedIRoIsekQ80sRfSbK5ybiXLRjb9duO50WupSJO8Xg/x5hpcdNBDKRvajbbqP0NTa5Tf1LtKDhFfD1BVTXpCm9x3HttKsSgOUWVjFkooujBy022Dp0BerrB9GjPVwmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHHWgS6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHHWgS6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B9A7C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782416854;
	bh=xJScXgPVSUQ1goxjVWjq7TyMKmhpj7zZ/7EHkJ8WEWQ=;
	h=To:Subject:From:Date:From;
	b=EHHWgS6EXxoUvBihKadMWum+vL4IVRtK0T6iAH5T1w9//RPcXWjMq5R59LkerTEnr
	 6fPwDb3YPFSPfmi4yaMFtPlwpVXbxe6qkJFzsEQKPbzgNl/br9ZGKMn4Jfnl5VQoIE
	 7gzRTipGbaf2L+qVJZ354LKTTnkPiH6w+R37lsuoe/lETIw1rX3uutKu2cbKL8rJV4
	 zBM63uWSZCT+8vKAOLsRJRlGux938itKN/FhQBv8yTI1znbkxA6TlOCEmxxRh1d81s
	 3+CifEH/BII+YXp9ilPfZPl7hH4gM0dco7Xzc0tRlIW1rkW6p3SB6Pf5vc3FPcoFt9
	 6/Gkq9qNregMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE404CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241685374.8842.1891653993488724669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6017d771fe805279202838282a559eed773c28ccb8130877cfd8b069a523765
Date: Thu, 25 Jun 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782416853
