Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D85421E096
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745942395; cv=none; b=GdAOxt1rzfjcqpz0xsk9fmXztcRTkmdaGgAmeB6jZtalbInTLTZ3dzjd1clxTdmgt/F33kCoSVgQsRBJrvM9l05xPuEICNkbjaEvG2xh8SPA5vF7C/9pw8tlAPlcWYjKPi3kdodg5T+qIVT2yu2WKHIFkDT5Nsv+jR+efucBQJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745942395; c=relaxed/simple;
	bh=O8tTnalqPGSgIn1XnYrHpUXsx6cA9fGEvj8W3sTNbik=;
	h=To:Subject:From:Message-Id:Date; b=lcd5SNYHiyj1AJqL58mbWjCLNSTkjZVbEaeUIYvzswe9E6Kda4rO+FxVGPiLcrHuGxDADipbZ6LU21VVj3B8ZIzqODS0dZgR+A5QVdTjgZYull9BOUukpI+wH6IrSsqpJdzVO3GQ8CUYyMu8ubKsy6d4feUFbhYDWH1OQpRf0Bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVC6Lz0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVC6Lz0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F067C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745942393;
	bh=O8tTnalqPGSgIn1XnYrHpUXsx6cA9fGEvj8W3sTNbik=;
	h=To:Subject:From:Date:From;
	b=iVC6Lz0hW3Nd4pdK3r9ltMpG3wZxU0Q2OCmPwHhbdYGQhuBg3/IDZVA5fsT3oU7fn
	 Tx7VkyEfiewc5+KeYloVWCDrsVWDmfKGEJgGCfanAsoltZiuId4Xq5H3FCEknnLrcO
	 5kfAblkMcJHI29RUDpMYfJM+iqFDuNyQ7+vhdL9/ZYN8wQ6y7mZKPPZhSw3EOx14Us
	 f4Zt7AlsRJTYBVD1ywYb3LMksPIY08hxMzAGsnrV0hMy++tL+XCr5ha24BpRSqg1Sa
	 UE2xlNmcuixYc8eOf49jkCdDh7Vw5Eba1E/UQluyjl3YfBl/k7JL8s3SIiN1En0Ta7
	 p9bhdpVW8LNTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA9C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174594239357.24229.16718434452076349985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862e9db920a3ead46bb4e0a3b73fa214de49a77604c1d1451550b15ccfb6ed02
Date: Tue, 29 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745942393
