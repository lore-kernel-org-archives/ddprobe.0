Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8B7539A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715215943; cv=none; b=H5D0s0EL6yPSukInniCir72rAdu/KYYZz5iu0opUUITU01L2nJaZMxKmTCijxLk0UlXMdFrLiGfmjq6km6+z701NXzOyb/K50pOeJNNdlbVjiv0RazWHnt2eCI7bAo8zPz7zsDOid+fcii10Vd0B4oXflj0H5kMXwti4HC8AuGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715215943; c=relaxed/simple;
	bh=VMZywG/IHJz892nfpujKn01WD+YS59f7OePndI8vTAo=;
	h=To:Subject:From:Message-Id:Date; b=kZTcZjCa7wzprcTEg06YadyLFVrMh8F2S42zn0zKbHjEM52K6ileG4GioE1QcqqlgQym/Vv7siBR1eWoyyn85jU6p2v7uUS2C9riSI6VNVbkWBV9e81l16GRBrIIzrpggt67Kq+YM/Ov3YOLthU3wN0D/BSgrjvZHIyH+1b9JCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yw4ujjM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yw4ujjM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85F0C113CC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715215942;
	bh=VMZywG/IHJz892nfpujKn01WD+YS59f7OePndI8vTAo=;
	h=To:Subject:From:Date:From;
	b=Yw4ujjM8nk7xQQ5cvH6mBfWNS3FkKSkTL+NJaeLXIpKJCFIUj8iqtWTEcFXRUrzKQ
	 Q1F5hpBY7FvDW4CXAOflmPNRUq7K1xMJsaEMxD04cuXgmgskZjVOUMqjQMORCMMukx
	 be+1U809PAu1IcyzB096ZkA6M4IMgbtgSBLZs5C6ycgftsxL5A+DiwQ7BojJBfmCCs
	 jIH8LnzccB2bnYiqX64pJXhL5lBMsBcgFhJZxZfMbkeDNNW0t/NzKEN0Wk7iqxfa86
	 3ALRmRyrujwtwJx9aiPfL22i95Xc9NIQcNdas43RPJlZXoFqxo096wWU0lXjMS62NN
	 ItjliUuosCTCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DF2C04FFE
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171521594277.31194.10145110179112121690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47625d9acb9c47398400afd1591e7c9e0b50b4ed635f0e52c91fa87b05ef754
Date: Thu, 09 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715215942
