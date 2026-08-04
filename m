Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC4C486B95
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785874234; cv=none; b=BCRS1J458EhcyZxleCmZposyZjvDmG1u02tbK7imeDtBml9pASZB20EkQjL9oJ8ojClhOdvynYphPr8y3XamgWBfVKWcinzSk5+Wde/hLMNf1VCNSewDB6lBueiyKet9dMQUnK5f+PsWOUXipIJ6Dg+23bLke9K071CoAeISYxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785874234; c=relaxed/simple;
	bh=LmBRp1dAYi4wHelnjA2+s0aEyshVeNv8Kb4mQ6xCmJw=;
	h=To:Subject:From:Message-Id:Date; b=PMZ7H65ZpTiBjqAiFgMH18FYpptwEHwzEdWaL0uC36fyHwb8SlKoqOQNVV2CPXWzkzd22nuS8lahvHekc4UKZPC8OdSwZbSqIvE5FMN7Ab6OLmPqjHqWDpP9wlvy2mILXJ0pKvnIxEsXauDaWqO1N8ocYYcRLMaczJcYZVGanko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkftF2FZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkftF2FZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB96CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785874233;
	bh=LmBRp1dAYi4wHelnjA2+s0aEyshVeNv8Kb4mQ6xCmJw=;
	h=To:Subject:From:Date:From;
	b=EkftF2FZ4e7MvQp/V9j/xYRc1aX68AINGGHk1Sg7C+UNBav0FfEnCF0glPXQtMWUF
	 E2C0jIqB9oAqaDhOuciAdZCZsBeRzwz0fXDIIO7R8IwAyd5LwlnI4WBmfMdR9Nehfb
	 xUMOM1YdlwIyckkIuAvHNMjaoX1Qhbt6BFq3NuY/jh687CqPtMqx58IrAPJ3xZhMdU
	 IzCUvLgcUFUhpHuquVutDsrsTal2bD7OQTYw5MmatRlYYmCUYM1qumA4HfNfXzrx5x
	 aCQLhFycebFAnYd2cL507D00SIhfj89NhisZXBSkcgP1iYhqWIeDDYiU7XoZ8v07c0
	 BuyBEQshIhXGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB278C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178587423369.22047.6629273455955050741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0107376a9f51dab842cb4987a629010651a0ce3b366b20cc3fd539d1964626d
Date: Tue, 04 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785874233
