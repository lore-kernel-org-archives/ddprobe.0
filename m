Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D46227EB9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748000393; cv=none; b=AhKonF0sHRtODjW/Glz0oLxXwCSwnwnioMst1/633UBi1oQth7ddp0Tpwx/tI2Q9u5N99Zj+2tzjf6/XcqlgeVsOwszkLb45odlK85rpy8kIOqLUhxtPf3aeB9vEvBIi74T1w37//Y2Th4vBSVbmXyt3S2uEAdbcmpNTs6ZcRXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748000393; c=relaxed/simple;
	bh=r7Mg7X5ZwzyRMgCXuwks/sLnA1XojnWV3tUq1YusUAw=;
	h=To:Subject:From:Message-Id:Date; b=LxZ52YgqxvkcnmhyCToov7yYafCp9CszXtJKxMdpkTNOwXo+ycvPbOx+V83D95zpZAgoGHGohtA3UQiFd50gTYRMIJE03DJ679aUQGwwk4YSbyQmPtxaGKspoTzdXxKBJqzkyCfS/QvYtjtOh2qu9lnU3yKN667OHvACu1F3bU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cisswd09; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cisswd09"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A3C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748000393;
	bh=r7Mg7X5ZwzyRMgCXuwks/sLnA1XojnWV3tUq1YusUAw=;
	h=To:Subject:From:Date:From;
	b=Cisswd09lwfrK7Fdu3LmFFPydCdxu9yYW6nrg355k5ZOn3BtH1baeDV6PChkhsK/K
	 02EtUmYXuPgIDwtJK0DxQIjyrCcoyZ2opDxGQfMvCHUBIBq4+5uck+LjsmYXA0Jol+
	 VWyxlAw4ma9WzN9YzzCctNubvCuyamrzOS94sQE+V4DspGTlp2HVhlEuHeEfYRg20b
	 a6wgGDx9rXwe8rCjEd2Ypwd+RpB4bf7wgsZ8AXno45MwofH4G4w75YRFeDpksQjHdU
	 qNngRlW8opN+LM91G7Pl4pr1bVwqKjzhxdfNtXhLyqYn+vO7tT/cMkboeD0q3zYi7h
	 i/dx38dAeEMjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241AC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800039358.32535.11362114336503765697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abdfc5ec4a63e0ede5726e0a24566a44f868e78e35f68f0ed2af878dafc0f7f
Date: Fri, 23 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748000393
