Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C31831CA73
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756479594; cv=none; b=nGqW7Q9tqqk+LAR9QZYGZfcBihVE5zGQ3x8WSYgDYYDJOnM3T5K/6Nhp9MvgzZoJghL8ATLjcL3ZdYIbg66S0PNOqWQiJea+bGKY9Du1pbJFQi+CdxMYniHQog4UrM3wq/pBI6QS6bxxvIAk9MOojUfsmAi1jvt++rG9/9gZXTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756479594; c=relaxed/simple;
	bh=72kETNCNCVyWf/KLMKzwLaqEetxuCKCCSK+ayeLtqlE=;
	h=To:Subject:From:Message-Id:Date; b=DOu/JO5Lx2jUdZTWy+G+sWuzuFpC0z19RHEtem3RvLPwSl7dmJiV56re8xWfC4VEBHf5PtScjBR4UojqpPYb7qyZby7sS6keoWj3o09j2SQNen88sjcqfcgLHuymoZg2ud5sQVgw7U/ervNjO9VBe3fHycwBY3kJPmZodsHz0kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owOT8kmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owOT8kmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D45C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756479593;
	bh=72kETNCNCVyWf/KLMKzwLaqEetxuCKCCSK+ayeLtqlE=;
	h=To:Subject:From:Date:From;
	b=owOT8kmWd3emzr6JIWbRqSHOXhrgx2R3vnQ/t1gdOwfSiA8YAyM9w9nmXNFJLoYXN
	 Ex0vcexZshj3OQoW6Yw3J7/07lj6jKvP01RCQqMeUUgW6fm9KnY4zqJbHLacaAz/oh
	 vO75DOvBJfdr2QqpGfZQmI6tll8eS13/0Y8ipf13t0HUTg77qirEEUsbUngLl7E0AW
	 PDQLpQ0ZOR7inrQWVYP71ltClUGi38z5YNNSP1vOcZFEFJibl53FWq+t4tZVtPd05y
	 FiJwvpm8lmjL1Src220mBL5dnp4DGL/o+UYzr3t6HPHmIv2xcb0Ze3Ns/s0N5xQ9g0
	 AdB8jVK2E/LCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91196CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647959358.16945.18325618689875721399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a6a67a7a6ba90c5ec7e2da299f0b18ee69cc490a4cb7953d3f84f848625b8d
Date: Fri, 29 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756479593
