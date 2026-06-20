Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFC918EFD1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781935594; cv=none; b=CpO0/XhDDNPWeB5pDz+iX269R9TG+Ps/tzwQsouX5qXGF3lx92CgOKoD4NyhYA0AQQGysdXqS+phVEPIlEVMh14pXgfm38F0+Cv7DYRM+6D9A4Y25v38ujCd4oqsY/s9x2f/z5o5WA9iKfkpS0nUYNMppAu8s9QeWo4hJASiIgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781935594; c=relaxed/simple;
	bh=LXBLJkpajGLmTM1HuOxThi3WClsOwUiSQXcvTcEliLM=;
	h=To:Subject:From:Message-Id:Date; b=YyV6yyTeFG2bw98tRViqOuSS2XlMjjqhKoppeq0akybFQHHQ5B3LoBbMywreq6nPI9ny2tm4NllXQhUFCW79c5bx2Gft5nNJdJvLaO+gD1Dgg/rkyBALjgFElwkUVfOZ6v2y+ncqaGLPmpcdPQDjDLo9sD77alt82QOaGBPOgFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQmjVICn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQmjVICn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E087AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781935593;
	bh=LXBLJkpajGLmTM1HuOxThi3WClsOwUiSQXcvTcEliLM=;
	h=To:Subject:From:Date:From;
	b=NQmjVICn6waAhTqxdRzNm0FZ4ORmhtVlmIApREHrIN847x9YwhNBoRDdZ+vJm/aj6
	 boqy4XxElDoTmgvIlq/HrJ/knn2fy995HGPTTEFK0hjcsvk4x7HbS1+ChfeL/dc9QG
	 6PVSh5AkzlrIbkLrXD6Ju6jZfNMW1r3kr1+4mtDairAef1MtyTsvhZl6oJiMPMw6Rx
	 j/EH7eOrh2j/W5PSFqEqO7Y1eRyQxoTVI/la8cbdvwh41Nj5dQUMya2A417l6lF+9T
	 FNpCgCZ3iViSn+BcEy5pBRBpfZUgoqAZpMZSpACnHELalNKNo0SoRrinPRG3tTNUfz
	 u88qkNM0kt+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81D3CD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193559370.6863.4918858954751814550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471184ca231d2567e3c8a46de09e5facf22858ea18a04e1933eb9d19757a39e4
Date: Sat, 20 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781935593
