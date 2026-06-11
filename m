Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288EC1FCFFC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781141194; cv=none; b=lX3/N/98Q75DedK9SBvqNJ1OQPB9DD+28tMyyqPgfy5IvU6qtMdvxDcniGFqyI1WX6UEyk4yWPBMeYVToxFQlbjopKn56pCguoM0BizTPqyo5CJVS0wyctUx2K1bVlhUjVwkC7Q0lhb9FqmcwfYvKDKWTzMZm6GWqyzldui98Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781141194; c=relaxed/simple;
	bh=TyK1fCloZR1UONpQrPeBKF6NYLKkvcpZLhyu/kronHk=;
	h=To:Subject:From:Message-Id:Date; b=DRJC8gB2j2yDCsXQU+cSsSbRCHpcsxlDZBGXceJbnhG/dr9D9Esa8aLqFUdZqxLf/fX0qKH5V/sB5V/2D0JkK2S8Q40xFWP9TbGWDllte/gEaV0WUjKnvPu4GfF2HnrhWSKrf2QuuemMF3lBPZrt9SOfvVES2fPh/htcs+9ac68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCKLjOrP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCKLjOrP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C34D2C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781141193;
	bh=TyK1fCloZR1UONpQrPeBKF6NYLKkvcpZLhyu/kronHk=;
	h=To:Subject:From:Date:From;
	b=KCKLjOrPYWGsnXvemSh6dHEZ1MmlEDlLsES1myAXnbpDPk5h4Kn2E9KRKkWzVWs3q
	 1sr25C6MxiNbTHbQvuRe77gjCGrPu8nt/AdWljj7lJpSi0eqVUQQvB+8ZQyis/ehPt
	 WDlhcxDrnniRCuxrxVkPQhtdZ6hUb8IOtQHYCifzFR1fhtREeAiEg1qyoRXYgh0A4d
	 ph8dEETKMHWJ7OZatpzty4U+14Yr1t5738oDV6bjGwMBO1q2rCRwk3X7EoA1QA0Zh2
	 NtEtdIG8fYSp2SLSchfzs69Qg1Ifct0yILm7bcV8xPHSUPVjjUoUMBY5TUusLS+3oK
	 S6ROI+TF2OKAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A982CCD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114119368.28316.17739237223240118353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf4985e88e92d25cb4a33e5db79556ca22b44886bbecdc23c9a1e84c00c297d
Date: Thu, 11 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781141193
