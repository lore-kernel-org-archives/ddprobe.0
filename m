Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8DB1C3BFC
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784396914; cv=none; b=W0xR2HsUEzR1gCtKiJFUVgjjKQs4G3jBabyk4znAdK0wYj6ute7FiiSMWPNiBQlaA2ZdtMnYCNE5+7wwZ6fPgXgCtgH0JoAx+xV7yiHsTaJdqTS5B6f0N6l9qWU1+OpDYyVRboLE50MW25tGxdD3/nXKck4ldAxYFfpDtOvLL3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784396914; c=relaxed/simple;
	bh=1OJdv3hGJOw+jc/RJJ2tOd2BjHCrUNEcVi9+UOtDGWI=;
	h=To:Subject:From:Message-Id:Date; b=LqKfhZ1V81N7qb/DH5RolvO9zKED8AVvbQqw3bpNE05ZhyCEUzXfR/YtrW0jSCSOZacgkW6StpwKSvtlYYCDjLe0/fZisFCOk0rhkm/DQGS9uNQRFYQZax1tA3ZpizcZ26kNXwhzlKL+enTepAqLz+uc5ep+kx6XqQ/GN4uLL44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YuvLEWl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YuvLEWl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF94BC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784396913;
	bh=1OJdv3hGJOw+jc/RJJ2tOd2BjHCrUNEcVi9+UOtDGWI=;
	h=To:Subject:From:Date:From;
	b=YuvLEWl5gezhzpmU+QOKXJqWfyy/iV7Kzhl0uEEj9yyBncZOnpfbitO0y6PeesuZo
	 f2oQSLJRd3/VpV6CoAyLJaB31484+UGXhRT8b2P6G+bavGPpi7TR8Ir6YmcFnj/HKH
	 7OCKgQhelRTsQcIYO1oGofEWzFZz/Sc6lu/IM0alXQ1Yot2TbLxDpklzN2lU9Xt8q5
	 r+0orx4pSVFSd+tquLxKl3HFVd/j/BIB3xAABWkoRfL+n0IvAgeuQMHIOHvb6vgHrZ
	 AzaYhIJoC8mPi66tGDF3KciNj6PnERLJh5APHcn9+4BXlH7zCiidAHVcKALRZgFHqy
	 F9ORj06cQ1oMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDB2C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439691369.23025.1352510208865249561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6fe039175d8922c5ca0ace2e1171bb6709b1d7604b94c0c4b1765e4ab1ef9f
Date: Sat, 18 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784396913
