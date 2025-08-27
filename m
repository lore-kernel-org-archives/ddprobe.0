Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EECE2E7F32
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756326594; cv=none; b=JUA5L2vrEEt0zcb46EoTtgEoRKdYXi2UHqNTtSxyJJ8fKYhv01U7Bmgr+v0ZWwJWC/IN6cR2wH5U0VayMudLKKpzzu24qOAf7WYnjSJCtsTdIa210drcHby+B0mR4OSQfQPI1nndwONYiLcAHkoj+9iy2CQZOvt75NgmTJ69EKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756326594; c=relaxed/simple;
	bh=gk78f5kgxOlft95eaj2aOmBXqantbZnP2OgsDXiPFyI=;
	h=To:Subject:From:Message-Id:Date; b=rVF9wHjVrcc6jbS9w5nVQY6fBDbqmuHEHCgF9wf8181mwJoQtZ3zj4RiY9w0YlV7heoZksX+jGQojRirIK5zTUAwhjArqc78Qsc/S1W8/Gz2RLwjgND6VtAlvqklPg+5bsD/DWb+LIrMUwBImUAaIQ/UEVWAUIHq4lM+jrZEJzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiJksCdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiJksCdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D55C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756326593;
	bh=gk78f5kgxOlft95eaj2aOmBXqantbZnP2OgsDXiPFyI=;
	h=To:Subject:From:Date:From;
	b=CiJksCdHE3cDxYvuBOLnh0bMEzniti3Y4Uogb8aGom6YPOxnVYsIMZaVjml7/Npzl
	 COnLvLnmOuIicUO9TfnaH9RovaF4a17lILGTXXdRbnScCNSKx6GWHli2ruJnYlqMsu
	 52KKl/60weTRSGgB4QWVCu05BE1mqOUpPSh2SkpLgw/OUuTYn8TcVJhpn2AjmTxs3S
	 U0ki/vOq/xUHOZQQPLA42JbFNq9jw+7n/hVR24pNVAKBvx1lusr9Is9XhfePWehpHy
	 DIYQaF9Z041+hUIXq1LpHo9HncH5XMfeomT2LYD3jR9/LczKHAfYDy6jheqat2eLnL
	 8BDsN4Sck1FsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E831CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632659357.8963.1636615938034350786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559b219e476e60400661c4ac8549afeabf84922615bfb6d09db342819c679e4c
Date: Wed, 27 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756326593
