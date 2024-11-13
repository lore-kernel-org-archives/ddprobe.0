Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245611F8913
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731491754; cv=none; b=VhwhokURdydXTvIGFEu0b85agzg/fiNCUuzup9Mg00J/o7S6jQ7YWgokxga30n3LYMrkkeF/HOjx3yPll9V0XxfnmtP7VNAY+uSrMzOwx5TzCs/7g+MgSOtX5AGnfgNBKdN/GSMGYse7umO9tHiJoMakgqnTYuXYblqH+Tc1olM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731491754; c=relaxed/simple;
	bh=uvENnhIHUdBG5UkBUUT/NgN+2w03abIq31NY7T+2NN0=;
	h=To:Subject:From:Message-Id:Date; b=qFYA73g8HoqZxR75ocOkixxTz0pgb42h0q6wHnt3k/se4w+1LciQxGa6IV2NvnLOEfE1LufWW5l0qvzVflF/eAMBWEUa8edgt9CH4/VxVGeiFm9qh+gJDfyUPZOFGdzc2oXXlmDG5dfHqCRqSSM0D9j7FOSNtlX3e7yhNRTwkZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpYfurwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpYfurwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4095C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731491753;
	bh=uvENnhIHUdBG5UkBUUT/NgN+2w03abIq31NY7T+2NN0=;
	h=To:Subject:From:Date:From;
	b=GpYfurwMuAfcdK5w7aNdNj5qFo3imJxsFsf+4OrEBlUKH2FVobTgODwALAMezKX3v
	 L03xxbLtsrB3ohb9YKeVUHNQxSICHLXUuD/6TjWmjoN5DJAB84y4qL7G/6BmkB2f2V
	 iKP7JMFXPS9Gr0zwmDTKSJvgTHLnJB8XRCtYvI31XRKkU7TR6RSCZ6AB3rQ24V9YI4
	 E1T2Ug9JJMXakn+6syC+eSy9jc3OwY/kh94khB5bCKGQE9IMAfLGYiblMAfLH//WMC
	 l+Vc7ZOpj7seCpUiNng9pUMhvHSRy8/hvWnFxFbJHKYUlR2bQW1yZw42E89kxZ0xPv
	 jAtUkAmUwet4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940CCD41C2C
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173149175359.26868.5114389975635556441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dcac6a72c841a9465d4ada043aa80df430a053f9389b1673d68fc625c485299
Date: Wed, 13 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731491753
