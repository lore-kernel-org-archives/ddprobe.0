Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76F434A76B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775562334; cv=none; b=DmlVHD6Cy0aEZEw1LTsKSLhNFnqC0SWvzGbYHBCf5ROn6zlUn2fBSCZqUJufktKIJffZNDUTsvxpUYRjNGH321Rsz9wjnlaVnD+7WDJDzRKnebzro+ILKy915rlJgb+TZFVmTOjtNz6OXnLM0tvDkQyrui/VKfMK/wwbSEMgLx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775562334; c=relaxed/simple;
	bh=iYxVDDXHqb5a0+NHWXdKsgLFSGbMoIZ9vaVkjp3aKjE=;
	h=To:Subject:From:Message-Id:Date; b=tjc2hTbAvaJB/Dtpw9hmJHFRUMYpsXy4SFUoQUtbNCXVDq2pQFObLezZUFDrQQQ8LXgzMYVSj9CYcCUiGu3mBVDpWThYpiFYyYnw/4+mAw93Yhnb2Ht+B4kXcdTHGanoLRxZXq4ME4WDuO0rtOpDvlSJxzZhxiT9GDEBevYO2fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CyKbcoX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CyKbcoX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A2EC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775562333;
	bh=iYxVDDXHqb5a0+NHWXdKsgLFSGbMoIZ9vaVkjp3aKjE=;
	h=To:Subject:From:Date:From;
	b=CyKbcoX4BKr+qBYpl/A1OpfvXJ0OI1JckpcDmRHfCbQMt3CP9YSpvYWRt+VB+UODJ
	 2wEXLhzgzyeFiepaSSBExhCtlVToaZzYrylDQIr7jzVs3gRkZCkoOHqu8x8EMZk0W4
	 iVSoP9qcmQMC+HkWYZFMCPtigXqRjEKmxZLmvewxpMF4+ndEMcfdw/rv0SobE6Deaq
	 D48TusZluvMTQ66IOt70qtZ0oxeChX/dZ2rXAEN5WL0LR7V6GjquMfPz4Z9BxXDWjY
	 QiF87S6h+OEFSB4Kc7YMiapJ/xSitaxKzjJ67wyt9MvWMpBjeJz2piJrC3ascCh+2X
	 Fal8B7+s8TP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9891FEEF27
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 11:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177556233368.10280.9481266605914848747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd823e57be4b981a86a0bd8377e92cc2cd0760b374c95f6307259f7d4d35e61c
Date: Tue, 07 Apr 2026 11:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775562333
