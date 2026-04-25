Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BF9311583
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777138054; cv=none; b=B8IqIY2rGnlbnlacxx7oL2lxkv4OwLz1wSlqvI0eiA07u/amwJMK0UsyT9mY4Pf5WT0J4CAayiwAi1zwqwRynUTyoGGJwedlyJpKzvfdSLNmouY2FpdEF5j56iTfZPXwR2pmZ4gGzGUT1rGQlJQc1HS0NkYxcCX95h+l38Oog5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777138054; c=relaxed/simple;
	bh=uR1T/UQbWE/HATEn3xTl2hdz3AHvwyar9KN+YNwXduc=;
	h=To:Subject:From:Message-Id:Date; b=dmh8XmmeB+k2OvKFKGgyjH3BbftyvNasuLapOgWO3OAukLk7avTEIQ5Q9QOwOQpf/N+VLaLC5wxboYhl7qgsZAKFMFWERUj9UCtlxiIlrnkPI+T/RwvqvucrcreBWiDnUhDIPW3Y+tCsEirzocTVYm/fL6Jvr3LgEYv75+HddoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKuUYKPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKuUYKPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0D0C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777138053;
	bh=uR1T/UQbWE/HATEn3xTl2hdz3AHvwyar9KN+YNwXduc=;
	h=To:Subject:From:Date:From;
	b=YKuUYKPgrvYTZWVvsaJHvLX8V+p7MfoBUvRs3agtvqW1bA5bQgddlza1dbbYqejW0
	 LKiP6YPZYk3Y40OzqpUpXdy9r4eNDzdKkpfM9aoaf0VSdxryC+lgrGJbXf4af4LR88
	 8e5CrtVTUHOPhTe9vdewJQtmyAmLOcml0woBMp72tim2YaZNwC6gwbOqwCcMTyGjTm
	 Qc7xtG5RcK50uMw91HkZKKWjLjExSLF9670AE4qqcepuAqUa1SY34NPsccYov9+gjh
	 zeDj9q8uhxpOQkpFE2AW/v0LC+44CDq1JQWC3Y5S8baHeXDDueKxiAFaYjrnUyJ6Of
	 EJxIm776DOU9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E70FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713805368.24341.8900385212926435549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944f434fcc69b5a75a63251bfce8e145915fda3ecb2c0c3bbd9396cada9ae710
Date: Sat, 25 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777138053
