Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525AF53E0B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786339834; cv=none; b=t7N/q/WQSkg33FDniqivhG5LOXz26YYO+wAwc0h+WH4WmNEQURZBJaRREi7R1wnhu6fFqEeBSYg4XzMUhRMMxsVze8Udm+yFuWsH/QIVjks7wTnnMvVYfSXkeE67DLYxSQPJDtv+pmv3OtUVMY06ru1HX1HcUmX4XLEC9eBX+pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786339834; c=relaxed/simple;
	bh=N3SId/ZY5tcOxlNMKZcMTkXTSQAaQnNBsn5WmWxWzCM=;
	h=To:Subject:From:Message-Id:Date; b=JxN5s+YIoaphTDZyG1QsiCnw+xLnfiTjHRhnZ+yZi7hpYvcE34GKFPBVH+KB3ieUS2uxkFkGl4GIc3da/DrpIbfvL09Ui4TyrQHOis3z9G4HvCw+sZP4wFKxYM05Q7NTbtMsNABj22aGAMK1N4UD4xE4bxNsnO/oRmc8r3TXMXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4/YAALD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4/YAALD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD22EC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786339833;
	bh=N3SId/ZY5tcOxlNMKZcMTkXTSQAaQnNBsn5WmWxWzCM=;
	h=To:Subject:From:Date:From;
	b=T4/YAALDkP2piSzdkgUaEknKoBcJPaNn3cb4PXetpXiMNVFvvNis7eJ+Jb0m4cLkD
	 A7WLOa/HuafWd1ULKd+imZOPtuBx5JY/UwqDGxP7hasI5dAj+6O6Wnm4jKreXepSeT
	 as18vmADsxAw1sdPJzhMnRYHYECbZHmjS0CSZsHr+RqwNnBP6QiKr6y8uHqGugDpFh
	 pFlpvNKsjQBZ+ezaPypKOf2u516bwIFaZ4bsTf/oAxZCPIM6J3QQM7P844VfSWOMqE
	 rW2ZmyIMZT1OWkXnb2S6alhT/D51NDuF2RC6ysk+LxhiGW1rBDQh6ay5fJDmnBQxTd
	 7CAq3myn4WdWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7EEC5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633983368.14280.2184618836135957920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7224b9cfe7fc49a329145b4972ef4fd449f2e62b73ea286e11a5e3dcfba1a665
Date: Mon, 10 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786339833
