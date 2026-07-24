Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D97421251
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784888434; cv=none; b=LQNGcZJ5G0ggLZqU7Fp87A3Eayl9kjkDPv//CxXtsO/cOtphQy7uozhEFZfDnWpxyCBRKU5jiwU9Hx4J+/v0QL4aAVPCtcHDUZH13PIFfRRUjwBgzH0axbSht6kFny61Hb3WKQ5nu6SOOA/mBptxPXxqUTPiWl8GdUQXR1OvFIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784888434; c=relaxed/simple;
	bh=8ZBgCEusqDLKHJbzrEQnk62vw8OY2NP5Ml5BTdCoW+U=;
	h=To:Subject:From:Message-Id:Date; b=E+Y9kqphWFHkDplS7daC7UPeVWjPWk2sBg9DHQaFpA08MksTAPBkFaMkOH7DavryBo/+FFrWoAZI1pgvH3lF0Os8kFM8HMDx2yXW+zDBqj3KuUdZ0RmWhB0DFHQBN98pBI1TVc/uXtRYl2MtNAmULm8IEIEN+DQmAohcukULzpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbZujcxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbZujcxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7959C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784888433;
	bh=8ZBgCEusqDLKHJbzrEQnk62vw8OY2NP5Ml5BTdCoW+U=;
	h=To:Subject:From:Date:From;
	b=hbZujcxAa+MbKad3RiGh0j72rBbFXzp3NOk3gUO41MRYHuYtTyuxz1u5lmI1BTpXn
	 PP4NAxcLtPioUD8D0vqBePQ0HMghgay00T8aZSPO7HgRKYSB9VhnTcET4SzPid95G8
	 t3ViOmobZYeDTgv905u1H775yhd73LWJbtPkJ+ySK8ejy8CqOqrm+hC1NsZY8pchGP
	 ga7rNcKqrqtOBMgqL0t/7ZAf/U63oXHQPLMOZfIJ2ylPCP4wZM6dQv5p7BIcuOTbaD
	 iDAqvbtSqd6b2gr4DKmks6QNu26JO+6PFJRkcdJuL1gssBSDr7mk/rjRB3dAp4yIO7
	 JE/fqZ4OLvXWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3AD8C53209
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488843372.21557.28827190533484050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e92ce8543145a326bdaba1f5c8c5a0277b043f0526afa897131d8ab6cfe60df
Date: Fri, 24 Jul 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784888433
