Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D08D38D
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785591034; cv=none; b=r/nw2+irgJ7HM42o1UcA+hZHuqAlnEFZ+AO3xm12RHvOiBnZwEH1tg+6TTJpz1GVh0kpcN5P95s0Qx//A8J2X3J/HMSciDLc7DXHtMWTryIJtRl8sP98VVxLRidceWiKNy/1L/g0Fa2qfzt6qT5XYQoNY4+Lnhs++a/zf+HJ4R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785591034; c=relaxed/simple;
	bh=MKMDaz+PhAiBOTyNxOoYlO3gI1eRKy2toLYlGz9M2wA=;
	h=To:Subject:From:Message-Id:Date; b=RFPpuUFEjWjo2IxWBw+luXd1qy3ppe4ovSfFV5aWtxAynUjgc1SpdLdKRTszGpmmWbR/P4vTt7BnHaBFTORllvXNv1izx+DbunU7UmBc/GtvQtjWb/WzgqEwHQMw71wpyeee9lkDdI+nUBYlRyBP8qOjmhGbQbUcDKp6tYon588=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBe6b3D1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBe6b3D1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F1FC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785591033;
	bh=MKMDaz+PhAiBOTyNxOoYlO3gI1eRKy2toLYlGz9M2wA=;
	h=To:Subject:From:Date:From;
	b=hBe6b3D16svSbJ3LcKkymFzEpOeesaLXhU/o4qaGE7OAyLEobWeUloiGmYkNkZqjA
	 aCibUlbpr2ZXwfM0z1lWO39ZaSLwAQFqDtqIW9cb4UTGQUCW7YTsqx80vi9OOMLjob
	 9BiKrxj3Kc9iYaq0O2nwbU5kvDKPj3L7fSLhLe7TkLjnC7ODb8B88b1tz9ISdPfY22
	 dqNM0kPn4++Fkatq0hTDF5+l6SwG8rebS3yROEbkMvy0d2sR0lDBeNQ20OAcuYMADR
	 qA4hAAyBSatZHHA8kmWpedYu3fztG36sLcoZUC6yxnNwyvheGkbYv37QMAFOuEDqEc
	 O7+a9b1xdYWZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB7AC55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559103368.12364.8558294829108167008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c3a3302b242d724cfe8db850be8385e86f2c1f15792003a73284ac53b9875b
Date: Sat, 01 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785591033
