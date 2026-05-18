Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD8348A2CA
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779112834; cv=none; b=Htm8lVJExkb29hRI0NvkeSkDBSfYBJ/5ZPrkJlI8QTvgCewR8pzQf+j18EfIZt6xzZwbHvSwuVBGhCBYhq1o8ghrABDIiYB4JI4GSTfwDcNd2R7R/7KDwEQ7TrT7mYIlc4RjfaLBQ3irNtuQXQAb9pK3HkeHpZ9kBBGjaclRmno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779112834; c=relaxed/simple;
	bh=MBrhfjiBADKdscZ+eR9YUukAcN5EucyhK2mgsuF6A/I=;
	h=To:Subject:From:Message-Id:Date; b=F/hswQ8DHHDUf4m042gb3cH4cMGFdGTU86nsgnrxxqCNx/8UYNCbem2qL+33hur4jEMUvMNt9cHLcplMJggKm2zx9oeLG/dq2fSL37mPwmF/Ob1tWvGjdttUVCYPeGpWME2G6rHLiztq03EEboikzWmTs9lV1yIdnmGo0a84YLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz1Qdojb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz1Qdojb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ECAC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779112833;
	bh=MBrhfjiBADKdscZ+eR9YUukAcN5EucyhK2mgsuF6A/I=;
	h=To:Subject:From:Date:From;
	b=Uz1QdojbtTDOHj99NW3cvz0QLiTXjPM11/GIhFJa4LeZIUhu3VrPNFoJFHUYYqZs7
	 V+B6Dv8a6vBireN1NLuj9NaUQvpPUopVhD3W/FkvGL1uHJ0MVGctfuwBGCrE7/JtWq
	 a7/9O79QgYnUredJyHuGZNLOnF1EN4ZjXaEA7kqEciFHpa/XhxrdzXikg84WD9BqJg
	 jKbh6dYwwpcHVgpj+j9n8I4FaiY5xyqyxS/FaC8ZXkOluCHWic0cpIiok1N10xnXYj
	 5E50smRhPGGEtKVp4oMZ3BwH22Q49O0WObt2Zrmx+HnxnLfL2wegkHF1PJqnDXQbAb
	 pc/HWzzdoI5dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B249BCD4F49
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911283371.12956.14001753191226871142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670dd94a697df661101062df5672e02c58f55023fba0d366256dd5f00f8096ed
Date: Mon, 18 May 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779112833
