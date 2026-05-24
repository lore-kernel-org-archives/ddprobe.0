Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9E01DB95E
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779635554; cv=none; b=n3uZZax9HR/g1M5xCEcMKupxOvUFNgZhBcIh79k7N38n+wdiTIVlIO1My/T5apbtQqZDNxVqzx+00yKKdeEOjVAtPgVzXbon6WvXSSQ/KFelFXupaLbIGsMUn0sf736aDgFnqraK2xw+0B716nnNk4nCHyKDqxS9rj3jAtO+P+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779635554; c=relaxed/simple;
	bh=0t7apzNDfu5Pg2iDqBTb11GkeELgPD0SYyUseVn/pgw=;
	h=To:Subject:From:Message-Id:Date; b=iBRRLqS86vEw44F0PXzr3JqDHdk9mO9OiA4GklMGO+nFtBZeh7/4EGDLN0A7SGCUTltavQw8RAOu4A6Z+4jy0Dy4YFbdFdDB1/7eCYu/bA286TuPcuY8ew1w1tKF4BKF8gYTCoa1EqDtADWo+WtT+kTnT+bhCDj8o3T1imPdSnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPdlm85j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPdlm85j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C447BC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779635553;
	bh=0t7apzNDfu5Pg2iDqBTb11GkeELgPD0SYyUseVn/pgw=;
	h=To:Subject:From:Date:From;
	b=NPdlm85jvNK8em56CSw2VtPyoV1NKwlfQRZgWcQa59Atv1ST5vkG0tSkyZPKu0Xr4
	 m13CH6Fo3zjIwkvM+nok3GA2CZDH5DTCV6BMuxRUbQpFN730/cdIkgmyCnVm0X5zMw
	 xl/NLjsg0yNPlKWvN++dEZe7H8YhyNl2cz8MJkOuztG7XdzSCyuWYV1rQf+rdV+s6l
	 /j7Rl1jnmwHW7SEWnwail6DORJbRKXGBr/yVx/x/QDeig0Gu2S7xVRxXqnvCS5KKpe
	 XP2PKG/5NEF2bHL8raaztvJmDA7NXPH1vY9TZNYj8vzQ15rsSu3xFB9ffJpH4XL/Y8
	 CvX+FgmOjHqjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8D0CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 15:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963555368.28007.1483415996051941619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f433021cd33ae758ac3ff8e5e7304e71397d5f693465f7af0bca852f4437cbbc
Date: Sun, 24 May 2026 15:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779635553
