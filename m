Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8822E40A
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744025995; cv=none; b=O1AVqGjXPJXOX2ek5JZtcwPTp9p3v29KmgQ238Fi05kaAyKnCr8eEVueX3K4e43Eae8WgVTOOAzY/M2ylfmpJdRjOq1VfA1wYoQScptXOEjIBp3T6BavE7j/zb6alHTUqjBQRwmF66CG4dIP9FCzYGxe0D1LNXkLvzGz8Jkg2f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744025995; c=relaxed/simple;
	bh=1u6HJLNpZ7tA5qMjT1xPMkvvSA8uz+fz9QSHaTCwok8=;
	h=To:Subject:From:Message-Id:Date; b=IeOPU5P5mrjgaRznnvjVfgZiOvKMOhjk6goPaWHpOsHkb3L/FayPRVP6nccfY3qCSiKcRJJRsB+SbbuDIqfQlwGvRs23fHHgV72aGa6RWk4O1XkcB4GuUFO5gIzxAgNPuYv77AoU3NnupBPy2bYHwNQZXd1b9GkJ8e77Jb512dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbYDCgsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbYDCgsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB87C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744025993;
	bh=1u6HJLNpZ7tA5qMjT1xPMkvvSA8uz+fz9QSHaTCwok8=;
	h=To:Subject:From:Date:From;
	b=LbYDCgsS0JVW2GrFNu8Pff0g82X9vb60Tjq5le7jzZDGR+MTbqmHclwAvR/o9JTlX
	 G91wucXuYsdg5a8ZHC37NBLxlsXwLiAPZAtz8/fefKb5wM+HHnfwBTzpa6s7TSX7X2
	 WlzGKEVDmP7G8SvlOC/ynsvSxtvZLRsRYF+v4SSITuqFTSf2jEdHmmbNSJnFiK7btl
	 ulUc7wOTGK3srF/L7fO1lwF8Hd8Sp6UGR2XffJBDs1cxsFjXf9dQFQCNkMpwZF/t4m
	 vv9mHyl6NCzrAQGAK/a4ibUprD+pKPb7FsrI7vUZZhJFCyxTgQ2w+YZ6iCDGhxpj2Q
	 p0nCG4BmnBX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99590C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402599362.26939.10434320806719750441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f76e0841106426f8d3426b9755c86b3d0b3f91e938d7844b9825f8d4fc2546d1
Date: Mon, 07 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744025993
