Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545EC2E337E
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742765394; cv=none; b=FpHb28geB/K3ahFT8nxe6888NJHJQuST29ow3O15w2BjO7WwpNP9Sc4taELtOdmEZbMcS2j4ZJyXFLS6lsbNb3VN0om2euDo0XciUgxB+rokuWYvPdXQr6AmLNQLaSQQh9Gm2Cc5BNcOV6bfEUro1DbgMfW5a+ZGyZYah4B/5Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742765394; c=relaxed/simple;
	bh=zOdN3P6VeS4T2TTB31J9pxJrVtBfA/aSS8CSzAjOLwc=;
	h=To:Subject:From:Message-Id:Date; b=iPE1p+GNpmyuo+pQHGZIYfeiLTJhlKe7W8EBM+0ILERYQ/f6iKi8/qc0+vpf38WZRHtKcIXZSJbG9GI53acYMlDnpACWA9kk3KaETuEvznQ6whBtNKdehJnQwPlGYAydCDYbAfHp6RIBH5mhRN9ukoOhG3uxbIC0uMWNy9YSJE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lH8tpk4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lH8tpk4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9547C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742765393;
	bh=zOdN3P6VeS4T2TTB31J9pxJrVtBfA/aSS8CSzAjOLwc=;
	h=To:Subject:From:Date:From;
	b=lH8tpk4Nh2EOZ9RrVbNoSK0RooZmsRSZ9uhh5+2aLj5idrXv/okr8LFu9LK+J2z7c
	 DTDFkJ260UjmolwqwvpYpVgCHic1JqCuqCMV5kProdydvplY8/HlQ2DWWe0X+Cwd/v
	 kQLejQB1wa4SVXauLir4NwBx+Tv0yyxeYjyeP5y5VndJZNYN9PYQKwF6KYHzxJKNmF
	 k4k2HrlMqN8syKiai87hBr0vvk/F5CpJ6zTTNfP3kHsVMMQb5vYnXS0Tq8flTrGcr1
	 /trWrRlxY8K+FSJ+JeQYSMS5WI+swq3yVh9oG91jwPmvQHHL7sOaAluBBYpBFTZYaf
	 akl0yXY/8eDCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D4BC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174276539363.31314.15361493039157631722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f209a7f028e73f8c772dea85085c2d0abaf96edbbd38a1eb254a98bcf62aa0
Date: Sun, 23 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742765393
