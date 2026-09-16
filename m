Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0D146EC69
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789590635; cv=none; b=L50vYk7Vne7GWoYmDcH25AKrZBPYV8x9vq4tA7zRyH1q/BfGtdMqYH0hWfqfCM1pDa5tzyy97U3oKLDI+luEfh2UOu/0PNfHa6tjvFPlNKIUWnsTaup9xB/EP5oLqxrG0jaZGgWP9z3FldMH9Om1mjCu3ytMaqq8Zq1avWPBeGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789590635; c=relaxed/simple;
	bh=A5EFmiboVSGcT1lxC6/dnYhL6p1xEWA7l7aOGJ7G3Os=;
	h=To:Subject:From:Message-Id:Date; b=TKB0Mqi90GfpNgGtU6nBqsY6VFNSTZqzg0kL5D72gVdLu46RwQzLl+NiP7G5iIdcAKjFdz9+43FzpumHPu64PrFSKjku0fm+WxnidOx2Rg+QmG/Nm5qwF2f2bU7SAMGyirmzaodswicyPK/cQEcnBORcxici1utojO3OvMljY8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7x6xl47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7x6xl47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D7FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789590633;
	bh=A5EFmiboVSGcT1lxC6/dnYhL6p1xEWA7l7aOGJ7G3Os=;
	h=To:Subject:From:Date:From;
	b=d7x6xl47fsysN/lJ1i4XXvra5ApVsadevGr+aydNDNFcj8C3BD8SHAOqA4jSlHy+T
	 HbBfLHiF8eSgOwkxVl1ygT/dbBq9/Vf/XPXAtffWX58RdHMj0io9K4f3RV+LaEHrVp
	 uVw6dt6v4cHgJ8p81Kv1RY4FddTcCToR6vm0RDB+MliLu7u21k5KJtmSXjuJeO7rCv
	 cfbqrvzPLoqdWML4362EUy7Z02g43n+gEfRGfPDpQbwvNHZT5LybqFjVA3Qcg3LrFK
	 yLsq01m1hPfVFZZ7e6aGMRkDlRbs+kqyLF8QmCP5vHj5ExxZQLrPdTZ+VWdg8eoSsa
	 7pI9+FYozAxYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC51C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178959063369.21001.5219143318998538110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9f356acc4dd9666667fb03b9da072b36983c85b5375ebdeb5196aeb48def3f
Date: Wed, 16 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789590633
