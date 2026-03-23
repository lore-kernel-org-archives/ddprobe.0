Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E150B3AE1A5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774274094; cv=none; b=OEGq3ndEGaThYfhFMZFr+8aPjYHm06gWlA7hF+W42fVyBhQD2iYKlXqrnzyAbmhmXF/9834tGxWCwF6/255AdzPTcvxy1dGUguNhHxqjq8kDQ5y/cDDuUSTfGAJGOs7iI02VkQQRN3EExirpjaQl28G8wPPOUf3+DhX8jhuthC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774274094; c=relaxed/simple;
	bh=WuhlRPP76hmAaW+/B7DSnJpMN3SITWbIyYjsF5I8ia8=;
	h=To:Subject:From:Message-Id:Date; b=rcAasSMeb+wDpGQJNIrIwWbFr1ghgUXjSwW9G5x8ffcij70IccInh5j481oWvavF1photXLAjNTsHRTOsrdu+51gNDaU5N6+SGlcwNw54oJ2ZN1wTWvStRPmHOgyEdjPv4a4MGa1aCQ/TIJcgraPxtRAsWV/EIL1MJ3j3l90cxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpBy/Tq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpBy/Tq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07BBC2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774274093;
	bh=WuhlRPP76hmAaW+/B7DSnJpMN3SITWbIyYjsF5I8ia8=;
	h=To:Subject:From:Date:From;
	b=QpBy/Tq9+7qv9xz3v/7wUTXzEhk6BL/SxlDhkZEKuiDP8k5Ouw2/AIAlGoQiKqq25
	 5OWCoc9NKLIDU5ESdhNo3d/Sl58XKgFkeLS10Xif6BjrLzaF1hRKY/mxkr37r0A11H
	 +lAfHMeYqS0sZY1QW9w1X3jVzqQ8wBZnH/JuMCmNyI6YB2tILvv07g75DEYo4pAWSO
	 rzgcoBqC8H4Li7nPPcbr38veFj2KxgdLzfeeMVDs5ZzU13pnX/aJ7HRaS2OtINUKtO
	 L9Kzn1Nuxt/zuIS6hebXKJ6fZvS0gjosRZ6FrEYZxKxiPznHD7Nifp38hyLvVNQkMd
	 kaYpKd8QgEC8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9271CF4611B
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427409358.15932.6062923464443791502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fd5dddda1dcd0a20eca946d733fa6b6c1cd4c6818bb9750ae08e1ef182d762a
Date: Mon, 23 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774274093
