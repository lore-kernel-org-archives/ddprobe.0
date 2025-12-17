Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1926937A3FB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765983234; cv=none; b=ihe/DB7OSGCIHiB7ZGhsugtqymHmaNjOhWQqFRNQPevNc0Q9Zg9+7A40h8Cw2m3nWX+ekBbCVx3heaKLa8zqr5331H+6sZBoPL2s+WiRr+xYUD4anH0EPPk9yBh26c4b+/qtDqgNMt06CqyZGP7cIwq0cmNVq7ph1r9Q5q0wBtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765983234; c=relaxed/simple;
	bh=ckaFn7PJ6Rvdy2vsTWVuoV583zwCGhXd8uyH1oFtlfY=;
	h=To:Subject:From:Message-Id:Date; b=A7BlKwxsWxg/zdByw8Z9voGHC29oghnSyAqAqMfi/Qj9jRZsGqTPsl4+bvRm2X3Abw1e0z8QwVEM/bZLNNEaHJ2N1S65c7e9rNbJhJV4M6JujS61id77l9cftjCzT9nRdjqvZCHoU/GzJNOsjkPWTz7yb680VfVn9cI7zvrR7pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pGd0X9j1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pGd0X9j1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E95C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765983233;
	bh=ckaFn7PJ6Rvdy2vsTWVuoV583zwCGhXd8uyH1oFtlfY=;
	h=To:Subject:From:Date:From;
	b=pGd0X9j18iBWjrkyKTXxxjX0SH4Kn+Thor7cDq2QNbVtbKgn3vK4mkZkzdyJrZSHM
	 03FzdMBrQc8pIUTqs6RdCMTo5LP5RbZg49eyd5cpUqIHmymchHg7fxJrqe9Oz4FIMv
	 4nOY+vh0cIiYocTvtLXrYjOCOoaOw5VPWd/oileVDoJ9qV/FOe1WbxBu0UvXkC4dql
	 vdDZbFt4m9M4t5WJn0qgi0mHzxlObPtG/+Zit8F4BxeSWNHB0Dcwp38Njmyz4fTQRP
	 Fcawgu+2pnBSK27ltMGu3z/vvEGzKKdHCYmghkmn5wz5+uWBlsGwZo9Eqepv1CvkBx
	 o0p84ugDfJZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB8ED65C5B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598323363.17964.962222619222208937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbec13e562e698cb21fdf38f891d5a3914e0f158bfe7d2fae7203031e2b7adc
Date: Wed, 17 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765983233
