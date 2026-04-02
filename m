Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DDD1B4F1F
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775109334; cv=none; b=hlgVPO40s9U8HPjpwAbsLvRMZ9aonr+hkBNyeTmdaoHLSqhhHEBvudaYsTvEgHNJX6mHaxvImSG4se2RL/gtXPvORptxBd07qZAgZgGUkTBVqFuUra5CloD1gByyjbecNWrLJ/aZGXRGRKDjOrpCw0EvTObor5oamChV03xX+/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775109334; c=relaxed/simple;
	bh=G6ao8/c3EsF3JKv2oKXlzB6fVfDzNiPQk1xtLhk/+k8=;
	h=To:Subject:From:Message-Id:Date; b=KPPxx/UmPe2GUZX8n6CJFhdJTswtQU/c02etQ6ylXpgSxIksG+kamm2vULg6GRmBWUxAdLtx5gaO2hzP2FVSjP26AaWCWC3ZYGhZvNnd5fs71bsPD7iVDLiPv/DSa62GmdlvviDxaRsqmIBbHTORGzUblYZA1zxrNDFk0DLe2nE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX6ZnAxx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX6ZnAxx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8A6C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775109333;
	bh=G6ao8/c3EsF3JKv2oKXlzB6fVfDzNiPQk1xtLhk/+k8=;
	h=To:Subject:From:Date:From;
	b=MX6ZnAxxxQZC7YKaDXZBPUkx796iUPzEuPG7GKL2KaWYSukKsmxdHAY381pZH8oa4
	 kBkcVn5UZhcSJ/jB+Gf6gUN5cAYU+OhNpwq9MW4I2cqfE6WlYQJZjP45ZzMmvY4QBa
	 o38vqiDG609bjVHtqQ8qEDliFw7c3DwAMlatMrTdbGIdvuLUnUE/sf9237H8TN9akD
	 nlAD5l/F+bvZpx+y6l38A3wS8L3Cb3Pq9a7lpGDw6XiSwqP4MD72N7QiLVFucn765r
	 Jb4mHOBJLDl5yZPDWfgcv1etBolASfPu6joONlUNRARlyAvVqyD8tlRzEKMOFfRbRe
	 9yxJt13jzHoZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBC1CC6B03
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510933375.22861.11031422082137893229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a1b36c7579f62f45d1dd0de59a38e95806d047493bf26e95df6cf1213ea3d9
Date: Thu, 02 Apr 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775109333
