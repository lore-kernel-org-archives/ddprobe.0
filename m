Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A581BC3F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759570194; cv=none; b=sHbki6Elc2NknJ8cp22+pP3ntt0ijb+9f239bsrYsAwJjqf8YXymtjALWi9M0gLgNjnKNTd9O9qsCtwmyp5fFsnUYw4kLhYIlwSetCwvSiB/aLB0fTdr49dORxmiTM2zbhQJkua3GpH4b9LiYhLwjKyqpVCt+PKDRRJKdlMZ0Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759570194; c=relaxed/simple;
	bh=nw4bLk8ZNQkOOCJXqZ2hXDgT2Oz+zVl0BIizToHrUUo=;
	h=To:Subject:From:Message-Id:Date; b=V7A726wpfhrqY3kaop4uM6Vs0OAW2gLKgk/BJwCvtKxnDTLp2VG+MnhZlPRT874McnR5yJ1VQVCDRWqDoWX+xtwwUF5W0EVj6yq1Yv4tp+wPdfieh+7rmuFBNrAr774Wt+daZBraHBRk1Q+dJWOGurpqmITLcF0t2Wf4/Cq3QIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjdViYsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjdViYsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8EFC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759570193;
	bh=nw4bLk8ZNQkOOCJXqZ2hXDgT2Oz+zVl0BIizToHrUUo=;
	h=To:Subject:From:Date:From;
	b=PjdViYsQkVllBTGTcEJ272mQpyRFVr6WI0Gsggw4IwUSy+uGuO3mhdO5mLx5rYgID
	 zlz0Ij8iSdMb1JFjAkvO2Eq1LIaZqlv5y/bUsO6nfbNpDePJbYCoMswzySscmswWDk
	 QEUQr1ylm5HrtaQBh660gXCdtEAIvRPuJnPLL5vJHmOiuTfi8kC1Eiad3KQu+tm+bc
	 ZO4przpHgwUz1iorJ3hAbPEQfj/TvE/DcZhfWu9VaLxf9NIIMKRd+I0hUmw8s0F0BI
	 pj6cvzEuKKBA/pX/S3A0ZvF1drlBNjz5duyk2M3PW6MjMpmnSXBNLezqDPkUGDlIwl
	 Hfx5VUp31kXRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BACCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175957019358.30476.12433898614292968705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd53b14d149bcb7900097e78509e4c9f6b836421f343ef7bf5f52aa80d3c7791
Date: Sat, 04 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759570193
