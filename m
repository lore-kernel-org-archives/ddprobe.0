Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AF617AE11
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753039194; cv=none; b=pDUJwULOtCbN924dOaU5J6KeCAII8T1VWXrUiohrBKJ7vnD9i0zfV1p6vnCpIcdzXDfLStcQ0YN/aa9aLzGzUuAWuBP7D58glHdxrrvepJ7mMIGyS7r75X8/MOhCJBl3fyw8olq912BQ2+7U5R6Ll8w7VP9lF/Omu1Oeav4kLCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753039194; c=relaxed/simple;
	bh=WcjD4qVfyw/TCE0uyJCR6Skt21ppxFLS0QEZjFh8zO4=;
	h=To:Subject:From:Message-Id:Date; b=eQBnwUzbbgqdWQI2dyoNaxnKfhCWlTZzrHxF4nVlsRIKc93ZY6U4QibS06R4dYzCUUzWg+ZsSvLTfe+W6uHFlxWdf3mpte5kWMETdB8TrkI1dFAtZvQtQILdORyIViRD15dcAEWF2PNiQXmDrLZnTT+h34a40iSEYO9wEE6zGWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGi93jCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGi93jCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6553C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753039193;
	bh=WcjD4qVfyw/TCE0uyJCR6Skt21ppxFLS0QEZjFh8zO4=;
	h=To:Subject:From:Date:From;
	b=MGi93jCglXeR9LBU9nAaRpYuLxYje54SZZD1DPq3WGdx2SXvdz1NAMvylvJ/jecOz
	 pIc8f1k8m7BqOkTncSAwnND+36JEVRuRp++kBwcdOJ1PiJfsR60caR8j7/r64ofE6x
	 7Ig9ufKI6nqTCSAnYdSisowUf3X6RidBt112SlqHcWyhL8neOkgEECeFpOR3zEDOaF
	 OlSRkLAoKb9HKIHNjbne8DBszHD2wiBmaD+JJP1RJG4GZHtLJcebxzaeb48ZmFfjk7
	 WOrhJkj/GXhFows20DMhEvtbwxFmPWMcI06hXyWGlGKImkm0AAorzuk/b7JO+qtkcN
	 PKSyQOvuSP27g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9454BC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303919357.5577.5765753910120151645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f917beb573e49bbf74a12778e439c019cbd4e1d833e13c6a4eff9db0d7e7f2
Date: Sun, 20 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753039193
