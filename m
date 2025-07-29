Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2681B46B8
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753828195; cv=none; b=XtB6Bj6oJP0CBJC+dQgks/3nis5Eplj+zQ8WaZMhkjT3Y9bczb7vx3Yyh7uqJnObrg6hzQUcGb9ZiJrBj79juSgh0t5kKzOUtgrfsckjZ84z2UXAT39qKtExzgGAbNyRsGoX2qjr/uzJ76St6kK9GxDkJi1Yh96LXBUe0FliMSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753828195; c=relaxed/simple;
	bh=MZKeH11siLOrstrqV0Psnx1JptcJL8qEXYli1k09bAI=;
	h=To:Subject:From:Message-Id:Date; b=DqMSb6EYE5xF8zk4jNIPzUcUWNntuxYa6eSHALkYDZEmXmtMxRGySRzf31mpUF5iB0OhlWXmX3vjswe1bwn3EGWYYC8jClQ/2Tq5+J0DqXj7rKsP+dRrECQ/DMGPHBUqz7EbNGjtlHBZ6ETjgA9ZE0KrrJhfiiPcjnUXc+4SE+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL3PzLzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL3PzLzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF74C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753828193;
	bh=MZKeH11siLOrstrqV0Psnx1JptcJL8qEXYli1k09bAI=;
	h=To:Subject:From:Date:From;
	b=LL3PzLzgeCnZapbhDgf7HZP0kmyTL/bqb7i6oTIlvuhIHxk2IVl4OgXjo4t3AenQy
	 PuUDndEmppQiz1eSWo6wiLFStxW3qf7jaC+yoMhW1Cdjg/SFS1DNDZIZpF35w4iN8m
	 ZntFrcFYGd6HNs2pZk/V1V5PL+YbjNMoqgfCDiLYwi6hG1JppZbhG5vaPjn69dHpgx
	 OQmIPGr/9mGpqJWXRrLGhmpU+Fb5sc313TK9g9mKF3SrVakHrTziJFYYLGkl/oCC2H
	 sHCN3bouIwryDUgZvd+WsevJtIKyUdTEubsuNdQ37ZCMDFdar0s96f5JWdFhEiRSYO
	 MRAgKVZ86E2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D166C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382819360.11407.9478587804735283884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2319e3204e0a52c0ded4d2d9d5722b7d5d895257fcf420d2af722a4347aeb14c
Date: Tue, 29 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753828193
