Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03891D7E52
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736203554; cv=none; b=jCJ4vxSCAo09iYUOWCqJv4VR7mB/L+GKUDbxwL/NYL3JOlF3XngbxlQxW2Eniny0xElxYM2K0XUgh6H37OpBHc615XpE2+dX8XUwlmQjhBukApuWnqV74SGYRWY/wUyx8fPIzwI8t+CSs3DEUcHRj4FEw2c6gqFwRMIbgH9NKVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736203554; c=relaxed/simple;
	bh=QvTiPepl3Bn5dTAlJceBizdkyTCqw/+MptVA4n/DjlU=;
	h=To:Subject:From:Message-Id:Date; b=fSM3rqmYMVJghOyhW+BmT6ByII/HLT4UCB0tnB102cxoTxx+pYndo7tbw6QnceDxlxCcxPTPQeUIDsFmUNHXzk3tKhYR2fThS1rmfQMAHo9LxPL1IUkV6hgSOGp0D4EaZ98yZ17dSV6ub2yxSk7h7VEdnvuKdLGVCLXTg3Jrdzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3KZtyQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3KZtyQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7337C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736203553;
	bh=QvTiPepl3Bn5dTAlJceBizdkyTCqw/+MptVA4n/DjlU=;
	h=To:Subject:From:Date:From;
	b=A3KZtyQMuwN4+ayRZrT8T8xHJ2KgNLFBa4rqjVt7JT/c98Mx2g437aUdHEyEHpVgq
	 dMKzKORMndqa679hEOsK50pEBrwuksiV5ry60sD4uiUaOKVYR8AjwuTyHLxiGaI/Pk
	 Fp9gaF0hOoNkAfR/nzM8BhUBrh+A00/Q1Qse6J6B0uU+RVAY00HH/aPSR6wE+Ur+sr
	 xy60ZiGcv4uQN1hYzNDYuuwBLOajhlgTfWM5ZS16yEGnt+CEFaPtGRzustjwIxc7e3
	 RDE4J7Gjjl6U0XCzACzeIlzo6BXJGopOVk5y+v3N2uVd4yWf3imgU7H+YDEbnJXXu+
	 qNyD7bIh88PZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91289E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620355358.9570.16912262099308157150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4666b89d5dfa990e1379c00b93f233b40293d674ad0bdc76f39487ff86be8cc7
Date: Mon, 06 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736203553
