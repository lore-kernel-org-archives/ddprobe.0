Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E5F1FC3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 03:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743392396; cv=none; b=uIesFUV1ut3k5yHoQ5leym15Xw04KzSvqWGutRsR9db1RvXzWwkpH7n9tF/rcvCV/qJSivhB1XOfeDkbuCv8sVEuscpvC2P3mtiiUVufSvmh/6ingZyeczetadmuXY7u7P8jPfngYVJzL+LdSvDNFdPWiZdNqxz6MWn3FNKpyS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743392396; c=relaxed/simple;
	bh=0IubTWYur+yzBX7d3Am7FliPIYI10HxbWwmPYWw990Y=;
	h=To:Subject:From:Message-Id:Date; b=XOpOh1SU88C52lHblCyiMSu0WVaHwe4tQDCRbSme4TbHisxaLe5I8EEerFiCKbrOHCutts1qNJwSxEyYA2OmAExgrMwizv75kERMfO5NXof+G3bi7QE/Lx+oB7288Mkj4WONRfD7NoF844Zxn1FSdaxdeMfzdd3h/rA7vLk0048=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOPz+jLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOPz+jLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F0DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743392394;
	bh=0IubTWYur+yzBX7d3Am7FliPIYI10HxbWwmPYWw990Y=;
	h=To:Subject:From:Date:From;
	b=lOPz+jLQ3A6+pL8+mekHdPDQoeHYcRxiqNBYSjPdlh6O/NiBVKAoXLgjfE7ieY/v+
	 MYKlu58/a1UZHJaquD6mbFyVKllPU3y6KqqMBpxwthscTzJAUp+IqcCDB92WGybLuL
	 GcLEYbIvZqP9w9bw0cKU2wjCSfCOAcA235WYq9Frma74gGe6embKeFfN3LLzliVOE0
	 zQypfeU2iUqZh2wSghUHFoIgzmbDDqd23E1iXFoSeUvwcZmEpU+8d8unh0Eid2W1Tr
	 a0CESzBsM4dLaEi3mWdfuE0slUbuUeMeotFq17jEzw1HkLRDMr9i+6rpOIBF6koP0G
	 S06LLjQpCEVsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42D4C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174339239365.11048.5959727438103440260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0576d8a5a76c27bfcf02fefdda70d7b04cf8cd9745c221fd0ee4fe5a8c496e56
Date: Mon, 31 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743392393
