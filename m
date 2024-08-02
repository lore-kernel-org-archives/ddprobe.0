Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AE68836
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722574554; cv=none; b=ZOYs1XYKEmGvnX2xD57g1wWUoBOPbvPz0DvUNicuOL2xUPkky3AYrd9JUIcr0TyC5bQxoj/zmJd6FOsWc4DAwLjwDiCyiYGf2RZJRE8QIShgfJVWnf6k7+rrfjE/0PUSfv54rncBSRMIpvCQfUWQ5OZ1nKkalQ5eYRiyzfFa3LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722574554; c=relaxed/simple;
	bh=MRP65Z7ra2DK66Rc/jFpJavp+wZZBLR/N0CTa/gnx/Y=;
	h=To:Subject:From:Message-Id:Date; b=ethCGUA6ujWo9aOlfgqMs3858XsvXO9WjJPInDqolgjOlMn1Z+sId8rFX3bW7r5j+UzjRChNgQ9+ZHO3KQ6HOszG6hSxccWHx7Le8Var9gNEt2wpfK4gOzKRygLhFnr4fZIiYgQsCrhdo9B6AjUbTso+Ar/YeC6BieqYE2LcWaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcKvXayQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcKvXayQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B110FC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722574553;
	bh=MRP65Z7ra2DK66Rc/jFpJavp+wZZBLR/N0CTa/gnx/Y=;
	h=To:Subject:From:Date:From;
	b=rcKvXayQoN32IPyGjgdiN49vw4LQ3p77ZRXgn8j436FXBZgpZUMkOK2ATi9NHuTFp
	 VFOGDE78J59e9mPOwaxpREf++RwFQCnYHv7riBsvqbd7qc0Xy93MgyOPPgyJJQsaXr
	 V4cniVhofmAy8ploLMe5YhDkf50huIpdUiyPdn+TwpwoNKyE7u9p/l2zuHAjUJTV13
	 3gC/DtGXUuscnLXixnLCwSQO+PpQnpG2XcTt4rQvj/Pyh5Qw4V8stNCZLpkV9/Xthc
	 avKEGcyGPlKwUwNe6EPDfJIdgpE0jgk7VyAhiqpEFUzAxCviV1ESdGVwHTJ44i9XLU
	 uVG/2nb0gDUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98902C52D70
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257455360.14035.1013275457402567710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29bc5dfae3c5bb697c53516ee582b873955106b4921f54ed473d3bad6752e81e
Date: Fri, 02 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722574553
