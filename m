Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCF81DE4DC
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746672594; cv=none; b=ul6JTXVuWMY9uX1dqXwXyI/Oy56TWDd/TC5oUc8tcHul4zEq41WnARiZqt/9ntKX0XfXoEMjtr+m2rh9taep7Nk3ILvxhltPuU11y170Lbiowf1BDyYz/R0GYVNdKjtScNoqnFO8k/7lHQyMGTiB5atQ8wxLuVCnHKHQSi5s1Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746672594; c=relaxed/simple;
	bh=HBsv+mbjOR3yiNeaEmcNh35fQ0H+uCabKfpjqrDnGPI=;
	h=To:Subject:From:Message-Id:Date; b=AoQDTa40iOrkd8Lrey+NB8GImk+FAdtJ/owKnKPlDoD0dpH9mckcJwN29E5j9RLwD1Ia/DAL53mPd7t05vl6YmomAcV300VdRJ7G2XmdXUfVLsrsGMf5P6kQ3BKw1MRM7RNW3f6jeWkzYXNUUfwJFEGqwyaEb1uZOr5yOK9/15Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNT42odt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNT42odt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A550EC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746672593;
	bh=HBsv+mbjOR3yiNeaEmcNh35fQ0H+uCabKfpjqrDnGPI=;
	h=To:Subject:From:Date:From;
	b=BNT42odtecWJkh1H2xc9S0QS/s/ETqhgrR70nMBq69W7oZnCNogTcxzwVJaMbJDIz
	 kXIXxAH6fwjzCOlQS/w4bHGB3bF3LwWQ9uxoWr9r4QEprK9U1CDyEEHbGYX4ZgexWx
	 WuKxBZGtwrhDD9h3D4v3/SyywImw7/1Pfye2a9KfYO7IfQCKrbeMKiywqqJQVipnY5
	 H5FtAxOzKDbQC4jtKz4NZcbi2guUCHvo7Jek0gJPrtdVrwXarXsK9dp+KFQJX57ZE8
	 SjGO7yL96V1Jo2jiDGh9hGaXQDR4jgfZfTlfkDifluyGMjLt3zXU8iQd3PTHDePmsp
	 g7QS//r9TRmjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96746C3ABC3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667259357.16180.2681806909807236211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e47080f799d6fc16c53d99b184963eff5265f3d1650cdd674c0a2e731fbd49b
Date: Thu, 08 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746672593
