Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8DBF9EC
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733933754; cv=none; b=Q+XBsyOx3gi1yqz0Ib/5Uu/IyzEs3iRoyOZFVmkWJvcfZt0gRfSUNLvCBAZ1cQYG7JEAHE4i0Ul/SnsO1H77jgW00ikkObnEakWhUADw4bSe5565ncEsz1HaWu0dJ4XDTP0IIuacJdjHwj2gi7Swb+qm3cnN53y3g964sCRvD7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733933754; c=relaxed/simple;
	bh=5mFIuY5rvF5RxEmwo3yYwCXBPXorlbtM4T/CWWC8j8I=;
	h=To:Subject:From:Message-Id:Date; b=q1oEhGwP7mc+8Ksb1yzdRB/XD9ZM2BGbLoIbi/usFsi98X9aGy4fDj6vIj3J5UYxC+O+s+aB++64ebcLRPSO2qeqULmj1+jCqtpUSg3vp9lZlKPFAUmtVnfCR6BboIQ7ciM3QPE1aPeVxIblQ0Piqk3lbOWcMcq79rJpNCTCV2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpPdvTNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpPdvTNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E66C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733933753;
	bh=5mFIuY5rvF5RxEmwo3yYwCXBPXorlbtM4T/CWWC8j8I=;
	h=To:Subject:From:Date:From;
	b=HpPdvTNCtUo35Iqh+NCq2Vp83YKhFe9SuYHEtTcGzkFOtZXGoPOyKZZZtranE9t4b
	 k8WqTEcVdoh3TY7NG7Crggq5s2XRqV+4i0lYAa7u39nssfUB/oA9/7Dq8ybMzUK1Vx
	 Dsu4kld6xQMYZO/PCphwp9OghIXJWqrQCkt9HbXdfG71eRydG91l11h12zyCCkoHbt
	 i0cEZU3XtACDXOnKjLsf15qnyg2mnL/o60uOphNA6XRBDGUv1N8ObAOqVOSrLk3sUg
	 SrkEuBh9fY7qxlqFxL9kt+001d2BghvSNDfz3hqnRCmLuWZr2UNBWg8CaMwMWRKIHH
	 7M6JMPYgXWCIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9ACE7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173393375364.13543.7117987737847372315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1a34ed359d2b00d0dc81ac8060862b0a073a4e42c8c8b298adf8ac1224d0f2
Date: Wed, 11 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733933753
