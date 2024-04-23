Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4905E1422D6
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713903023; cv=none; b=g4UEcXxlVxJUuCqkwfwVMPv/p3LJ9LMu6MiFUoUG1P0OS3zq07lTpLBoaZuHFFQnigly3qWz+zOQ1s1KmmB7uTcTChrtlFO9anxMKpJfsMv7U2XWbABb7xep2GwMXoBZ9R/pkYQFO4edwiU2WkebYivu/X6Ow5vf8t0GflyCQ54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713903023; c=relaxed/simple;
	bh=sC0k98Sg2HPJ9WVYaAz4TB1rRGAJUUBmZ+Nciaz3JsQ=;
	h=To:Subject:From:Message-Id:Date; b=WFVylOLkH9W7I7BjCo1BaWm9QLwldqrTww/n97OaI6vgwWSlA4UIFn5Gd/3c6YbVouqYT2OhN+nAjOm9G2f3Vt1uQUrkSAXmGXXgbKKbNzzDak2RokQ2UXRHbxdlYj5/vbNuQwHoVoOVAoycmdqefdPNpi4pHqY/mOvLbZMfPzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeL26+UN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeL26+UN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A39C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713903022;
	bh=sC0k98Sg2HPJ9WVYaAz4TB1rRGAJUUBmZ+Nciaz3JsQ=;
	h=To:Subject:From:Date:From;
	b=UeL26+UN3CEQ88AbdxVZ6jNiTs0R/7KmEa8aoPJCoRMgBmFuTXOKYn6J9SVBwate0
	 AQFhOfXKcHBCeQQdtJIBcewTIbVqrMCbq8nt6gvj9zbsV0q4YwUuWMt61afiTOmjk2
	 hIAN7GcYHdLedblcLqcziSXpLs2eArdxWFw5mUdN+HY8fwAn0xTcP+nyfPLAWT8uSM
	 Mwm8tPv2kMmD0eR8s72Q3RtaXCRrp8yxNILn2gjTpZXyR0SMBR0eF3dF630ljruE65
	 0cKkrWqt+pX5bJz8MEWbj4Od9fnPCyNpFoXEaWn/k9HlZvMyRrgCW6RHRehXHm9NUS
	 /uJK37yfAnQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE7A4C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390302283.2815.3335046859590116096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619934982858f5f733fc4bc8bd8369ca70f241426ea2991855344c756ba9357f
Date: Tue, 23 Apr 2024 20:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713903022
