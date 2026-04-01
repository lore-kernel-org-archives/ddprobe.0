Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C48D2D73BC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775036134; cv=none; b=AYc7PL79qOGD8LNdcYEEnqk9t7jzrLgu0qkcXKwTJR3sUkLuz5IP6Sef2AbKw60GavvVE0auczCR3/IAMaVVMJFZxe7vl+OTTzbL3aIgrg2bOILdnYAsS/iw7xvwcV4lYiheXTNP+4bnZvrCYsGmkvRD0op/w6twEvDhDJAH6Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775036134; c=relaxed/simple;
	bh=eKNIj+mfagUO1/onuRD3rafKXqFIXg8eJknlEM5xWbY=;
	h=To:Subject:From:Message-Id:Date; b=gYfqJhzPCkKdJM6UGyKp4zLaCUGOvQ65AWrVEZ+pMjWM2Gkc/pzRkEmf75+Q5LAdoOR4u39OGcfqXyEGdcTLtu/PSIrooJ4H9GrAqZ+7TTWJEmpPZ6852Bgje+c5+yBkb/F8T05JVJyEispG8fZYMgkZvZ5Wa3dI3ugahMiszFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYmDb3ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYmDb3ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47ABC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775036133;
	bh=eKNIj+mfagUO1/onuRD3rafKXqFIXg8eJknlEM5xWbY=;
	h=To:Subject:From:Date:From;
	b=iYmDb3dsGZ4QFkRTREBjvMFRga6RA13KO7R0Ysm8Kj7pVh2hjK+dUGdjeXW+w8pPO
	 UAqK1TbEhhWlhI9ozOCxemlaoNy7+wnJeGRBiQOH3ZiTsh9N//HVzhNl77uE9ZelUE
	 iElJtw6HPFzrs1Ev4mK+Un9ubzET0FOHPHbB7ycgudqlNjUG9XjkUIgPBQz7lATI0L
	 umf0++A9h3VOMnLQ8qlRdweQPDC/iA2GfdCfTmuEbcYv2znXF/sL1tQ9nMOFwJ+j0z
	 cmQ1iThC7mH/7mUuCS2xfzQzrhlno9SMG60BRhj216XqhTpDyje0UIqy8h1EBMX1bX
	 DUpb7v8Byns7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE20BD35164
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503613370.5958.15179273103026602841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295acdc47a48907e7083940e6f142d7fc06b4ce57b42a6c745ada7ec66ed2b71
Date: Wed, 01 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775036133
