Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C823B2AA
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785197434; cv=none; b=bbJQfWZ1BOgNSyMUOF6OlxW63IzpULFkRm8ta7nzy8qooWDeaoEVOn9277S5wbqcehkeKz57623F/QN6uriMsUsscRY1Tr8D63ZVK7t4U7wW8EwNYSrCx/29f9all5B3usWDRW6wgL4IzChUv68l0Hh0CxVlpLjuspSWfoFSdlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785197434; c=relaxed/simple;
	bh=8rCFXc8mDLenh8T4I5hZq9tO6My68j8sxw7pGruw6NA=;
	h=To:Subject:From:Message-Id:Date; b=tGtiKsDBRie443b81GMd7chstyDMQ0ZwV+udByVBauNQGRkaiAXLJpJk0H7wrIOIk1faChMIiFlSMCgd0JiBRPXo/pGkTeAKZ6cSUfFLZipiBn1EaZ28KcMN+pL6NdGJXv7Q1aUlXvEyrdxbph5i5zOz71OaPcY6JakxkOabgT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGIQCGEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGIQCGEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0354C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785197433;
	bh=8rCFXc8mDLenh8T4I5hZq9tO6My68j8sxw7pGruw6NA=;
	h=To:Subject:From:Date:From;
	b=tGIQCGEes5Xozjdwv58NxS2de/4ne5kNSk2O8USFG/+J4C/GE1MWDFsXralp/tzx3
	 ta+f5HAiGl7/3xtuXXvB8pv0YZPyJwBn9Ipj+5OF08CEFeRtUdQPjdFoK6uiBzzGxW
	 9JvjNlgheM21Ls21wkHWW8VvzVUp2o0mbsB9KPYg/nzWpB3S5x4otiu2tPFyNfMZKy
	 4o5Wio2AlbPo9/QVADwG4qCF+0gHmmE1vY7Yy3aBGiCDkGq5Ajschc3zIx5nVfv4WK
	 SwqyDwGGIV7SQs9pMB5p3/uX2CrVxdFxj5aRbcTI7SZFogrOvxcE34AYIAbQG/vaOf
	 zf/iQwGHG3wRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC2EC53209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519743369.27407.15080982419027860137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc95e9d2553769cb8c90a2f4158fed7a71b9392e9e28e783bdafe53ce9f2272d
Date: Tue, 28 Jul 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785197433
