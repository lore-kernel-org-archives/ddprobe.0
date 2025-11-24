Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEBA27FD49
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763995914; cv=none; b=GJkzmjyT8X3tdWoNwUhj8T/ZeGvnnfSW144yS8x0EPAR6pBbAWmVCVCErInAQ4BIbBYxJvtsmDPDC/8O8C7tpwT6LQGb5ZZ7oVuM89AnM0E5Qw20PXCja+kZFE2yCyhFBU7T3SAssV/0nwxHKt3lLYLc0jhB1uoymuNm7O6kyb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763995914; c=relaxed/simple;
	bh=91kjj3zlfSWPW5wWGf5ec0vwt37Vyp0Tr2Y8s9qhbfg=;
	h=To:Subject:From:Message-Id:Date; b=dy5pTCeIl06lZ2xzEjYruezRpEmz0aLh2B3TBH7rtJ8lNZQQ/N9imAJL2gidzGPwf6TZoZHht2NPypsPN4b4di/JDi7RVLeM/fQ/9/tiB+vPQkTj96XCJtI/+ik2plkew/AOpxaA6NJ39/U60QVPa1vvF3xls/vCAmg2KmuujhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdsUp1IN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdsUp1IN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763995913;
	bh=91kjj3zlfSWPW5wWGf5ec0vwt37Vyp0Tr2Y8s9qhbfg=;
	h=To:Subject:From:Date:From;
	b=UdsUp1INaWnkMGSHtjKA09LzHkuqJVSitSED+UPPcp6i1hjc9//yCt7DPJulvuSj+
	 6/CUlw7RJbcvjRwYRy1hRPNEfG96bO3r5jNqMgO69uzzuhu++bjKPVaeXlOyl2H0s8
	 1Qpe4hARrhTbDrnWr5KAffjBM4BHnwmlH7e2xHZ60YnSHJtIxKs8fGqkE6qsugPAUC
	 eKjjSgPqR4L+zQ2NuyBdgZ/V4z0AOuXQ2qxZzMh086F6hReyuOXzHcf8JoBq4+qno8
	 2PkV0v5nJarHvYNljFlhtqdi+oDJGphX0FWtLO+5OCUk44enT/SkDYfztKugsNvBZP
	 slUlqtv+jrmKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DECFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399591358.17106.13733843739036961658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb20c8e7b12ff42b1f113c313afee7ed32801c95155c190fda107ee639fe4c7
Date: Mon, 24 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763995913
