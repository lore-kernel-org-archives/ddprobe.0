Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837DC4E8DEA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791841834; cv=none; b=t31ISU8zkmThG7syy2GkFU0pgNrOKcaF2DaTXfiyTFxoolAld2nIPOy/5rjiSdH1D5ZXVMHGct4xHOsh4ADuuOHxe9vZ4ZhddrbnhXEZj+Q1CVzVEgyzmp7+8qY91CHXwd1FNg9YZRiufKcasRYc9r9rLiX/XNpSYZMTF8PJPmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791841834; c=relaxed/simple;
	bh=Imo5YGKuzB6IUVcnhQJTr60ClyvU/lgYw5tzo93mCpw=;
	h=To:Subject:From:Message-Id:Date; b=V6wC6zAyNKvaHRVCbGG3MCnB2E8opAuUVQO19rb6nxqsqwfkU4bTj7CL5aTVQzZ8WnFkBvkOI2pL2xUcNrOBGmTCR12bFWuiRqLAWgK0E/+P30l86WMPFudtKesSHruo2povdiZg9mbOReFsJlXbpzVYf5hCy7xkY2RSebBQReY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMobrKdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMobrKdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4EEC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791841833;
	bh=Imo5YGKuzB6IUVcnhQJTr60ClyvU/lgYw5tzo93mCpw=;
	h=To:Subject:From:Date:From;
	b=hMobrKdUhlx4rceZtEQqNrbGfBDZGvQkHFJWospfBDA4Kv/A1IOnJjMF2XIWv1+LO
	 NqRsJ6y+xd4rwXvFEvGpvQ6M7kgkWPacA2fjYZB1cTdcC2c1LEpP3irfu14dQmlzty
	 3x7gCaCTgymDdIg7bXNc96d7NumEwFSPijJHytKnAGkDCgT6enP1etH0/a8daoEJC+
	 tUwPhmkrW4pLZOocJ2e3ZCXOybdZGA1nnNoODzTj1uHIOj7Qw7ylChrHOUrCM1+eid
	 48oJLjmPsTklGXYBHyj3w3mTJb8xkIj+zj7YpKT2Xo0GF1zTqV6fHZD5F6zYXr7AhX
	 5+gEybNN7bLYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F5CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184183368.24442.2890653845908795912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0ee187522579e3135a6a248092e8bb96aca36fbfea357fb660ae2942ce4c98
Date: Mon, 12 Oct 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791841833
