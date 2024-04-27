Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A35910A0E
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714232543; cv=none; b=Qh1xClfLNaZsGwpWqUa+Rzc1k3lr14GqlO5/fcK4cqYQZx2DYUfGHaTzbj94cDAnsyTPoYUv9Uw6t0SmFjjdxV+fjoWJg4qEMY/7JLlzhxOo8GyfhS+5lCoi6i4B+BIKO4+YRP0SAYcscD+gGo9Ijpo97FAFousE10rne3jkaD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714232543; c=relaxed/simple;
	bh=qY9zeolc5d74DN5oe2g4QDniu1gD3/hUlyN4y5/l0L8=;
	h=To:Subject:From:Message-Id:Date; b=tlY3/jYNNqICInQwaVK8/ntLLpfp0ptxjXiGTp7o8EXSLecTo9EgzLd+7YKLg4Sf2M8DCSFGK/JrB/23R1gPJG3ulZBvagjPBb/zJ9t0qMXATA10Vu93jfpWu7LeIgj9CG+C13hB902iama6NBl4KsrYZxLMshkJXGh9Uu41ALs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEkYFBvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEkYFBvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E98F3C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714232542;
	bh=qY9zeolc5d74DN5oe2g4QDniu1gD3/hUlyN4y5/l0L8=;
	h=To:Subject:From:Date:From;
	b=tEkYFBvfkKNzgSybSFfQgyPj9TkLgOso9KCAHlJmqq99ot+vgp75CJFMOZVnlLHuy
	 NWkeGXZEy1GsWdt1mQYj3sxLvYeE1QGH6I7Kke18Kay5YGg0ufU7d8hcK883w9yuf9
	 KUE8O4JYsQv+bebfjX5c8ulYgnazEcA5yXTcNjYiEnSiEYRuuXqOwAauQrsBihmv7u
	 rR1KGOh3XvndydW63v+GlE6q/35T5yKKSCyIWU/6YaoZC4MbDkRUW7Xy/KTPO30svK
	 i0ky0wbqEgjm8J0x1yrRlgsfj/MtDkoDCiGv8TmaSTIs1lic+mgXCftzhf9bNm1kB3
	 flADHzwoCiMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D699EC4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423254282.11555.10760996798254527540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cb34cf6c934164951bb97a11986051069988e86d40faca37d9d57d458fd530f
Date: Sat, 27 Apr 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714232542
