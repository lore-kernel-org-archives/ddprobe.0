Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AC722615
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731218154; cv=none; b=lRcyYv0trdMHDkU4AjJs791k0imKhLRO1o6gTlMAFqj7TdplFOY3ak6gP7rdGHnj0MNFuh3Jinbb/5AvmeKJYJovmYBIMdxJ2MA/ZGobQ9uHA0uTtTrJ8HIB5g5OrT/txgMN5Sy2tBC/e8SfHgM0cn4Z+LB3404ax27L7XuJCrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731218154; c=relaxed/simple;
	bh=gbPDOvFvVv2n2Vp1Ow1bNiAc2BXMGZr7Et90OkswDM8=;
	h=To:Subject:From:Message-Id:Date; b=BFUWDCLJgmYMI0rlfCKQ4Mm4z6dV/vSWmohh2SlZliaZ/1qZ1EgdLCbGQmU6ejAx7XMRa4ioD7t+fTpGIEg7gXIXbPNg6lwp4dwknvUCQRSfAUVM/cYNc0PauYYPaxVN3PYdr/CxXmd5zf0dned0n16tyuXw8XgvXVCQthKB2SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgVdmjip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgVdmjip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDABC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731218153;
	bh=gbPDOvFvVv2n2Vp1Ow1bNiAc2BXMGZr7Et90OkswDM8=;
	h=To:Subject:From:Date:From;
	b=tgVdmjipQAUteVvDsqDWis8T3qh8+Caa/TwcjNN0Y5nGkeU+grrStHaMnfYTtbrad
	 L8ANayWzsc8uuCNUM5lDYzfwRrZZyLllibwBKN5PDaztZtKuS+XjQBBI9KbLkjzD2U
	 1aB9MKkQ/810WRT03Xr4a5UJVcwS02eVxo9AjBX/m5zIgfe7fYWtUMnZ/CQaAi2GaY
	 lNZQ20cU5ZayFRnfpHPg8utoUTL4UsF81kr7DMoZ5dfE7u4t3cC5X7V29PY8d2qqCp
	 5ZkCRhUNvswuEhmp6HYhr8AVt9yd1vdzyHP9BuWCIHie7EkJXTGK4GvYNxnz8AUYu4
	 ypumYn7wjfCsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995B9D5E39C
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173121815358.24721.13390583416583165753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45fc9439ae26fa0fb7e0c1583e1345d28985d5df2d210885cc5d410fa8fd57e9
Date: Sun, 10 Nov 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731218153
