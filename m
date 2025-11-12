Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439772BCF6C
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762965594; cv=none; b=h2fGWpZxRk5QK3bE/BA9r+yePIrkHWnY04vZB3Y6YGhxm+nnb7JstIpS4aGx5T71TmwbgYm0nG5gliSWjai+NoeJ8ywRqgcQLWXy8+CVecZ8tRqkOLY87/DQqnTHB4RNU4pKxSyxgXEZxv6H2uwhp3AnB2D4YNyCpeRONziimn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762965594; c=relaxed/simple;
	bh=ap5UADSfDlVnLfQDaKH807mfni2u/l7kRB8mdwavsrA=;
	h=To:Subject:From:Message-Id:Date; b=Mz4/VNd3OJapgv/+HVaQT8eW/3wjBaG7hKXhXiLKhjyCWP6XLOP7vFmj2Ug2R3M2BKa/J+4ghu6v5UhcLVBKe+Ee6ZJjGGo75KDY9SoNhlu3Wxd6Lx4DXvXd3ssHJzJZBTxjKPqsk+anTxq3pPQ0PXlR2ecd63fo2eBG27K3l+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HT7RfG7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HT7RfG7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06E5C19422
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762965593;
	bh=ap5UADSfDlVnLfQDaKH807mfni2u/l7kRB8mdwavsrA=;
	h=To:Subject:From:Date:From;
	b=HT7RfG7oeIjQo+6JX04ZFmGz+bA1/5cfGiU5I4f26l04BwHqEbJ/Dcivp50fcQ02b
	 pa9E08yHMZ7r3O7x+DwY1tSGxxbzomaqbO1JMpQFPHhgaTuLv+RysHEDpqJFydwY42
	 KBNin9gncNhQiFTvYlPX0nL622n1YLcxAgxatFpL4Ov7ML5r3UCmTi9bsx50ee9Arg
	 6SRoMiWbTKzKwt9CDrY5WU72qLDjJ7CFyeybz8oii0eT2vhVZZRAEg/SUlttloG9l4
	 HIXw2O+wWWI0uNrp8AkJIOL0w39XaUxzmO69rIaDc1i5tnQh8q3SYcYDUUwxYbESvT
	 KV1uGBr55t6DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4E83CD3428
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296559366.3467.6223510425807665453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580efd42755a1004d8ed643c36bfed312bfe9422d640633d6418d7329f7d7e4d
Date: Wed, 12 Nov 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762965593
