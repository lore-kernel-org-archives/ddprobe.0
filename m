Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4496834C12C
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761817794; cv=none; b=oqlkMnxhmypcj+C+vUZWRaFvIHi65sIzZcLt5NoyCkROT3M9OREEWOfpT2CxJfxeAJeqtr6vkJl7MXnZXsqn4Ao7/xtF8RCy1Av+BCiaXJd3x7C4P4gvq91eLNo4hfaiWukGI19aqv0DrNfS17U8+MEfTPgJ+TlxslUZjcvCJ+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761817794; c=relaxed/simple;
	bh=w7V7HMY0pA2R8va25xhYSjmOoU3Q+3hk6YqYlIBKmco=;
	h=To:Subject:From:Message-Id:Date; b=RmI+k9l6FDEklP2Ck1XChydQXEms1Hh8PIWzyhO7JnTCBRx5fX/YCUc4RWuVIwTNj8/TKYLB1jJOVJKJ2Gfw/SoXVvUeEDh8ySYf50DMorW7MuVlKbZJdCXdVzJYVn+mAOokM9jQYmNY6rNvDEI3Q1t3XXbxWFpkGhEaOuvcbco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6UakDCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6UakDCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B454FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761817793;
	bh=w7V7HMY0pA2R8va25xhYSjmOoU3Q+3hk6YqYlIBKmco=;
	h=To:Subject:From:Date:From;
	b=Z6UakDCzD+b06NB6iEjJRe2bE9bL7m0QSZB4i3N6Yw5h1o+YoqXnSWgYHL3AbrtPm
	 Z6xzmob5DgbU3tSUXu5eHy2a+BHpHmddLPofYv9mxTvDfp1f+Edqyk5AuVimDxzT0P
	 iQNio2NFK2soPvZyoT+sGtLyuv3FnHNBjCD3CB69UPS91AgchTct8GKJPxb26l50sK
	 GlbGUa5u/oDM8VsmhS1ULcJYlAMw1jbs9fvjJR89MRt33cePP6C2miBNJnTzCG+SEe
	 7SglmF1k8Dvm3alOJWYsBfuBjnOV519k79Sjgy59yXHIlKDQ9bWD/ng6aiaZZkWBqF
	 uFLe9HvvYH1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A53A3CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181779366.29480.1916472938877965520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 197db599b13f139432a1f08c5a062c768c2ad3f815cd26f24d9ec5984284d6cb
Date: Thu, 30 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761817793
