Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757B1805A
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748007594; cv=none; b=l30X4xsXM0X2wE98dobdT14XSrH5enFdXOUmds/EwExxl5PacXT16U2SqCsrcU83Z+xs5erF5ZK4c1rLwicX8wMGecw3wdVKxfbjbjCmbIrSabkRhUuOtSK+6rwdU+FOL8s5auFf6NWglv3o8b+9A0tcyM2nfLBUhagw6FFwQfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748007594; c=relaxed/simple;
	bh=UR8p0/Yyv1tFM1gPhNEb8sk7DTYGQcTkex6dshbeBWE=;
	h=To:Subject:From:Message-Id:Date; b=EsjVwUBVG2P9u0ZcNuB0HF84H4ry7MgIhSuEPqnuaIspFNsy4FOMs5tFdEhQrzzaVIqrwJZr/xTMc2kWkRyXj7Y+KjISc0QsEahAaXO0hnWsI1XLbNQ9aquPGeQnZcsEoSaoNQrjPwmJ+HcBeZkk9jSRKIxjP87XCd69+PZbsBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ua7+9MUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ua7+9MUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD29C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748007593;
	bh=UR8p0/Yyv1tFM1gPhNEb8sk7DTYGQcTkex6dshbeBWE=;
	h=To:Subject:From:Date:From;
	b=ua7+9MUOwqsqUVK2HLsWme8SrJqZYNTEVcp4Rezwt/oecogNMUKS+keeatKWl7CPz
	 dSJ/HDp5yvxgkZAscbg91sIwuWxCuuOpUPX36hzOMTZDRV/xDtBHAc5IGwnlAPyLlj
	 bPl7IaXxFV7gi/p9iWOC9ZS4sNOY8K6CCOHhi/W+utCSqIYzY0TvAoZORGcrZw+AHW
	 1A59tB8Zu5UO/81DTBsxbjwPLtsAk+JdMs2QGPHujd4j+RysZ5ArY76NCjNTqJo7Vj
	 2MQcb3IBbzecxdnyrD/awc3nvEceNx96/iT7TGFGdJmB8xK7NPPdVxr4dCFK/onCWc
	 aPFZN48gZQ0Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD97C54F2E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800759358.402.14579440014727888317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5caa98357bf1ade615be92f8d95f37e2c71376f0e8b604623b19fafff01eb2cb
Date: Fri, 23 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748007593
