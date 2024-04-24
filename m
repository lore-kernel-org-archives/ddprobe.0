Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AAA142E62
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713957623; cv=none; b=PRLn05zrvEZE/kHRnkJ+XuDFlWnLx8kjyN8Oat2YEgO/P14H6aaZ9wABILs3/lFoIRslGVxSkxFYu4wS4RxhCtRfpzir59CValJL9ga4OgfH7zRZF2zA5jHj7VvROA9bGv8Zpx/WycWO3+oDxi07BcEp1CQCkswKP/wzkdMPWN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713957623; c=relaxed/simple;
	bh=/9zMJOOb6AieJ5xj6m6QeXi+dKU7QXfu2TNoJd5MiBo=;
	h=To:Subject:From:Message-Id:Date; b=hOWsGPpZp4moplPUcPoV1usZOdWh2RAOO7z9o5GjVI+QV9TOz/t7E+OdnAJS1qr+XdXR26a/H/sL7Ex2SB9dYChqlfCPJ3qAodVzYzRfP27jhZZkv5QWwk4s9txTeIs4VD3Lx82J8a36Pzr/NM2QsExXdT3HJ+3N27NQlZwjdw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTQtRRh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTQtRRh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9468C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713957622;
	bh=/9zMJOOb6AieJ5xj6m6QeXi+dKU7QXfu2TNoJd5MiBo=;
	h=To:Subject:From:Date:From;
	b=VTQtRRh50TppiyUib8+7yksHdMy2M4HCgpLA3QUuCpuiU4fhCN2ymgCvA86qGsHW6
	 dffJDQMfc8uVVBE7XgcTmWyV9db8Y/XOKPf5IrBKrcsh6SgVeogPlZR5e6NaMHD4Me
	 3CFndnabEe8FRjQfsjB/iWvFoeUZLZjug4Px2UOPTKAsI0D8Mk4v0m14iT1qp9eKrx
	 NcSR/0DTvsGLin+6mAbdCg5ycnw+jtD9RVHSOX7IB042XDV3geRg6mGJYPrgYBciOk
	 fDV+VW25T5mB05edUt3zAA1muT0yQ9cjdib1l3dirOmfmxDQCY+FYpibFGIv9kzVTE
	 hSNeedcPqkY1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D352DC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 11:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171395762285.14905.10950109544917770375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb7f95f2838d85b85d8bc15714a1f270250c129727c2df7d757e379f8eae8fd
Date: Wed, 24 Apr 2024 11:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713957622
