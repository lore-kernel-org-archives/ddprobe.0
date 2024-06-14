Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E6719D8B7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718387303; cv=none; b=P1DZcwrHBS+mdD2bzX7YpOIifwFQPa9yEEvjM7RZ6vTKbMs2KLD655XCOOynFvrl1rWSn1bhrvnvi0PV/oxL8+OP8g0HHPwn+QIgMrxCUD+uu+goDxlWuoDs22oFXXeo2Y3ShyIInb6yYtzWLk9GqQc9u97RW7IdVKA7RlqRERs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718387303; c=relaxed/simple;
	bh=y8DV/ajrwZEeyQ7mbyaG1mXCwsZaVpejBZ2ZfrMqfmw=;
	h=To:Subject:From:Message-Id:Date; b=thsxeUi5WMYgZQyB/OxYlWkzCHSPkji7yYkcdLip04pirE4fw8phpgcZwSIrWkF4J1Zxsst0xtO86bII2F7HkqGMq9QxzsGqBQLGZwFtEitBsUsWWDRdD+IPXj3/xBMpnLxUWpYpOrv5ZvobuJc7pAN5ZhsmEcrxjppxo0UGxBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjLAbpxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjLAbpxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7A7EC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718387302;
	bh=y8DV/ajrwZEeyQ7mbyaG1mXCwsZaVpejBZ2ZfrMqfmw=;
	h=To:Subject:From:Date:From;
	b=OjLAbpxfj2hQrDf+yDEuOu/6Iy18uWQiyix9WOfZGpVWVHh2ZBS3EGx65kwypgFjB
	 NlosCDE/C9pGtlzRITgqYY7PcqqqNEdPJHabJPUatqFmaP6AGOUUXAAWrqytWwG8g5
	 U9qfWu25PcuTOg1JzeQ6dqVcgEj+GqNBMi6hZRgkzcw49bBwb1DcZIktcI9Ke0Oshv
	 2Bk1SONtK/RegK097qYrjWBdC/2+cRAYpV6cc3QXY0jZ39wGGMgySIVVE3jiXmmd0A
	 sWEBxTzlMEmcJjFbBFtQxufPtq/wBuUh1yuB1RI67E6dqv6gjlScG+re58IdGIEOuv
	 yNaWkNO+B18yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1819C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 17:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171838730284.19767.18419129221604659415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63803de3d1326e47cfbb90628861260eb3d367f67e336dd1935c3d4c78b8615f
Date: Fri, 14 Jun 2024 17:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718387302
