Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987211F936
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781066734; cv=none; b=pU/T7G8uUJ/SKSQewIhZalhvC0XYNsB5JkJfCdyjQ8bKrEkGSYjFOAoL/hj3Q11KyVhVZ2Vs8wWliD/dH01fOvLNYZz+CYnaOA2nZxcebbTCQc77RfG5ZcEb5Mc/oqe6G66ONPfNzWh0RCPApSpYSO5/9DXQ4g3x9MXzQKBx+W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781066734; c=relaxed/simple;
	bh=j7GSFAiBRdzz5cIZbDQY7aK2xOUPAoDX9R3y6Ncdt1Y=;
	h=To:Subject:From:Message-Id:Date; b=UYwhTyRa7hoQpOWzWv+I/UzbLwWfDgazNcITNZdIPSDHbT71knsKMUZNOv8RCRmjHt5oiw5ATrPYQWrVVXfjV3jKC+PRmvCN0W+Auvjchdtm0h06f3pSnwCx0zaReN2nt8vpibsRI0lYEkyRM0RU/yvqBSWu6jTBrZvdLkyeUlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhdQ0Rc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhdQ0Rc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9754C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781066733;
	bh=j7GSFAiBRdzz5cIZbDQY7aK2xOUPAoDX9R3y6Ncdt1Y=;
	h=To:Subject:From:Date:From;
	b=NhdQ0Rc+12FjjoC04bA/S/GrKGEV/z302A2q1vqozAeGl3vng4XWduvEFLfdqQUWS
	 4mHb/ZJB/8M1HSxJrFipjgbSwFZ9rsZzwF2gTHDlG4xTOZMP8a+0ONiERXEIwnAysn
	 Xc54xDn1jSDu+7y0okw5wEzPYpd97brG/Nk9cc6uZk0aSXk7aHNhjRjtE5LUqQSDwx
	 Ol48cwN9mbgqe4Rp7p2Df74zi0Ir4/BJY95BbSVfWg8ZoPCZKD+WjhsKy4xX3+Wrxv
	 noReOZH03Jfjj/7AIlbKosoGySzIQRlSJ5EryutHjunk+ttG8wgBU8nR+iZcqT3HN5
	 EF09bIZsLlerA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22C5CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106673370.1936.12496404669263656340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edf829ed81d29921681606471a86739c9096ef4ce27d2ef0b5f07654348ec1b
Date: Wed, 10 Jun 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781066733
