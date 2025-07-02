Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1387A239086
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751450394; cv=none; b=ltvX+vUGC8ILzjUXodkZ9jX1xb7Fd1N3IiAl2rg2038HHU/rtgxBMBa9I/w6OqMABetLmchdz6RQaa2tsodcb0IqWvmbk0Luj3d2MsPGUUni4zHPHmEAOYrlXX2PD63rQoznGvrb8r3/gcQN5yShAxIXMdaIdsFHvbt5uVu1wqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751450394; c=relaxed/simple;
	bh=8Zpmt6lUbR7ArbfCNuLDMn2FC8n2bwJlhxk4OPwXoz0=;
	h=To:Subject:From:Message-Id:Date; b=POmenPB0b+3E5tRy+IRDcVFpkjoR4F5R1yRRL0nUtWYq7DBPH6kRr0PQqTJj2IWIfEd4f9JTJxGS13G8S2NtG0dESBQlBJEArIhKFLvu6cVXpsfZM15HM0qeXd9wEsy54J4A+2P1Y69HwsFqXm8bgfKupCTCpuoFTyFnRzujs8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GI8H2sMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GI8H2sMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE46C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751450393;
	bh=8Zpmt6lUbR7ArbfCNuLDMn2FC8n2bwJlhxk4OPwXoz0=;
	h=To:Subject:From:Date:From;
	b=GI8H2sMY64Mq2x6rL6tgOV+RhMQwyZLYv3OYd9FD80+5bBFjGiPtwWwvTP6gqEL85
	 N8CiU5//4n0r8HpvgesM0WRelMCUPaYkD/6FKEyIlKVEnxXMiOBkANKmK2jpt7jRTD
	 aYdkRUGq4D/y8O72xkBHqQ59f68fr6IrhuCnL+0620NouZArGcp+Ifz2dAHxM8yuDr
	 oZnqIssY2icdtQwlyhCLrvKELN22L3W3WjbPKzlsePCBGulMEgjiqBYQKTpsQf+BWb
	 gov4GwNCFO/2PyQSpf66LoG7QGDKlPdh9mpDlcPBU6xj9uuuPQtEHvmq8usV6zYaFi
	 iYApo8JTgqnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5BC83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145039357.23617.1202156724441374650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ed9e64ade2571b1678e83234b7a753348eef47e1f871227c87c990bfa970a77
Date: Wed, 02 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751450393
