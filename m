Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341A8242D88
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753545594; cv=none; b=PqL/G5Z9FbizuwIuCrFLCVl9mrOsUHGQ4NqukoEb9uyri+Y5a79c706D/2W2Njh/uIkKuxddQczuSIv7h/mCdA6acw0ENdcd3jpd7TjR1/v8sf2yiaJDZBCek6Z34GXpSGn0lSpy7XAeoKgdlQvqCzvJm+RMrIkbXNbVQ/da4IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753545594; c=relaxed/simple;
	bh=65udXpYxNYFdBOv1FP/PRtNm0QUUhMTYs/NI4+fMRco=;
	h=To:Subject:From:Message-Id:Date; b=XWo/pxxDTbzBYeIKYnc12YoF25R2FUw5ZSUzeOV+UYBZMVrUxdCGFghgFEzgxsGD1/OCvlaHDIrPLWFYG+cxgEbQG+iZy/52RKSgquSKMl+kq/Xtnpm7VsiNs5F/02aQMCGJXS2iJBH869jGWm/RYPdzO4caQSmyqP+Qlx+yRKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVbGQOl6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVbGQOl6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7920C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753545593;
	bh=65udXpYxNYFdBOv1FP/PRtNm0QUUhMTYs/NI4+fMRco=;
	h=To:Subject:From:Date:From;
	b=dVbGQOl6GsceWrZkbafbIe7j1ogrDLv6eQ6zveZclAGO2pf+BcPNN2aPrQcNaEDhb
	 ifDxKUtcGCZaWTHPVz6CF5tEylJgpgd79dW5gri8U9OYsJYKx5S/DW6oS+15Hs8RW1
	 Gz90z+04OOTf0dqgSY6YW5KlT5xaxWErA25J05FF5lKm+Kt5UYnJ1QlIXPF0yX1Q5L
	 6RFLuISOAIoVVKYQR3pMwiEZA3bX1ZSkvF2Py5u006RABCQ46c7e9Z+2bmKdEMyv2D
	 zb3aLJlWDrFxe8En8BEojGmQuwiA6YzX4Fpj+fapl+br2mLbONmhZoO5561bQKfNvn
	 9wpmmHSICHn0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AD8C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175354559358.11378.17231946482576818833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9ed2759c0107d25d6371fcbaf2d5091fb9fdfbc82cd97051f89190e3ad3374
Date: Sat, 26 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753545593
