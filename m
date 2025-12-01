Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184732628D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764552174; cv=none; b=EekBiyCVKSKEOWO0cyTIkIgiIBPkfWJbHxBp4C1DIxtjPGJfJek8YZl60Ld4n7OjiUbDFvK4L5cteNhrc3ao+5PnmCi75k/sWiWWF1s3a7/DuWgugIDgdsZ6SbVKVt0MVXSffrIJflbltmsTwFijkyRB4EfoLsVqGk7t5655jkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764552174; c=relaxed/simple;
	bh=7BncpUBcYUQsF6JDdgeYTIX/DKCyGyAx+7nQP6B2OM8=;
	h=To:Subject:From:Message-Id:Date; b=PulP/akDX4V6QQ0WOUcqfKukURG716Oq+mGIf4eFKiVBY1SdO9+OkFav9nLaVOXQ+7fnqg7NyqXhMGKh8dTZJaMz57KAGVMMbWjWqYVtMBQvbmf9RTTN6k08c2yJ6c2lY2sBqrztMQQUZjG4Ezh/JOzPWIOnrCtHr27SCmLXrB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+O1j4rV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+O1j4rV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB4C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764552173;
	bh=7BncpUBcYUQsF6JDdgeYTIX/DKCyGyAx+7nQP6B2OM8=;
	h=To:Subject:From:Date:From;
	b=N+O1j4rVWq++Aovf2E7SKbOc4o55ObxzMQFlhafqFb+BKCO60Ew/HaemkQ1Yuc7/T
	 XHD+tfh7zaEr7huRY6yZIONiUctmGMOhxQm6uvGEb00ompskBk6kRmaeje1o3X2rir
	 cm01QCsbil4ZXafoTprH4pymTfihoSl4g/onAEFF/MoZpMUdiEbgjavb9JJvjtx5cD
	 V0n5qFRuz6PqOpNxNinA7Bsv5THKbGWsp/eG3Rt/KTY0VZUUnDUc+ghSQ60KkoR/wT
	 +haSrF1fR/O7AHvPsxYpHO8ifJ7CrZSN2ZE0aKA3/mbuCJ73ZykRvnvzXe+gPS4Ax4
	 ScLaS1D1YqB2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD6D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455217358.15511.18276959566928225295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f71d5756293c5f419377cfb33e9f612d06c9006c6c9588032d1c67ed86885cc
Date: Mon, 01 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764552173
