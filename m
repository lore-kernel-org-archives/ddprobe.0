Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE9F197A6E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727970354; cv=none; b=JKRk2gENyHfPIo61LRCOm73C6WutXO2PQqXYsMT3kh483/l6r5tiIkTYqeLApDOdAzsJLoIHD6SybP27DQcQEoJ7CwU8nPiDv2Jy+9yQQ+k4LzxIs+GtbcdaXCtBJyHK91PN1UG0SH7AN8lySMMIEYh/hKUnMNxz6DyDxUbC12g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727970354; c=relaxed/simple;
	bh=Wb26TRzZtAhM6cj8Vtnd8fq0robPaddRHFQpkOZpqQc=;
	h=To:Subject:From:Message-Id:Date; b=ijs9nK91o6L3nY4QqAc+s2exJjAdWqfCwD4e2e04v5UZJDicLvGD5uyom/wdafNt+6qKj9tBPUZvTowqIar40VWdM/vAMuKV9EBOdbijpxcFYQBJ7dZIvc+0Teopamnh78NBMvXe/r1Oprj9TLdFNLksRaGVpFbWwFbUO1Y4thY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeLpS/L/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeLpS/L/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99B1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727970353;
	bh=Wb26TRzZtAhM6cj8Vtnd8fq0robPaddRHFQpkOZpqQc=;
	h=To:Subject:From:Date:From;
	b=LeLpS/L/zezI7WHfHMPbL47sbE3NSGiFfao/K5A+hGCxX1y/shgaxGxDk7FEE8SRc
	 QuDS52irtfkW5hqIHHhTjRUCn3h7T+RNhzzLc9EtQTO/Az9ACWq14VgtqMS5iVW4Oa
	 aOJngEjvtPURkA4oEWsi2SLxFEJ92gCcIbqOy3P9yx0Ie9rFpx2oNe4Jpr7rDwRxBn
	 jCWRRb6cKKcLR/+mFDQGG+sxOEDgRKTUTHgBiQEmCHz4g27gz2xicXilMryQuFbkIS
	 MnEmsUmkTCmPtwoDHyJ4sWhQN26eS4etgQQAve65PBjxE0lXLQG0cU+oXpBgHrWzI8
	 QJpkoybDHHCsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D2FCF34B0
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797035364.885.2427362067501294663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470321345599402c0390779184d0c33d00c8a1a4ac7cf0f1fb4abf177a4d7a46
Date: Thu, 03 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727970353
