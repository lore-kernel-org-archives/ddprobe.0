Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458F13D47CB
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775243734; cv=none; b=RxqXjPZ/Vc/ZqwMe3fiCPIdiPVgie8nf4UU3psYAUom7JEz95yC8PxCVAGq/FwmQPtu+u/7Ppu3+LgyFAYHEnv5Z9KFIqd5pGbGro8Y6Gl3lw/qeyC8BAN544QgHCY9BeVxCU5TRrD3iKwjyXDI9aUu/HEjTzeNzvjMASHm1szk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775243734; c=relaxed/simple;
	bh=4Kg21iCuVhd7nTLMTz2WBoNbZLx/x9v3yzwP9V3fel0=;
	h=To:Subject:From:Message-Id:Date; b=TiUIM9a95skCzfhFrjVVQTKsYxkxRsBS2hZilIexgRO24fQ0J60eBuauKVbO44rK+uamFEYFPQEjfku8B57fFQkguu22dTU+teiKBZY9Hxcq7x/3o4go0Cbe+297EJ5ymQ/18tFRyxnnHoFu3ep6OqCgDRnyCelE+pJ+uXyAhbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRbxjpBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRbxjpBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC202C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775243733;
	bh=4Kg21iCuVhd7nTLMTz2WBoNbZLx/x9v3yzwP9V3fel0=;
	h=To:Subject:From:Date:From;
	b=TRbxjpBgO+x1bl/gpSzngin3ten6HsEZN7X6uuv4K0RXrjegZQK+UzwDlrM4mYk4V
	 rLaag1Qw3r5LkBQts4U4q7R6le5Z3P1z1w21UhopFtxx6hy8aWilOEHF0XwDih5DLK
	 mq8hul1++tRaH/aNc2ppngNhDOybQsw5f9yRPPE/iJD0f7j2aA4bSb+nP9f4GQ620A
	 NF1pdv1VQjWBJkZnypCqIMaV6mgjUk2wi0N/hXMxqDOY+8Rm/ticlr1pqph/hpsE5y
	 S5UUeAPXqcqvW92HfNmnPXD3R8Lb7Y1UcVXR23Gssw7vjQHrjzRyRRUCTXXBEo0c6J
	 oG4smLt2btYZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE9DE8538E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 19:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524373373.5778.10469954274278189517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d46d7ff97a631e9469caa54a407ee9db335edac492aad0c3e0ef8f8edecbbe1
Date: Fri, 03 Apr 2026 19:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775243733
