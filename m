Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEC2288C88
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745338194; cv=none; b=tbNX34mQPW7bW89CL4Xxv5tNJlg5Mq6mNzWUeJfYncJl3bjuZL6uztvz/wVkS/QVXn7LiLGhWpt5ESAHT5kBviQoZ4xUiNHUdhsdMGqBDKvPKSDkmhj29XzQaC2/63LlJNSSbBBjdmHoHxFgOegLhRoNjE4Dz32JkBoqFaV8z14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745338194; c=relaxed/simple;
	bh=nmFoP0AgSCFLDkJnFXGa74EsMJZFKi9+EIr37V5HoY4=;
	h=To:Subject:From:Message-Id:Date; b=fc1O6f2QExkBUfq2+afI2T/THNBFIWkowmMMjx795A85V37Ajuj/a2yIgSGD2v6owJ+au1FDX7eSUGKwL8k5O3Bd9qHIPPoFpN/eWJm7rtgpMLZUoWHVsAYDlMCeC4WdkNl029f2wT8tGHO0x4Wc4+938VfPrpOHdq6oKnTqGh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxSw0Zib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxSw0Zib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3786C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745338193;
	bh=nmFoP0AgSCFLDkJnFXGa74EsMJZFKi9+EIr37V5HoY4=;
	h=To:Subject:From:Date:From;
	b=QxSw0ZibPxvXT83IpsVYGc+U1ZJK0UTE4tujB2RbFsDoV+MCMbsjK4NBTxQ5/Fp+b
	 Asi3E3iJmMGdRpxvmCWV6oeDf9sN951llGMoYNA/M1XAlWpck6YdM2nmxrLcFmtXqf
	 vDe7T31UJGfrueryowLI9hYwE+VVTygB7mmuPmn7aIqB2J71uE8CfNbg9jd6m9xt72
	 6t6O9A6vuMpFr9Vog2WzLQXREB10x+cJJM+9jep3BBR0ciZ1n1UQJvXD5wjGRqnrGk
	 iuRymNFlX18y0wY35f6c6xQrprzpvgZErcTns/+gEMvAEP9RuBFxSZZggezMR9Camd
	 ij4QtC3/cfwLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFB4C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533819362.2154.14979997479243804079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1e7c17a94eb4df7fb7cfa94f4f330110ffe0c41236b29fddfbbb35f4d9a390
Date: Tue, 22 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745338193
