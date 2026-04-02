Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44807313E07
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775144734; cv=none; b=oQM4RgIzOyVeFbYQxQaESDRrybP0j0Zo23uwWneV4SpdnqjJ+StUgCFykG9L0H8pDzTZfRbgbstxucnOQEhhqBSQVo0G8DKQTAj8ArGibj5dVI7WHmpXt83EcVb7EMnsW7hdeW6++2gP7VqEUdJkUnbbQm/niPkdvqp7Hb7wC7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775144734; c=relaxed/simple;
	bh=CtHRbeeFDWTuMPMdR4AXM5PixuYm0DtZyTRZeB6rC3I=;
	h=To:Subject:From:Message-Id:Date; b=rUmT8xbwwz2CyT9c60UcMNYvF7OxURuCYXPe60DmfSMUCz2uSP3niR2YYf7gOLfALPIi1WUk9VxZn0XX8yvDZ3pKVuZ7HA96sLx0b8GpK/vxB0PiEafIipaioUjb3whfPUQHcdiJkAXb8CUGyYnkONbrG/xcaWDX27sYf0SnGUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEHojvTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEHojvTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50D9C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775144733;
	bh=CtHRbeeFDWTuMPMdR4AXM5PixuYm0DtZyTRZeB6rC3I=;
	h=To:Subject:From:Date:From;
	b=QEHojvTCD7injfzCjsm3bhcw69aZo+vVPa8G9ipMxFb78SUewAGtmg7H67b3UjPOf
	 63G+sZo3RIo6KuVOoVsjRDRILI6ou5FTNEWNVarsBE9cKxQmVKVdHnaz1w9Vw8YW5G
	 Qv9fJ6aUkqa8WCPmhmEj+tkdcbSmy+naveuo2D1EJn8aypvX/7jGMYklHiclSHQvzw
	 7utSrizf5OIhZVsbjxtZhFTLvfS4FasvKiix8B2IMtqtutzrruYFk1IIwdCT5XAIhF
	 FuBQHBSlFwTyzLgP6hCeWQkN8WunUuzv/Lpvo/GUr7lxbsR6PwM+i/nx8mgxOpvF/G
	 Weh9Ivwn+OCgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B38D6AAE2
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 15:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177514473371.11162.13337103686126604101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37dbded046206dc11eb11a6d8841b921a0895ba4b3e1b6e24d70580cc6231589
Date: Thu, 02 Apr 2026 15:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775144733
