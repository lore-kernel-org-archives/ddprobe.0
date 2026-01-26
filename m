Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE51E55C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769429633; cv=none; b=ODIejhJNWPgfFnB1gd1EfrJtmdN4xsCWgf6WtDgiSBfhUK0J5byYDdSw5mGK0pvmRNwrxKieSrTAQVcIWtKNoIEqf58EFIg98AtrMSMcqMBtaa5aqxIMhNHwjN+UHuQbVbb+lXyKz6wZB0Iiy42whPebmEiPk2/PZ5uqk8kXsNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769429633; c=relaxed/simple;
	bh=UjCg8e7QNGYfsspaqn/Hpg8gOG8nz7AXKgiehP+3Hwc=;
	h=To:Subject:From:Message-Id:Date; b=l4a8ATK02ocUxxW9H62GlzdTMOh75zhJTfQqAY1arvib4WJfFZiCW90LkefLy6zlh07lCNuXSszvsIF7WU7MUofTGJS+gO6kAUCX1c5F4jMnIre4Png1x9u2O6R7CqJhDzyzQ+Nbx3Bnhl5+zF+P7zSaPwicGwWPWzWLL8tICuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oACJZ8FM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oACJZ8FM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98A4DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769429633;
	bh=UjCg8e7QNGYfsspaqn/Hpg8gOG8nz7AXKgiehP+3Hwc=;
	h=To:Subject:From:Date:From;
	b=oACJZ8FMuw7cBbZBFSooFjpvYCF1rc2BoOrgBuY7SwjWJNSXwtKcCwEw+TbEwtA1a
	 dsbJQvyvEIKdHSSiI8vQIGeDCq2xDRMNgfjgz7o9WFKj6lM/chI08ge1QFaNJFFfWF
	 lYZ5f11GrUDUiLswlvueiYy1pyN7cujFcvCvuZc7cqRjmGbGLPL5qU0L3vrO2ZKI8H
	 wsufXDqFwGYT4j/tJhnaBFB3tCVvqpFbNq1ZYcoyga4HtTSo5+WFbEvvvnDyeqSLAM
	 J+mrG7S+7q8q/p2ZMxrO7WcZVf/PLZmyjOxrnmC5gDpObidXKYheiat5m8kx78UsXP
	 KYUQ4KsTtTi3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0CCCF65E9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942963357.4088.13010025957672407301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06168f09c14b094e269036e477a1b54cd502a2363d5357d09c926c64e817faa0
Date: Mon, 26 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769429633
