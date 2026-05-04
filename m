Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15978258EE9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777936054; cv=none; b=av/5gYm1IbZlx5u+DjLYic1wESJl0V0GYiDOUuoNuc+hquenVomiEIo2wmbyJ6/V4tVCWygvS8VfD3OUeb6qzxBL+RFSNyHM7ek6J3DMx/BLid8Q143cm4tDq1XNODrT/2Ghrojam9zDKfMVu/sXntLB2it3fZUTGMskqoFikQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777936054; c=relaxed/simple;
	bh=SGX7xXnc4oM1J0YrF8SCJaSjpuxpvCRE8XgA6dMo9GQ=;
	h=To:Subject:From:Message-Id:Date; b=ZgTsvcNEpTlqP0p3J5VFYgI9g1vB8piHIFDU7oP2nGolzf//cJeNAH+B57Dsu1FKdtK4zw76XOFqIeyktRZwMhW+Y8AJFeJwnEKWvPSkhE7WYE6iuJpYlK9bgNOf09UUwK5cfP70aSCuhkoQT2cSsM8Lnrmr1tWluoOYEYXUYZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9mKeQZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9mKeQZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCE0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777936053;
	bh=SGX7xXnc4oM1J0YrF8SCJaSjpuxpvCRE8XgA6dMo9GQ=;
	h=To:Subject:From:Date:From;
	b=U9mKeQZRBSQiAMbkiygSOVVjr12NWQfNedFONRw0zDDzPw95aZESm19j+TaAR9uiE
	 OoB6FoOs/t8aSANI/Q3e81+QiPH/k0arYvAWBKEYI1GLEs4hdVDfeTaVgqUjECMHNz
	 fjyXLljKiWAUo0+Gtcym+7gd3Coo+dsofHhW1VQB4jVBOYdAXESW6D2pQD35B3451l
	 HrA+bed8dpRcBZQbZbUq/vPaXNOlpAI2id/Cz1911e899N9i5qDEwfMPo+X9sWnQQU
	 yr1f0zlX1bp5q3LDaneeg3bNP+kne/AMfHby+3ZQ3EwDrFIFL/3efLgaIHUy/UAeyJ
	 U2f0tiwFXoRdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA423CD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177793605368.25526.505567505982713917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05e62f010867cb695433c086b81f395903b8334a657c56676bca23dbe969c58
Date: Mon, 04 May 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777936053
