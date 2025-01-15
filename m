Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348FB3C0B
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736902554; cv=none; b=C4ZmKjwaWgfIZTZbJOZ7wdexV1nQ/CwfG5aNRt6vx8Sc0i6LvMXELVTIeYRb4meV1DvsTbFXlA8ND4Y6SI2tg+HPPBCqa96efH4cj7++wPBOLN1KfTsl3z9M35OuebdtP6BaFNsyNH3rdXpuFf1/IHgU6mapzPNqnKlte1vowhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736902554; c=relaxed/simple;
	bh=tyDF4gv5+3WP/INO7z3q0ukxmyzqtkFdTG022i8t5zQ=;
	h=To:Subject:From:Message-Id:Date; b=p1uAP3ixry0DnbzTJylVJ70JRN/k8ff5vVcQwy0w0lPVD3Fp2nm3NxGyWN8C4jaRtDxQ5dmDygY0F4en6BNhBvIS5HNURe78mbHoxYe7kPgY2Y12raUzMJzXXo33qLQF8TGL5QnOqbuNRuraFeSPrKRDK7ilzHfpqRxjTzAQ7ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ClkvwI1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ClkvwI1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0F3C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736902553;
	bh=tyDF4gv5+3WP/INO7z3q0ukxmyzqtkFdTG022i8t5zQ=;
	h=To:Subject:From:Date:From;
	b=ClkvwI1LU0OOV22LLDI4wcTps/SG117iwMIu9H1+jC0581a+cVxgFEv4vkzUduij2
	 qSC8ZFSJgmDdDi5XQthP9v8zB/mWONEuGhCJBonc94/Vi+xorRFoXkRMTGc7Ogsj51
	 CIEsNMvG3e64f7ZBX7WwO5QAMCVMHuoHluZk1y7MCsSjyRJMyz9n1vKOdlwmup2nU8
	 2Pvxju+fsGxy4zHpXP5t6Bnt4JnaP2REGR6SurM6qlG/VzaciRlTlEJen+zVQrVqMx
	 J2gUDQkTa+nnNnGd+L+5D1yBoyF4ykwllN738TWeDvh2+IIAf/KF2tK5UboWv+bmfS
	 mHRXtro7n33yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978EAE77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690255358.31779.15064639941681564027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e762aee69cd7ace854021f696c37a8eb0576ab43711fdf12e38270b2f494222
Date: Wed, 15 Jan 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736902553
