Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DB636A378
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:30:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778635836; cv=none; b=CfzuV49iP8y3JeuF2UGIypNqSQ+AzSQuhJDqv2ulTr6eTxaKjmOTV2ZydgBzymRMZh8D1iPosKmFBPA2f/2mWfdt85RPctbCW9Nt0w/yErZ/KIMY44B/Jtu8DkmnFyRxvXnx85+zBh7RVhXWmo5f1Sg9LZvhYJBNf33nOkvjc4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778635836; c=relaxed/simple;
	bh=rinlsuF5VTM9HX1R0lFHAxHD8igO2blVKfmI313vOcU=;
	h=To:Subject:From:Message-Id:Date; b=piONIS1iF0ZT6EAtSfUNO2TGGlKZEvqkl1s/R+nXk7D5Qzrp87uA8TCCiTppEFNFc3UIy6PXYMN511w0L1YNyT7IjxRsncECq7Q6WVsp3ux3wNMzB5cekAfkZib/7U6gF9pLDmLQmEaTxM2rtWDh0GN2xnharIX6UNTlKqSg530=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIF/WwHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIF/WwHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DADC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778635833;
	bh=rinlsuF5VTM9HX1R0lFHAxHD8igO2blVKfmI313vOcU=;
	h=To:Subject:From:Date:From;
	b=hIF/WwHlcbEfEYPOGRHy3RPc7HLMB9ZqnoeJkj/RkYLo6fXJqw7R9PK8ZX3I6L14t
	 ltBxKkTBLcMOcOzZy60GHqtJo74nqUCOsDtJ+6Vb36RCq55fV+hWi+hizGo24kRBMI
	 P7DTeTHOX1E+z7a7bU+Csqmyd+XumPsroBn5lfnr8LdKu83duzIDQGX2dB1+FJZTT1
	 dnVqITIEVBfP7TRC63PnBmMfz+Az+xagtAlAkjV01qDwooajDRQT5fO+9MYmvWWkRT
	 dcKxdQu3cnTPu8weQPIxRTmC29ZffX9bxo6zwqIk9zbAlrC+0KIpcGB+Rh2G1VEp8I
	 QHvv8CNbEgR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1747CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863583369.12853.5198791541909827207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75bf78a8e607cb036223aeef308a062761f96285aa6de5088a99972f59cf82a
Date: Wed, 13 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778635833
