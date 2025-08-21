Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1874A23E334
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755788394; cv=none; b=oanTPAIN9GrnEYZ6qv07zP4BzAUPCMH0lpJlMjkZkRvN2KSZLSsYhgDYUiXb16i53R7l6s2m/2xO+yUVRx4HZVfwS6K4jKYlOAafVzc+PKOQSeYIHw4Euxu0gks22Kg4Km23FJfnf9C052dgTMauTtvm0YdUsm88wEqYxBwxGUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755788394; c=relaxed/simple;
	bh=Ni7rRGLprPg91aOT3iSHnmGP+fP6ckgd+s3YrpJU2xs=;
	h=To:Subject:From:Message-Id:Date; b=XSF50X4UWQE2DrzaTcym4QuvkOOWK0ckB+EkgOtJYOEWP7NC/tq527oAf1tFE0ViGMskJ6DJiyx4+2YTxnFr/nOdshfL1X14ZNShs23QeVaw2UqFLooqkCr4hA1AmUtsyewwWl2ZlTBdgN8oe3ekWlWBfS1S4RTpuEzWGNbqxJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFWZ518e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFWZ518e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03E9C19423
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755788393;
	bh=Ni7rRGLprPg91aOT3iSHnmGP+fP6ckgd+s3YrpJU2xs=;
	h=To:Subject:From:Date:From;
	b=pFWZ518ejAwDmki4hfAlnwQfjsSYpSn+FfgUBrJnVuPzsYnW/yFLlXMDyOriZGoDi
	 vDiNP32t+SkqQqubKuqFKAbdJm6O4nGRqrrvoOoNtMsQdBozAQWQocXbEjc+OZiYkf
	 pSITKykYdwSZr7oNVm7ZevySUqN/cWJuO+7iGwYY0tEYfn8tckKvStLHBB4TbfAjPY
	 5uE/zD/hW29nuGgIo1dq5+UPtcRQ13p2oXqz+2kQBe40IGGzkp/PBG4coEOx5odOCu
	 D40qTKvmsh9jjtem+RPzji4CBQ1XRfLCpuovO1f94keEAcJC7vCHZEVi2LVB8ReOw2
	 fqJ+V4pUY3zaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913BBCA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578839357.344.3210486713805062858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b39ec4c592bbfbee1bafaa16f19f89c21f3b9368da416d4aef9f5545646b294
Date: Thu, 21 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755788393
