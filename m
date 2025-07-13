Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B3129CE1
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752392994; cv=none; b=OnMjnQI7/2U3YK4M6fmMM5nvadZAD3iPJjAjUF3M7KfN75tXvH7n9XFfy9Gg7fMGPrba/M7kBEsWPVgN0XzZVtJIIPNS8OdHmj9NtZL8mCmiMN1JcqkhQ985BlK42cN8JV0MONYKL2zbtU1UplCSD975b3J8+v6mdxW6Fr3fky8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752392994; c=relaxed/simple;
	bh=b5udBTqlojD/+jbKRQxaIxS0yO38Xj6WqG7KwsAAU24=;
	h=To:Subject:From:Message-Id:Date; b=KGpcAmCx+LpE9OckEq2AXl6uiV0lxixVbAoJEo82njrB9e/PLp3VbMkNPcVx0fbTzZHGBE8go4+V4Y97Yjnw09XL4jyvhe7T3O9eLvtTPCkPHd8XADHQlQ6nUllDF1vnFw65WnF2we9keF2NClsZxX3kfTtIBjfbcbYlR3sWo54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVwFxFaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVwFxFaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28EFC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752392993;
	bh=b5udBTqlojD/+jbKRQxaIxS0yO38Xj6WqG7KwsAAU24=;
	h=To:Subject:From:Date:From;
	b=FVwFxFaAcEiieAELTwKM71riOFF+8G9xxWTs4Lv6dtYfPMTAJEsW+vGL6vrvpxxVK
	 B//Co6yfGGfO7paw661+sX4gkW2ZtfnSXNTYF1G3ZmXVlm93f4akdw39mJL1S91TNH
	 2yYbPtGXYEtWwYxRcjQ3lGjtI0BCWvF39TXeqtC+QQCCIeroY5VGwLHYv3Yoe4DJXu
	 Q7DokkM5KnL8/x8W9FwNaaUiq/9LR5QeoVaBP6xGsq1sBa2tYbGcZhaiueNSxS52pb
	 TOFitRT7FgB7XpDrnXnxIdy+uLG4nAItw5Zw1J7o0q+OuxoGtIYsgcQYFFvVNhTc84
	 hS5jk8Hhu8pZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907ACC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175239299357.20826.13820315403128060439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db346f204d9ddb4f3bf32cd6e139598814b4068bce414ea0dd173b7b4f2d905
Date: Sun, 13 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752392993
