Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C571298CAB
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781561794; cv=none; b=Dq1SatueMTwDDx//e7ENvmRKjak7iWuxRX1VR12YQVnXZX9j4YiSxbAn0QAdWGRI00PRcgBKR/EMXmmFl59y2bg+1lqGb7zoJaTkcuO1drA1Vos9XfG3czbETd416n+DlDGvw19JKi6RN+ZnD5CvCHQR4G+dmV8jHU3ce37CHYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781561794; c=relaxed/simple;
	bh=0lhYVpDYpnA/HeAvyBtsK6aea5hnJVzK+TZjVy1x/Xk=;
	h=To:Subject:From:Message-Id:Date; b=L1qj1SPI4iMHRPCFSFvMRiAxDpsg9Fn+jTLYUauGaqlIz0YfHakpDnhCGRglwwYRZFil5Ug3VclGn9NDbNECOLZlhZPc8gPw9dDDK0JFF5eR58lLtsg3rLiUAJgYa1MDWabOo6juOHO7NltaMgPG4KGU6ryzDS0XYt+FUXU8KSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B45ph4bn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B45ph4bn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70ACC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781561793;
	bh=0lhYVpDYpnA/HeAvyBtsK6aea5hnJVzK+TZjVy1x/Xk=;
	h=To:Subject:From:Date:From;
	b=B45ph4bn6P5sEyVkTOjRRBWEzrY8c7/secXivmZnK+T8CwxWk+cbS/5RRyu465apx
	 +vqA7kK/Jf6ES0pIwofEv9qWbToZKVNE85OoCvPrvYE/Ub1iUf1GFA+IPKnU7vXEct
	 /tpHqFHno4bcRoL7iVj7aSJgoQlDOu1kOreIkU9LajWCnLCw8AvqiVAxs19llVtdq+
	 PxDTwjltaDxvwkYk/zKvx5Br5t5yM+IDDpxbyRyvelWndqCJtgGgLwGWpbhusRf1Du
	 ckLxQu15Mx6JX7HyHgpjlTfDbn6ZUGGyLfNCou8sKgJFV5yMUqWT8Saz5MllaAc5Gb
	 9ZdWq8iGjJ6vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB7BCD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156179369.31578.1458727236868703486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de0de951a062ff7f72220b1ac3394394b22718068d4ba684c49722246cc87a9
Date: Mon, 15 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781561793
