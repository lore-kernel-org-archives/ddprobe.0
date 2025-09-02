Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433622DA77E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756844995; cv=none; b=GH5ny+Sp37k2Up1n5ukrt5kFxh6DKce9AjxA43QKB7DP62uPDVjhcrmWEL6tSoLBM/uxOgvQpDxxZ80gXMo4z/87d6dx9mqnI0DHPyD5x0D+JVYKTnnmyoRZkEaDtwCyI3x2A/fKFiFSNtM/MaQPd2VBbnaYiroDNHKeGK6HE28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756844995; c=relaxed/simple;
	bh=CZ45G0C8S6hlGF6xZyD5r7wYQ6HacIiZrPs8nJlT8n0=;
	h=To:Subject:From:Message-Id:Date; b=GxteWlW1jViAHF1t0be8qHXagq5HhwsEjtkSD/4UzEthV0XVBkkO7a2KU3x8pBAHpZGYvM1jJFP5maOqTxwyybj54LdM+/mvpMVpsPbp9AJbxgR3+TNDyVzV2whSXwHB/FXPQjLEqDDzk7jGgpgPtcW4c7d2ML6pmALsEqFVEmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIGq292t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIGq292t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96B6C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756844993;
	bh=CZ45G0C8S6hlGF6xZyD5r7wYQ6HacIiZrPs8nJlT8n0=;
	h=To:Subject:From:Date:From;
	b=LIGq292tB+2EK9cEfcIOPhim7ilrgeJDeLujkgmvPowJ8xxeVG2SfXUkky3QMrWHk
	 DPsOR/Y3HCDqa4JdyPyHx/GhHXdadfqYJnvYL0FyGmgnH1MwDWph9YWInWowst7p3P
	 oQyC7enHGH+LiIh89th/X5aI88kfH84YvorxrMalKkeyAujmgwz8UfLDBSTHsQmHhA
	 1EJpyDbO3Ej+WdAkr2AcWIr8CMAzsoB1jkfs/AEWXnRWWbCHEm+L5UFog3ZmlvD4Ti
	 l9b9Vm6izUSi/pmZRCJgtVOr2OP0mrrRDW5Q7bPp6xH8bMMuN/ZDTh+coG58W7mJ9s
	 tdT0RnQ+9kQpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92471CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684499357.12058.9114329163690575808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13dac6b0c1e1f26aa76c790f52b43267d0de3a75911e4c7a909f70ccfac01a42
Date: Tue, 02 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756844993
