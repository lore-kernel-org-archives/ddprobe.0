Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96D183CB574
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788699034; cv=none; b=rqMsUxyEkEev5ijIwUaBAbEMe/0911Ry+O75fmJ+xGhJ8eLc3JhVF5JKZAqhVqiL4DHfBCHrl3e3S8VXkit9gpHGEa6gs98Zf+MuloMxo+2CVDydgUJiKDJ0bqeD+gKLMrbyXnttOh/C5gaYWLe5cdG/oAb/FkX60T98r44RN28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788699034; c=relaxed/simple;
	bh=owO4O7JMFZrOaqfTAoxlWlZw2BPdJdszqhU9EWBtq0Q=;
	h=To:Subject:From:Message-Id:Date; b=iTsTJ7DmM9NQ0NPvkTLXJjUcgUZ0ywFM0GJPd/3L9aTBGHNXjncfcfTN5e7F/HP4LmIuGwT7VeO/OLmj4m9/NolNOos6qEzzsJUHr75wJNd4HYZneyMYHsJcZdkiSHOHE6aprUrBrWdp3wrYFWVsvoppgkhrxEHDmUUMbvRp9X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kss4uBYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kss4uBYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9090C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788699033;
	bh=owO4O7JMFZrOaqfTAoxlWlZw2BPdJdszqhU9EWBtq0Q=;
	h=To:Subject:From:Date:From;
	b=Kss4uBYF4WpOM8bSeltR0X02ASM96xAEqALDieesRbyTfYmwQ2LFFK3JabKnHTXjr
	 ah7AKAmFuBV/PwLfnwC0+Z38qXJ6kxAvqnE9u6KeqdpCdF+7fO2CuSPiZTE80EHuND
	 cJ/IZeisSmF7jbwhkwiCJ5FJ4S+r0fpjd5MyFvA7r0ryrxW7/3l523IKn5AjrBySq1
	 c6xH3DKLsQesO5hP8QjADkcUAFtGWDUBSqjft4Doaeb7YAWG7wrMtaOp10lrwbi8gw
	 yJ8T9ILny+BgD+Jbp1wDUAEpWAtHCGxYF/AYJduxuG3/Qv9uXey/QwASbDPVX7DV/c
	 C//Cy5EUHCqZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F9BC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869903369.29161.3245968542896242138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24c16727a9cbd317c75a082f9d0ab66e7b6689be1133bf65771bf343332fc22
Date: Sun, 06 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788699033
