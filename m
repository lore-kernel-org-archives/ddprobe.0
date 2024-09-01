Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2481F4A1B
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725180354; cv=none; b=rBgLG1koyv37I4qXfgDvmU+p2M2azSbVIMagGiSCwM8CWrMg/GTSLt32u8N7F5LNetEGLBNWXeELlzlECDzCZJRH7x8t+2IJsVfaAX8Ld/gFrLffBu4fOBXoNw7TEBmjcbWnQvIeWJr8PlAoD367lD5zDyvFsIF+UzHGrFhzMls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725180354; c=relaxed/simple;
	bh=Ycs14SBEbIT/jqLVaQNQ4/9qHmQG+5kdklaDm+yzDVw=;
	h=To:Subject:From:Message-Id:Date; b=lpaHsFXbE269i+l15W2uMNmFPNlm7/nvQI9+Y7xw+J4wXsTlb0t6dnR3XiiPK3HfLOULb+485aABmkLglundTDB5v5/bcvwH/PwPGdWy6FsfdUPe3LJQjho5ilHPXcQV/wsFOorPCPs2Lb72ojImxOB8tc6CLTYj9HsJPrUrSgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fH6aw3hY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fH6aw3hY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7B9C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725180353;
	bh=Ycs14SBEbIT/jqLVaQNQ4/9qHmQG+5kdklaDm+yzDVw=;
	h=To:Subject:From:Date:From;
	b=fH6aw3hYmdIqGXJ6RcP0IhgGT5SMPZ97jSCg7CfIDAtcYsXJMpoIFuoIrNr+vuOd9
	 0/qHnmRYWLxXU5EdMOkncTRxNcZOsZLpr+b3GD7+NoHKSGs1AcuEpzBR+X/s/FYA3D
	 0KMVAwga3iGacHrRZa0fVgGi6NSQjAy4L776EZSSXI1+kcVsjo3ayJ3LxwJ7J5hPy6
	 vrNe14JfL8zBChmDHoNUuKxgIX4y6pPZjCs/kd7LevndysOXx50b1tf72k7ke/pMAH
	 qITrqJvXpFZ/KQ/hcLF98ZLD6cm+bKnizVoavPn5kj0bgUxbDCfLFYdaqdKnJl88pj
	 pL018L9+CyBNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97128C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172518035359.2026.10858622156520712674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcada68c869204e9c0c092db7d9311b3cc05b7b4b7c7d60c60a3253e7486ad87
Date: Sun, 01 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725180353
