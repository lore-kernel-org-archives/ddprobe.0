Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F21B27713
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749928194; cv=none; b=PmVvGbaNz0oj4NT/7KkD5Qp6lNXEp9Xm7/8ACazlBnvchXEdbX9qUDQ1DP9H8FQ8FsXck9zslk45AbClTZD/nlIiajTcG8L0vkLoboY3KcXdljCvKTUYslIBG9IWk1YNMOR0H+ovurZbClMuud8ggfaL3/a7AoDkrncHwlbP0ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749928194; c=relaxed/simple;
	bh=HpgCR2kVgA3RuX1WIZV9MXT5jeZ8NEIgB+zx2t7oxoM=;
	h=To:Subject:From:Message-Id:Date; b=MRXvVesGWF7YpFobmItL6rOWFu9ke1zBqyd9zJTfBYiQCQDyhp0dflxd7s2nACxbDdO86EztIkmI8z8mC9lJsrfVaQ4l9C6p+q/8XJWZQ8z8FqM9da2gw+bMMu8dT+B+IHVsMblgZ1uZt1f6zkpZTxL0DnvU4oYBxNoux8sQRu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiZV40QI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiZV40QI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF2EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749928193;
	bh=HpgCR2kVgA3RuX1WIZV9MXT5jeZ8NEIgB+zx2t7oxoM=;
	h=To:Subject:From:Date:From;
	b=uiZV40QIKqqDOGFGOVjzK3w4FeYh6Ro2SmZcbKq5C6Voxoz4rP2SYS/155FTo3rav
	 Meklkonp5CzTpFar0uubeChfXaEuZh1tUsAujJFaTipYLiSJ7XYdus9vM/zRYHPRsU
	 ncseiewj2/xwgqfAv46R9LSq8GOcBPIhn7pnvguYDCyiE8qbh9ex1yOqrHGmfFa9xV
	 wyguvYrqknuAyw3vDzT7Cap5qk/CaUIvVliqL8tCHw0VmRjAiXVLkqlFFys896cl9g
	 /37dXZAB4J26IzET+ls6yLRH50qfNfpT81jRW+hvYs6QwZPhqqmpUe0DykzNiqTuTf
	 WjicWl9zTXQXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CB7C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992819358.30369.8527251185607957644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 299ae914eb4d2504fe6d7243b48802180f8b4debf3ca6366d79907cfc76b578b
Date: Sat, 14 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749928193
