Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7233AC13C
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 00:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731199554; cv=none; b=us9ojpU4IIuK3B4pphGvLKXKo2ke8UUGWtKGIKKkfg/gsS5cNGGepVbVJWElDvprOwHn1WbWPIEdKkX07GtQspJ+JkuJLWETwRsXD4zOhsjU3dxpheLXf6sx5N880FXYHzfL+6zkXg4kIL3/wSbt75DtSYEdvbdAEG+rAcpsSFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731199554; c=relaxed/simple;
	bh=3wmC2dU6x60D6XODsf4P2Us42KIjskwYkZ3d9y6RL08=;
	h=To:Subject:From:Message-Id:Date; b=fMEFvKeX8DSKToosouAcMT8vbA02CG2JZCaJjVEr4gtKy00aQwUFNRzT1zKlgWUAEOcMhYtwqVaD9Cm9FwZ9YVPo33k6QfDQT1ptSE9+QXqIz/wljUgGVTpKFUQUXo0/kNhCo14/+5CP7R1hMoIrlZMgmcSc30dllY61pK9eyro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFn6ETUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFn6ETUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8727C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731199553;
	bh=3wmC2dU6x60D6XODsf4P2Us42KIjskwYkZ3d9y6RL08=;
	h=To:Subject:From:Date:From;
	b=aFn6ETUVXPV90fkop590xlhBfJK3A6B/lP0OskY6+J/IGtp1lZ20nghtMU0stHDNE
	 NseG46HKNQpqiqp1wi84M4tQOoxCk+vKWN7lTjyDqiSpKe+oSYF0OWkeXG+WWgKPih
	 MmL4QE73CFgKKCN3RyR7T0bEWRD5Jc8FDlQZ9N/r4UN5b18ohpzQJlwiHLD+9sLs3D
	 hBLSwUlmo0ldANaYRu+3JGdLwUdNwLUmmZAlvlY4z4Zj4l0YLy7JIXut+2U18Jde7s
	 rknZGY4rOPEkfeQBFWu91pLZ0RV9WN1hRfHZUxpWRgwCSbRT06uIZqwamBEnY//QYP
	 iC7Sbx7P/qitg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE344D5E38A
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173119955366.20545.4334599886726545499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cfb1424544a0a93f670a60bdcf8e24b1074b038c987feb4b02ba67ec0f7200
Date: Sun, 10 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731199553
