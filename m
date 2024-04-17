Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D17130A4A
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713372563; cv=none; b=a0zgz2ytoVpoCoX6NHgz5GyOeSc0/TuaplgIvu+vGNnqofxbwuIhNRu/36VRisfb2ZKGVyF9nAjCXez4uWH9uBWC3Z3Z5bnBFD4X4IKIiR6IoOb6n/GhGa4fUn7TOmQ9HnEEsF6abqejcvCuFR+/YYzjzprgegDS60UGGYmRvUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713372563; c=relaxed/simple;
	bh=SD9VgLzOhRz7sMIeSUIBsMQ1Xw7rwi1crLydRykzI2A=;
	h=To:Subject:From:Message-Id:Date; b=nsWTFSzTlo9hao6JpY8tBSHkSlLeEaGrtexi49Fiym2T8C76nLhDDDp1rYzulKDy1EY3MJUre0UPrX3W2K9sjZNNYPgVObUCEm2JH5WynqBPzIkQBpuAUipcCsE7EKafmrhLLaYrMdLYdkv2V/Altvawq44LOt4imtRL9ute2c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/XAw6aN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/XAw6aN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A64C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713372562;
	bh=SD9VgLzOhRz7sMIeSUIBsMQ1Xw7rwi1crLydRykzI2A=;
	h=To:Subject:From:Date:From;
	b=u/XAw6aNlW1D2FpTYrJvqQc8ZnejlpD16fibux+QLr07Zz63hmhfwVrlCQyWb4Ff7
	 anP6kIEzYf6ytu5apV1nQtg8i9ivm5pi/rDyg97G8fx/sQ1QOU06wMCX37ZPAROzwx
	 QecOFXJW1nYKosxDe4QOR8ip5o+KjiHF2zvRKdTpNF0RXO6N2vhtNOJFfM+tvKhvPn
	 egju0qNZduGA1hZYN2pHJpXRA77DdEJpnM2D08jBHzo0GNVxg+DwUOe7UnzKB1VGPW
	 UvrRmhNQ+H5dLzbzbBG1ilgVGp7bu8L3uppHf6dzaVXRYrUMXfEl/xOG8E0l6UYRrI
	 u7Aqt9rToP/Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA96C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 16:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171337256283.24143.15276579178453814607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599aa6b926725a7b5cb9265e3e082ea462224989f1cc47eb023d9bb201bc9118
Date: Wed, 17 Apr 2024 16:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713372562
