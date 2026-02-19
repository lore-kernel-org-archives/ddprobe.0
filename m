Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CACC1E9919
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771504494; cv=none; b=rvw5fVCn50VyY+6B5GKXMNxcv8o/VwCXD2bG3K3JP4XClEvOV/9sj86YtRVTu5BFc4Gb8goeIgkVeHHJFdQeLEumRQn7l1Pbqd5ZvM1ewVPO2eLnvxsAlmmfR0g/SLz0yLbWsDxDBtKkYlvkHBh1SNwn0qwivbewazEa99y7YPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771504494; c=relaxed/simple;
	bh=kRHxuIqVP7r1soxQZGF89DM2kgHHKicPNLBeOhajVT0=;
	h=To:Subject:From:Message-Id:Date; b=mFW3F/tZxNzxoCjxWYDJTUOk2HxobAlAByFvjjyoK3g+WjrOwLvkiQ4vVwlKkkYmEa/qcGqeiJSWBOMZA1G5TdKvh67j3wqYm1B2HJlKJ4hSqCNojkkDX1De4OaVt0aoCZWOQXDm285VXds68IUJ6p4wuwET3Cn6StKHvqHj0G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnEpk3ND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnEpk3ND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E35C116C6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771504493;
	bh=kRHxuIqVP7r1soxQZGF89DM2kgHHKicPNLBeOhajVT0=;
	h=To:Subject:From:Date:From;
	b=QnEpk3ND6VQWNiphZajrr/BLJttE1mpmV4aBnOApnwYck6YTjhgRgfsoIkAHNGPZd
	 CT0+DMAb9E+cjb7j+tfy4TwyCednXlZXd2fU80MziaP3nsK+eAgq9xP6usBxRVGRc6
	 1ilFrTbueX8WkV3X/3Bq/CyPr73tUTE2XH71nVoNwZD77UdVC4Ub2570fN8rvzd0Kl
	 C7mF+Ca0co8dW08m5vVwb2XONjpVemBUl/Oh+lN/cR2p+u7Eenr9NZ5ZZmb7LrvN77
	 D8loT2XAdcyhE4KC09LayL/XVn6r1Afcn3jqgm0sKSWBxAW7lqgFD41uuFKKX44OhV
	 FngzbVmquwHSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C6AE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150449358.16566.435574617117913726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c830bf92cfbf0473ba6225214fab97b7d0ed1e1ed1855b4f44b802c6931498d5
Date: Thu, 19 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771504493
