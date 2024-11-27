Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E51218858E
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732709754; cv=none; b=LkIwVO3D3NaCc05TWYJmpivZizrNVMFeHrDBRBAr1xCfTkn3tn3hSop40IYhjoqlAGP7+bUqTvw0r6aKnGBPDk1io6E+Fqll20WpI8OcRooF14b2Ko+Cq7qw/Ubc2JH8sJ0MlYXRTDQcw0dBDntrVdZ4XyED7Q8+yCSr5X3/jZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732709754; c=relaxed/simple;
	bh=KzySi9KNqUWl6yTVFNkDDfMNaTxXUcDue1dGxjEBKe4=;
	h=To:Subject:From:Message-Id:Date; b=p3sz7jCCM8pwIk2osMh3701t5htJEnk0nD6xqh33PMYA4z8XXgmdHMrmdX3pta/u7qHMVeFmi37sOgT05441anC8c7yd9JkI/iHeAxRVXA8Isw3XR+AatKFVGYM4i3G6YwZNeHS2yW4X3mwO67IhuYOSO06ZDzrItHppR/fAMx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jk2YZXew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jk2YZXew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89B0C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732709753;
	bh=KzySi9KNqUWl6yTVFNkDDfMNaTxXUcDue1dGxjEBKe4=;
	h=To:Subject:From:Date:From;
	b=jk2YZXew3StQhm2r/iCdhvVrjeOFGbb4aiycopn7prE69ME2+bQEScvwzHMcfIREX
	 i5M2fgR0Wb4sHcgmomp1F2qLLb2VpWbQ+gQVpzMW8KOCza8qyflhldWji8+jIaNJgd
	 HeywtafbNZZpuzNRkARgEoNxdWlF9PQE2skkhzxOtN3ETnxGSAzG7tFiHUtl88elzG
	 kDpygZi5Qykgap6dtMm9FdnIfpS4k4l0QVSL1kpxTDWEdPOT/yBimKN3Ihe9vLN5SR
	 O8oZCPRJntYpt6zuJ4zcEYKlb78OX7jKV5xvGB1k+xU2f3x2ZQc+FF2LPTlKbYPITd
	 eCEN9tWKSi+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B0D6ACC3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270975358.7231.7604285020841975772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d2db278d72a7b42c179f4d8b6dcc2b1cd7b5bdf8fa6b0c9ecd9374fbffe4d1
Date: Wed, 27 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732709753
