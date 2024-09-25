Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C339126BFE
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727267754; cv=none; b=ucBTtmzGh2b7L3UjYSRR8/XxdiWCpp4PBK10rNVZKEQy3YvasifDvXc5SsJZYTXSIkK1iMeelIUQhnQofA82vKFGKn8ygWAbmoRFz6u6z/KvUG5rMqx5TmnCA2Aj1jYhZ1Epid47oRu6Z74U5pLSl/JbmOUBiZWiTPbdfV+5y/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727267754; c=relaxed/simple;
	bh=BfZAxMD/JiJ5F3YDTKgMkwtnCJtc8adJ6108ifx+CvY=;
	h=To:Subject:From:Message-Id:Date; b=gU3s8fjJdEK7F64jdFWjFr8l75pHnrI5N2JSK8Pcr6l90f97PG3bPn7aDS5y9yUF15zCwVn41MZ5cONE1Z8Ds6dwkRt/3IfnzvhOU1B1CgqYhXGaTiCpYYmuK9hGdVrG5o04A2yKQ1yrpRBMgccW0AziuXLyBhNQrTjdrmyOrqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3SG/fGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3SG/fGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7364C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727267753;
	bh=BfZAxMD/JiJ5F3YDTKgMkwtnCJtc8adJ6108ifx+CvY=;
	h=To:Subject:From:Date:From;
	b=D3SG/fGighfS+j9k4WrkvwB28XWGzYTo/neVLTWQ/6rECf6JHhyRKwdAYPiUQmC4l
	 ndqYBbuUvK1gKHqo3mALxEqMWhj8FoLl7VebZJJtQdrx+C62fAVMph69jJ+CSfeAYz
	 S2wPjNMNtlm3WPChXr4K119Nvz8narEFYTVe+XeNhn6frL0qZKwB1wMLIbgq4y7Sok
	 SK+221RtgXiQpcCMmjdfx4jY6ScJh9MVrYt7fwOGSE6SNrqhnVrsd+C0/BM2e2Z5f3
	 EPcY65XJQWRPKBZVUKmjWBiCkQrDva/hbWIjbZaaFaIPto/YwGEag8SIsWcdVkIIHn
	 uzES+OyCymKlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF42C369D7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172726775360.4588.10303477572937111022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03afc56ba9bbace4eb3a539e73f923c3b01db16dd8a44c9ea49fbc1373fe37b
Date: Wed, 25 Sep 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727267753
