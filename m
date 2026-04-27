Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0B33EBF06
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777314454; cv=none; b=hUZDXQbdALhkXc0tbwmAT/m5aD40KLf3d87aDZXsft+7L++3ModOAL8lq+J6FVdsnQgS3EedNxbwnWLnJhznm0NEmkLZkAv9oIWQV+61cmNB+EmTV7bGpxl9P60sHM+RIL9n2KBL+IYCAGbOodUNEaktbDr0jxXbptEiagTV0Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777314454; c=relaxed/simple;
	bh=Q1icTtXzomviowEctHEHkQwUq0xlQbgFOoBjytm34WU=;
	h=To:Subject:From:Message-Id:Date; b=fGOwN+0F49Hr4g6mQa69tipkhX+YWoNAhnBWHF0PETe0DXVdCgxgnBEyoGCOvym8XM3ecsQbW0TpryaPVA+KdaoebChHd/3rMefipz5+ikW/0+AsHsiTsFNL9jmtNsn2JbEmU708GoIns6Qh/pOFE6B3IWdcHEfnmK9Q4PGQFx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6TVaP4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6TVaP4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB067C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777314453;
	bh=Q1icTtXzomviowEctHEHkQwUq0xlQbgFOoBjytm34WU=;
	h=To:Subject:From:Date:From;
	b=J6TVaP4m/tZ8mwxc93ea9ulfPuye6qgu/+B3OzXxY2Qrho0mZyZmEiror+QiZeSdZ
	 rMwVBfiCv2PB3iSMTj+5zVHl+CLzwlxLzsLIu9qx56g45GKz2VUzvKqKVIdiHRdq9g
	 j606/oQ03WjrM1AVdd1TZCYrP+hk4oZHyxAaG0T+pzMwojnE6nv49Vdsg569QxVoUW
	 FjJzZOZ02gpYPnDNuPztxWRrI5NUlMQEZkNfIDrRill+WzWWiFMKp+sQZMIm4khA9C
	 w+eMNON5eJ5eQWsio5XoSGJe1IaOOmQkbdGkGWr7KrkrIiaLTgODD+BSdT0jiHtyl0
	 4liOfn00a9PSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86A2FF886D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 18:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177731445374.8322.5276791199600639516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a75be722e0cc4d13764b5435bcd403af96046789dfe561a23844794c05e4421
Date: Mon, 27 Apr 2026 18:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777314453
