Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615CF36B
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720232123; cv=none; b=TuZX11bxQ+ZLxUjCKxdQ6ixiCwgvuEPhdndMJ9cr/nOduf5WCkj9/5adwnbmcKoXaTED/MtNHMWgypjHOECem9vUKihBPfDv9cX+cKQijykGsqsNY0xC13esVy3wJx12GVA31jOxRoyuK+HX1Z9gBYzuVLopx53GCkb+zjZF2To=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720232123; c=relaxed/simple;
	bh=ycZnMdRbqBiuopC5V9bICYB6yMDSber8xGRvajcFeq0=;
	h=To:Subject:From:Message-Id:Date; b=gDcd34/9jaPmwQgvb7LhHQfeepDEs+9E+YodJ4I6kaHIm357ynOSuDZQnMblHVXtYSxnkI+B0kGeP2Q6CxmdfEDQCCVB/FmrXFQBaCs8O4JFEghJgP2yUMr6jXZ84j5i2yxbLD4XbIidoiGulTi1dvgorHoHKhtaesMwN2zAEyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4KeuID2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4KeuID2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E94C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720232122;
	bh=ycZnMdRbqBiuopC5V9bICYB6yMDSber8xGRvajcFeq0=;
	h=To:Subject:From:Date:From;
	b=C4KeuID2wCxybSOljBmHGJW65Gr/mkS6Q+1Xzf/KqilVjPISQaDxwAMXQSzBq9RBc
	 ubfL+JW9r4TqJFJHei/YY0JZtf/Y6nyE5j2sDhc9MRuxkijn6gOUSjP1Fj50oMAO3r
	 9evBBwTYx6oACs1098RLiVVVA40r3Na7KKB3d4j7oEVpk+x8+6EjY6KzZW+dYtdEaA
	 putKJK4m1eqWAFI8uEL/9cqAkStuEJVODbVc7BxpddjP7kdn5EtZryfTmVTj8CD4mr
	 gnkBjlFVT7BPakRQFNZqX+D4v85fS3W5AYWy1+lI2nt0JuyfDSGXOHYB87YhOOpbWq
	 qQAleFAe6rOyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD538C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023212281.6734.2518494205048791127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c3a6b4271f3b0d46434e4acfbfa179f873e1973fef8f5960361f4d8306c5ec
Date: Sat, 06 Jul 2024 02:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720232122
