Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611BF12E6D
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720341983; cv=none; b=oNTajgqjY7qSWagdStZJs93TwZYc0+fxdIoo/spX7VZr7ayVwIL+0g31eJfYXL9h6UWXcxyG1S6qTZzdcbEw7OY0CkUA6uTq/C4rHgNAkK/tk/hcXh65TSgz4bm688r5Aymz8ULY8GWZVASgQt4mWZcfa1O86GgBUTbKAyJREZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720341983; c=relaxed/simple;
	bh=Un1p3TlIY2NCbrUkiN8Cbg95hNnWQvkBYbCS0vy4F5Q=;
	h=To:Subject:From:Message-Id:Date; b=uKwNqW15iDkbuz5k5R86zD9s6r4mkfejy5gajJiSo9tVXqjYk6gvWrkAjV6cNaTo1RZZGVTpd0wDwLSlH5rd4HwHVs5QnhtNu/xOW0n4pXadEILvNdSiu1KyyYB3gq89uYpi3NzifJZ9SsfUzubWIPeUOvGUsnBaDwizNvEhQdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFI0lIuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFI0lIuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEFC3C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720341983;
	bh=Un1p3TlIY2NCbrUkiN8Cbg95hNnWQvkBYbCS0vy4F5Q=;
	h=To:Subject:From:Date:From;
	b=CFI0lIuYee7BC0oTbrEQG2LfWL/a/POtpU9dmts/y9Q4k8pqOtuy5aNek5sIKVcQO
	 BrtEOJigHTad8sKIlMq9OVa//bUj1vf3YmqgjPJ64uvC8WHz1puICYZ3QzF2FAAj75
	 Ls6Z4nKHOzHTAgx1zBqgATaDhaI8xwbevNKWIZleilHMpkUgTfSbwORASqqCAyvLBf
	 sIj4P2Rj6HJ8oMfLVtzNM28wf2BzrzGDlqxPmg/pnL0K5QpNmmUOwZmzpUyfr9wvKq
	 HlM7wUduL0HC7kZOQaWpn4ysfhIIf+JioK3wnVjNutB+WemTcjCJuP5pTe9px0Xczw
	 3tVT0wm1Tvsog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F7EC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 08:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034198282.25624.14021288587374685993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4d37c2dbd91843b4630acca0c39f7c509f6c1a7cb0a36b79c7e525d2d42a0c
Date: Sun, 07 Jul 2024 08:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720341982
