Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D190F800
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727481953; cv=none; b=GOBd3wQZuYJeCWmnrW4slBnqIFBG4nHPFZXvOLjMUblj0TP1j8GCDtAFdn2pzCNUinxwchsIAzozgQ9EeiUGRk3+vzUj3/dO1G95lVap2DCmW3DmENFcAmNii3WbtIGuPxfqnk5ldi5fHY8qLqRJeX2AD8Ia1lEdhfPyAKd47Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727481953; c=relaxed/simple;
	bh=A5WgiV0qHxIcrmU6PsjLyZAHSu4I5pGrMQN+FfGn8os=;
	h=To:Subject:From:Message-Id:Date; b=jeCysmX6/4UgBPMG03GcNJcFgkZXPTqySGWx2KBEe/gA2tTi1lu3NKmJp8GLXa6P1WehhpRjRmG7YYoWzOQzwNQ2NiPMmOY8m008bnA+6COLSCvVslNFIZXsUWQPXXhvi81/yx7TuSFxlvZyTmOI5L8RFuqQW+CoGZEUhYT2gYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDcZB0mk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDcZB0mk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F64C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727481953;
	bh=A5WgiV0qHxIcrmU6PsjLyZAHSu4I5pGrMQN+FfGn8os=;
	h=To:Subject:From:Date:From;
	b=PDcZB0mkXAcIWJL2URXoQy07ewBM1Ypn+yQiR7XsnbS98cw1uAax+VUjIs7nPdTEx
	 mHk++odSaAffKQmMQu2XSuTEHGy9wmcS77fMTDdpBHzIOxVEPESF6lh3MaAn11tRP9
	 ckCmkuQGIYMKwo5yOF2Digs6RVPf3mHYSccqHDTfDpAMfBaujjhf3E1HMuVo5Umy8a
	 Qs3EY2sIsP7L8g5anWub7CRYABprWubHsROSeZ5qfhaTntMVM/KogoxAYBjYmrlAiy
	 N2gtQ+iOXwViLFL10itkWKFP23PF8zUEWEt+FRhGfjIYCfGfQ+EmDQ3Dyp/mf6Y62j
	 FgtCEeMLlaLAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E01CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748195358.32258.1446819758934820483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4d25265d292ec64e67d81ec5e290270eb5e04bb3379dba1b0fd1009630e1b8
Date: Sat, 28 Sep 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727481953
