Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A982AE76
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791162034; cv=none; b=iGo3f3nd2Y9gqwmOsUlQvpK/AsgEOG7IShJf2Kvtsac2v3zGnzCROBi9g23WFHTSk0UWje4xIf9lwK5GFQfDcClijWUBIxy9bTn/q5y5rfDycju6/9HV17QrbJ2DnoNKQNiSepg06IwN9oPOdeEHsXaEPNB6fnN7SSFzxiGgyPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791162034; c=relaxed/simple;
	bh=bEM5yoqxI2x47oDq5PKzbmXfzqr9YDlLJaMdO1mgXvY=;
	h=To:Subject:From:Message-Id:Date; b=BPKN4mjZAaezY89eVEpFA38ugVASoHyCRgvN0ZRS/J3M9AML0Bn9/pXu3qUwWFvfrlP7VYvpSQHYVc9LMCNjynklF2LbeFwEZVcMDa14oogp8MGFIHD9sWDmNPZJS8PKk8lVk0ibaX9fceF0GqCZLojmYFlReHQObLqjixj8tIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbnT5M2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbnT5M2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD524C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791162033;
	bh=bEM5yoqxI2x47oDq5PKzbmXfzqr9YDlLJaMdO1mgXvY=;
	h=To:Subject:From:Date:From;
	b=GbnT5M2X9v6NYDmfZYbDyMzoHjmDKnaaouwKhxqtVUvNJbv8QQH34FS3o52gCSr2h
	 pj5rVjUfsYsyyUmPvBduHtF/V5cHiTnWpblPsPknCkc+CXHWnEBj4f/kp8iB1hVLcQ
	 FKf8WH4FrIPnI9+5wQyAkFrhQUBY9POFPvgqU79Py5pD2Zx9wq1OnwHkK/I1rSskOH
	 HzP1UMDNI7Gpnzu5jH1x9K49juv51npvscy2eF72OZNfwIUXVtqDfRXqSaTyNX+43w
	 yH8Scw4+VHkwM733wFLOp3PWUKBsTeb11AtNWs8sj2b5XEL50GrnD0WrLBwm1Lylic
	 8a9ymC726RCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA019CA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116203368.19596.3957371344393221595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58a2bfa015e5403d7096879fcff71bfd117348cee9187f1670eeefaeefccc3c
Date: Mon, 05 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791162033
