Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2139F2D060B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781887594; cv=none; b=m/NYFtAQYXeCJsLV3qnp063XfPwC0MnjqMZy3DRZRD5ckmewJts9JBqsVKJ43/qmPNsA2+d3wJP71DnyDuuCdyhkL0jjAhVT5lpx8mvY2F4W3j+irIz1IRGxod+bzNoKZt4OkWGGlyBZMT2fITn7Dn6ISIhIcIBVGOFQtrzJRI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781887594; c=relaxed/simple;
	bh=rClUj0yR63mQiVh4yFDST15T9CdWFHopL4cwJr/yjog=;
	h=To:Subject:From:Message-Id:Date; b=qM8takgJB2SPwQBtGLAqgs1hT6i7x2e/DaZihSsfOnZxqEUFmISaBRyu2icejaqns0sVCa3CmIcPU9my/J7WV0hY79FAJ3lfN8tbz9OPa/wSnEH5bmmssiE6eWALrB8BohwQO0oBT00NPY5/QzrVonlhzNvMILO5INC1/Kd1Uds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwZGtwG2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwZGtwG2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7774C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781887593;
	bh=rClUj0yR63mQiVh4yFDST15T9CdWFHopL4cwJr/yjog=;
	h=To:Subject:From:Date:From;
	b=GwZGtwG2HYv7X8G63Var4v5guiNgn5ewIsQhZIoN1SIen2ehhC53I5TBvhHmDn8mF
	 zS3/rHf/WXM8FOKnwy+nperBpyH6JHbkrbnWyvysFV9EhgL7HYlRVR+AwpgGydhjXm
	 dMTzja0DbVDQWgN2SrMkyWmvlh9LmICwC8TL/vMy1NOydAuUHKrsGry6J8EL/WTfZq
	 HcfFuG0FQXfqqH0HyfxuqoywxiRbDCBySthMVB3kH2r/QdUETHPYwlpp5UlclzHaRY
	 FEtJ0wYAihFrz4hWUymRF4vqkvJuEe7U6xrCr0nvw+er8jPuPRb9nxL82CwCFvtkNm
	 4tpcsezw8ZFLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDDECD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188759369.20346.9770227543671590462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c7500c13883957a697fefc0fcac2c53868f25a605d55047fb699c327867a6c
Date: Fri, 19 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781887593
