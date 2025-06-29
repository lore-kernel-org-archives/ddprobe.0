Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABE52343BE
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751222994; cv=none; b=oQDxrNqjfRLa/htVXVNCUaZ2xfJG63uO3QrnuGstk805ZNezJMMvX4T/lDOvqymcXvtRCHmOZtS9nivu10ZeHqMNAM342HSmeTbhCRAw2baWAp6dzfBCIqN/OD5dwoCQKY6NCUBd8JyRs/Oybt/bkVGmtkMrVHLy+9HlMMgxmhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751222994; c=relaxed/simple;
	bh=4c3SSMJbWQkqlGlV5PBYf9WZ8M6ghsJCDz8cv13rbMQ=;
	h=To:Subject:From:Message-Id:Date; b=kWUL042tHYC9UUO/p3rR4Cugb0xxooXAFFmT6pLW8s45RJIVOWql2PDq3mAE3ApjSiaK7q1DrDkoYFZovIhCds4CmSZAv4BaQbZh4b34iZvfJ3hwTGui6aWD2x9rrtjbiUffjn/5RgdF+kx23WaQtCwVHN1ul+G9F4qi7Qti+VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuviBhvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuviBhvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751222993;
	bh=4c3SSMJbWQkqlGlV5PBYf9WZ8M6ghsJCDz8cv13rbMQ=;
	h=To:Subject:From:Date:From;
	b=GuviBhvgMz0IaEFeSR2bCNMCiHvmszObyowwnKjhs7dFAYUm82X2xUG+DS03XX+KX
	 n1XUuLYk0eoEsnQCnS1TVZDsXcGNbC5PB9PIZuB4MgcSykv5w+A/tF4EWZvm+CG3jz
	 6JXWK28t+qLpS2QoWd9U3aLqupLfPhvCqB+6UDBM+7cP9xvbAVfbvXYJBfu+Ste3GD
	 NfYhsgKTw84eQ+pXlYAPlH5R1ZzSomsPJ1ktSsIrtijbodBgKRk2FB2moGmvScHuP4
	 3cbSfK2KM0wXhfFF6gz2aB5NSrVUT+qsRFG6r7oaUj/LePt0I3SOLTXocXlfTOCjmC
	 9L8AXxJPc7tzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993AAC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122299357.15059.15335732431057511087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da920ecd94bdda464f3c4b3b74b9c0db058819b20ee7ad5876debe99d0059c8d
Date: Sun, 29 Jun 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751222993
