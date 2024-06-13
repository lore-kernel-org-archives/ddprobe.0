Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7081CECC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718240903; cv=none; b=lJqbtfa5SFbWwMyblNwigbBsN/pYgryTo+W7ns3aAkrnU4/2B3b9VNm8xnCqFw9LIyqS4LcwiRIUPwB0l3LSojl48c3QuQlNOZsgyJboP2NY/2t0XnS+zyMWvYnzYpwGLZ96x/rTOD5K3KPsDM62OJqCfQdQ+rjF3KBdc/j/dZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718240903; c=relaxed/simple;
	bh=1qcV5UGjbNtjx9qS6TWzcldwjDCv5M4zWq08fXRdxk8=;
	h=To:Subject:From:Message-Id:Date; b=UhTT2DG1+1/HDIxMDw0lpS8ox5J1XNKi75wEGJxWf7CaK8/edV6TdGtw0mJRY4FxMGMqgLhNQqTROiAoNz0BgWBb2cAch9fqlxcXVtvYsFta7t1lGZzfQnbo+gnq86MWclm0YqhK7IvoB+OExA/aPdiWcvaGRLKEt7KHuxw9N78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuP8dkUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuP8dkUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07553C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718240903;
	bh=1qcV5UGjbNtjx9qS6TWzcldwjDCv5M4zWq08fXRdxk8=;
	h=To:Subject:From:Date:From;
	b=tuP8dkUxV+vShdAmpJ/mqKX8HD1ug38keWLJGQBkfSgTsDVoR7fvdE2WuVpXh7kYa
	 594AclIytg0nhbakXHoCpprQnw/5Fu+/9ya/TxGaUbAh17yTIOS5rgGpfA6e77gp7L
	 RbGjCZ3yol+Tu+QWUwWyeW0FPYZCNkN+v/9Qb523jYviV0Pse2pWP55xY1ApGdOazI
	 9adZ3O0VSl93TO65LCHI8TW6Cf2O6G0C3Px0Mcn+o9DLgFwyU2X5p8vKMQVg2hq3hZ
	 gc4MAfs5h5z1/5vfOBOXRx9Y85bk4JsEWlQ81hAsHGRAJdlA7LTlXfrIZR+YYfSBuw
	 4rtvGdeHZjn1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD1D1C27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 01:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824090289.31127.16212292266800070647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f36b670456d3bd479c6918eec83cc9b4033c2224a93e99bf43af959acec5cfe
Date: Thu, 13 Jun 2024 01:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718240902
