Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE5F1849
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714109543; cv=none; b=HsS+SqCFSX6SGuYHC1diSmQaWo51S35dy7JbrHyf4ubq2Pv15zQEDGg0wb1Ug+WcsYp/XloweCh4Jq7lVxXPDOAClccsA0NekrKrMxxuNVLiwuXFt/ERaoOCaLGIgS1SvuCGmYfeDsSgILIfEtbCDbBmw9ZKqHMMMTqZRHMVm/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714109543; c=relaxed/simple;
	bh=GVizvxihWJNq8W9etIDZZtTX+ZfwxNIeVd3QvJU9TRM=;
	h=To:Subject:From:Message-Id:Date; b=tO63jumAYj+wcAXruSZT9Oc4mBjJ5mVaBItjc9bLRLJmzc5zs+kS+yc+GhGp9+senQrHeHJs9mqX6sYilxUIJKiNtqxXNX5Gh4YYKG99fVk5vkt/qw32ithaZ6PgaDpOC6AMpXLq4Jo9bl7+3BBazvFPYYJGrP/gxRYA1wsaKsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2bEGzOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2bEGzOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEDBC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714109542;
	bh=GVizvxihWJNq8W9etIDZZtTX+ZfwxNIeVd3QvJU9TRM=;
	h=To:Subject:From:Date:From;
	b=O2bEGzObRJf8ghfzuta5PE2vKjWTz8LbgQke0Ez07LHhjbGencXk2dWSXtd7ip2CJ
	 DXfYMJJQIV//NpBEwTkfCpM8Msa8/VOKGiP4zCUIyeJU3TkdHg4Q+UF8OPVqQftI+h
	 UD2mJh8beyIE2/xyic9pjyrPV43S4akcvcsQ7dGohTFjBPEg8fB6WtT89FaJZhNVoo
	 BL7DfpM4OW2cUBdMmF7egeQwA1e7rstoUQS4P8F5MOnoodb6J1DDmf3mAQf2SZvk1V
	 /7xte5VGljCUCdwHFXAFLn7enM7FMMG/ySAy0v/H2HEG7EGkTQxqBFniANvtyQgfSc
	 bnUk0kWnELq4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A00C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171410954278.26697.13847830887053233826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d11efd974c24b626e45c567c59af32294eb8ba60604b7455f5d7a19ccb51319d
Date: Fri, 26 Apr 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714109542
