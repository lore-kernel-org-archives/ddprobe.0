Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0289B34BA41
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760237394; cv=none; b=QLNkEJ2+IiJ94ZGZ1eo3NdWmbq9nYh1Y901xp0huBh0uLfK54Ji/CqE6Pcsl4WZ4DfN2vUEvpIvtZkv3rdxOC9WMQhRZe60T7ZqF00NtUDpt+WjLkkfXmxJdBI1Akjj/x7C6R5WVOdJ0B+y7pOP9dGROab159QMOCA9nEazyuMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760237394; c=relaxed/simple;
	bh=IWmj0wozL1V5T763P9+ydrzm6Cs3Sxzr3tF1go+6CoE=;
	h=To:Subject:From:Message-Id:Date; b=f2ul6RpHpxQTYVXKK8KLcrbOXYj4j+7ociQMb9kF9o6221PQavc+g6NAKPeWSzUh6SHo/i7kVrCsK0dl9EA973gRpkSmPcdrwYU9LoVSWortEv+xZc8YkqDQgtOE3uYHKqXjLf6ey4aetMHWvWZpL6gnFDC2MfjoYbh/by4NKE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqTfeVdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqTfeVdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4D5C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760237393;
	bh=IWmj0wozL1V5T763P9+ydrzm6Cs3Sxzr3tF1go+6CoE=;
	h=To:Subject:From:Date:From;
	b=ZqTfeVdhMf5gpOR+uBlYjOOuKoBbQhn3rqOqQ9i53a4ymLOdKlcJxAwrqHFgXcyuu
	 3J473bbRPNSzZeCWIDhOcKvBQ3WZ8A7p3q30UH+g25ZTwdBtpr/qMr8Tw6yx2K/rr+
	 wY6eQrzhpzonUkwkFhrNeVcZL/xw9vHgmNCeK3fJ6DU0pD2C8P9y3b4AKH8Dyq2wwl
	 3FKeLsgca/McA5l4fB11h0/QJGjaZrtZpA4mSMUI3mw8Js8ue5jE0BVAAyblFHqACE
	 1lnKoIYhc21X1lx+bxzrMwyumJl7SaYJDTe6odRc6ZeXXLyZc8k3YQszhh1e4UNimA
	 R2oJpVryr2nQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F562CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023739357.31383.16249245272876225271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f530367c9dc823833a49b5a18fd40818609c30c6a005136f53348e86f4e778
Date: Sun, 12 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760237393
