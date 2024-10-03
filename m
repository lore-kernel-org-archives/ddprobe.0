Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48343147C96
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727948154; cv=none; b=Bf6niEhisdOiaLKJXI+sI7JFjM1gIdqi82zvIDM/HdaXdWZuBg8Aw4qnBbEudIo2Kut6dmNPEV2a341maQu49NVfVhQQL2E7iIUWum67uN5hFfVOiI37p6KuWChTSP1vnJjdT7vR1llBNY2ZvB498CbXwmK3hu5aBQfvZtj3Gmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727948154; c=relaxed/simple;
	bh=qbJN4qVUa5TPHzYxr+LnZjeMCO9qX1yRxPOXhiZ+LaA=;
	h=To:Subject:From:Message-Id:Date; b=Sxwx8RabSgKD6fT049A6+/Bp6nKAITVuAHvZvbbMLEjhp3kuuPnxd0AjSLjXOhZ13R3ToqO+7sWKSBZAG3kAFON3Iv3aEbI52h72PYNpIA4TNbmXVTB6euHH3NBtqycyhK6HXNHpf/kDrOe1/tLlP6WxKfEDI2h6BpUAhBb1Rpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGoaC+OA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGoaC+OA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2206C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727948153;
	bh=qbJN4qVUa5TPHzYxr+LnZjeMCO9qX1yRxPOXhiZ+LaA=;
	h=To:Subject:From:Date:From;
	b=CGoaC+OAF6S25vMvP3WwvxYiXlxNkOSg2r/9VxeiveJuDLQgISf1N6uLP46iUpa6e
	 Dz1ox7qx45djzRvWI4hfkitXwh/PhoqvlEal8rIAMTYmvoYAdACA5MQDcZMk2NM55P
	 hvShVGgk9iH+Q3tJbnTEA0UeLVbHamgzvGPNcn9AWZOHW3nRQd5Zl3MkElZeu1J81Q
	 ei9Ka6pu0Sc24XzAsD2VtJhSfKblXKHZfbVC+qene1jncps7BD72vyg1HSMHcAlYEi
	 bYNNnwkNaTNK83qLM9x7W1wbDvBSdNl/+ou1SZokPpo11tidhqKQaUrz5tHtWYKzvR
	 f1Jdn2cNUsVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9E3CF8573
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172794815362.469.17975418715747621485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d954c463532cde69c2ef9576050564c6327ea901036820b37f28a14601bf9aa
Date: Thu, 03 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727948153
