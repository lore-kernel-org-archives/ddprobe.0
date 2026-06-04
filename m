Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F2A3B0AE5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780583674; cv=none; b=AOZB4AWd1Z4aC6cfYOF9WGsQB1casd3Xc2Vdu3BwHomdmd1VJ0EBYpdewyqMlvBXYZfzi6cyfWCrv+/Yxk8wJ/JsMZsxGzGoOUucydhkbjYI55VnAeoOs+uMj91rzKSdPBNDg0vwKL8VEUQq8Gwb1s7K4cimaGyQIfztlW9DZAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780583674; c=relaxed/simple;
	bh=JOHHY6TllN8M4Jfy2K5Syh5wmT209G+bwSaKg6nuU88=;
	h=To:Subject:From:Message-Id:Date; b=QKtcosPDRvhsIFhy1NU0JpMjnQQh1pCqwtctHMfQMCWc7HbSJDgAKnaHNuJSUoVJ1GbkWTyKhad+9ILuih1hJ7P4gHI+HhTRJAjgIpfW+PodVQ6vCVwV4xk3ecO3OlZMmORXRQBMcfN602Up5mUMdffAQW2ojiptNJ44Gy+RHME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9c6/FUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9c6/FUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8CA7C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780583673;
	bh=JOHHY6TllN8M4Jfy2K5Syh5wmT209G+bwSaKg6nuU88=;
	h=To:Subject:From:Date:From;
	b=R9c6/FUfs59p2XUYTMaDZl5v9JyLbJe2chWALA8U0hfdYsBz8EXRWzXoBLSk1Zzq0
	 zF/EHR13+F8SbRy7MFx7iNLZN+0Vy5yTupMi/WtfhWsoIlYU5vkt3JLzxzIK+45SsU
	 ba03W20QsJWnTJztepnGPz0vXVMaJ7feg4jxU0OK8dK/OOQvIylB0kYO96Jc0K9Suu
	 di7Xc5SfeXyjJjP4QWf8zxY3zwpd31QXpylVTZ+nM4DU9kR1xAordwlcjkzWomU+MJ
	 EB9fGS5kKDINBXRoLXsHZSeOaHdqUB48h+50jTqbP7rL9HKAHvPnqEF0l2cDPmJRd8
	 QEaNQVjuAIl4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1D3CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058367369.24320.10629921570587492416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e0aa18757ecfbfbb154d5d7836c74c2be4cd71d13f5a72b46d0d883ee5e28f
Date: Thu, 04 Jun 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780583673
