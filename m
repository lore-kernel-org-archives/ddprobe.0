Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52BF3ACA5D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784710714; cv=none; b=Xji0yk7CRWV/E37+4QC/xORlb57LGD2jbO3e+L+3DMFP/dYnuxsHVMqh2JHEdXFlCsSp0BgO4cWSA0bFI8axscuTRkaamDru3fL1ZxKMoAeiAi8mtJm+n96kqVbL8ePRFVghIoBGNKIck+uNkWhUQzih3SawXPWMtcpPJJg9c2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784710714; c=relaxed/simple;
	bh=K5Ll3RVZry9jveMkoHsdnSIks1n2zvU6VSAlDXtdA5g=;
	h=To:Subject:From:Message-Id:Date; b=jKqtmBr1A82nOOYZmx9Lb10MJGujmhyXxEGvc+46OkZx6/p5VtReunmPnKhJM572iYwqYkRYAEcGIvN7VQDeCDfVcwkgq4bGAEsNDxzZVUx8lRBzx50QNEuaM5SgjtQ4IPL4dBAX/C0pYztutPYQSgVm3vs5mvxib5QPWXqJVtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFbIGpP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFbIGpP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 297D1C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784710714;
	bh=K5Ll3RVZry9jveMkoHsdnSIks1n2zvU6VSAlDXtdA5g=;
	h=To:Subject:From:Date:From;
	b=pFbIGpP1tWfNXGK5PwJsampWDoQSUVAjp8LddORdGyLC4nPYXSCYKAhv5JuDIOmd/
	 Z9qlRLmzD9QKSeNHguH8vHH6SdTusv99DYeyCVmRdJBGAi9a2LWQK7IYysHzzGv+wx
	 +aW4vD2FRiMEIojLdCYfDquFaoJ3cNdMVK7KQLoB6gYIomwwx0EVTzz6xSTQiMWoBC
	 vk9zXCPsUS6VuykF+a8mAYmPoeEdccEQFnDKbkkt5gGWc8iTtMBDi7qCGazwZL2eyI
	 9MB3/RT6kOuQ4CYHQRK3oy1qHndiIWFaCjbdCHUJ1HZVJs27G11TU3q3dVo2OY0hIZ
	 XDQV8R7+RtimQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D677AC4451C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471071379.23834.15309948367096715643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb7e0737cafa9b6e93e5642e64662a10bb363ced0132b32b37492f8629c382c
Date: Wed, 22 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784710713
