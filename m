Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B8E2063C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744926594; cv=none; b=ByBqrD2EED9YopLi3JiPAmGXjX59N/4KVmVbQkN5lAO0ZsBs6kxSarkaAl0ttnUOGZ1m1HrFVi3zp3S0fJPBd+iZ5WUi4oSYB7/JkQ13pwLFwwh5h7MVqxmDMI9m7XmsL0apVI1Xz2/78KdMOvCfBFgOHUzhXUtgCtvAmEadPxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744926594; c=relaxed/simple;
	bh=53puAr8oVhtbxiNuCcsejxNa7Y1HXCxZVYEZZKqBCNw=;
	h=To:Subject:From:Message-Id:Date; b=FxTmITJ/9nMRKglRccgprlwOvaF3viqdNr8x58IJS+QZItUI1v1ukI8yiV2e/MyOxzRRNmGa/KlUKZm9yuzxWDeUfY8RUn+VIp94E0amdtWGf8OakVdvU0WPqPKGjwHcV1UKegsR093iKMqEama9Hn1y/CBzWZDbubLl+YifC08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLODtbS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLODtbS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCC2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744926593;
	bh=53puAr8oVhtbxiNuCcsejxNa7Y1HXCxZVYEZZKqBCNw=;
	h=To:Subject:From:Date:From;
	b=jLODtbS6N3+/ojznpc0+7GXvmONPUnE1yAJKd/AKQxQs9977n+2VsA6JfbKlo4akP
	 JZDBwcVYXsg3lQ3zhJE+R5Ee4LSEu/yHClC/PVvnOl4IVchFsJ009ADypOR+58Nn6S
	 gbfjpyQuAj56RIES6mPurIGKXKO7keun7CRiaonjNWiD1poiRy/qhCiaQRFQL9P2aY
	 HTZ/4sY8wJBUZFPngcOpoirfKVcUV+NBu19h2yxFqJD5fl3qh/tqyzBk2fwQpK0aA+
	 6tVrpJEMDMj+jfTlC9CUutLOhxKTHPQ5FiwnSHoJ1ELR5WRGVI+uQzbXAMrgxMoS/s
	 hCl9wx5O/dPxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E6CC369C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174492659361.19107.15120068179314662394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 908cf881d61c0fa4f0e0757f56e042d917a63681aea81ce14d19e9f12f57c8f3
Date: Thu, 17 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744926593
