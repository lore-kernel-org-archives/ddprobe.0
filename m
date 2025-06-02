Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3682C326D
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748880594; cv=none; b=WOubMi7Yo1p/syAjoWjEzPOgrwrXTGKkb+OZtFfVqOjfY2kS8hRQu/XB8tuRdPoGkcF9E+L7oOaSZ7OM89mz8gBSYoDHtb76AKfZ5bWupIE+GqiSqNjWPzAVha2xYU5CzjRkeNzzpf8t73UiSmhGvMcbQYJi/6ItFuEOwgvylzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748880594; c=relaxed/simple;
	bh=XTVtKf/G6o7v21wCLyFSsID+WCImYELtE2cwxahRtNc=;
	h=To:Subject:From:Message-Id:Date; b=EpUPlB1TaBIsMPV0zBfu3sCeIYagDHuJqE3bUtLIDMVuxMuVRwMn6n3gX2QlVypF4jqUUoPJL86F8RLO05e/2qBxLhr2v961a1kk2LxnYHxak2rEyt0BFVaq0G8ww22ib5T0Z4wjj4AEmIRaB2VbKboEw84TWytL8TuxmZb3shg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eciJV2L1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eciJV2L1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9689C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748880593;
	bh=XTVtKf/G6o7v21wCLyFSsID+WCImYELtE2cwxahRtNc=;
	h=To:Subject:From:Date:From;
	b=eciJV2L1rRU5XsKtQNOo8+BApwLU10/GYXvxqhN6tAaRdOs90AjBuBCAqKS9wgNEq
	 ItCR4dq63PyGL0Ngk185VN3OU30DOXT8bZGPTcnWtESoFrQCdPl79PHM2ZwbrjvCig
	 lymI+F59OaVlT+3ukMwqShiu1PMFDl2+JjxEb5aj7iK6n0/k2K4fsPFq8OeAES/UHw
	 NclNBS5ivfczmcY4sTIRA2HNE7TF7TdjBlGYxtcPYjmcMkygOALKEkIy2CxAAKuM14
	 xslNPLl7Yz7nv6s9JiUbd8V6LBFy/aeHs7Kg4F+OAG+c64R72WdyHwMBvsQP298oD4
	 OmhJG9mNcMrGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317FC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174888059358.2335.4005581467837986759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d852dd2622e95111c84451c63aa848578795dc42b339a2042d80a171e0e053e
Date: Mon, 02 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748880593
