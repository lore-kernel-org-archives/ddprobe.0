Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1918B2AD2C
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729486554; cv=none; b=J0HrYE4lNEfqnj68W3TUcp3CeitjZVZzvFROoPm3IurTZSRxK3EtCXcU1qc9f5SwI0tBQyHF6Qared0QBcNW74fEEdbUJMt9tQmrIuWlSLpwI/VO+YsN1Z5TvDrGG5A9JGga1NUsInj6UCst3lUx9WYjvd6nKxVsi+32BG8NM5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729486554; c=relaxed/simple;
	bh=yQ5yDL74OEjfaQzjOkM7lCDg/wrbYa68j/LNC1ILOVI=;
	h=To:Subject:From:Message-Id:Date; b=p2cW/plyxIY1ZL8wVRb66IrE24T9TSLqd9WQjHCJzZFVxpV5ZceVC/h002BGzMgND0AhcdHNca09mJPdjgKTiUYSEwqxq4bTw48szNDf7q6h63DjEVyaYfPKAlno/eEzkjDgNgrwOFrwlmWY+qCUJU7Y4JIy01Gj/AY1sqsrSs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUkJfwlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUkJfwlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC68BC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729486553;
	bh=yQ5yDL74OEjfaQzjOkM7lCDg/wrbYa68j/LNC1ILOVI=;
	h=To:Subject:From:Date:From;
	b=CUkJfwlOyaG/PZFEM8YcDtKIVSnuhZ6SPcZee1FddasnFVDis1D4mxLM5Lx34eewg
	 zKkQXIOSdsDxtnOraNRYZSI8IQEhS2ZJVPnvsvWsgbr5RdjTfpicmMgwJ9fy0LPTEx
	 zEE46l9q2JGvWaTNUJ9SnZPEs0tL7WvQyWIzOOki973QtQ7Qvv5eUgHoKECJPD2ayS
	 hUjsHHBjiVWpEMkAYJ1+HwnYN9yASegecTQ9Lpr88WtWejT9tWpQ4NvAPqGwd2wplW
	 JTu3OcT3r7ZGsjx2vU9jOkW9+921k7xK5qo2bpFFMEnJkbUr1S0dp6JTYAtN0qFUk2
	 hsFC+0Ti2ng4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D02D3C93E
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172948655360.7322.2418352875961971306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b6fa4da02e9fe9ff705309a2297e2e9ed46959f19aa3640753607cd4e0983f
Date: Mon, 21 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729486553
