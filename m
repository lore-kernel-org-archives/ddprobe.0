Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAF72AE8D
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761942594; cv=none; b=DC7wiw49l5KLBZuIA+VyGuVv1HKY/A0KxodargxOOEhOhx5i+n0bVg8FI8Cw77koVRIRuZ+akHLu7FIESQOFO9ru5h8+kw9zcwObJ9bdKR5lA/FnHILKg21wf9+jx1kw1DDQGvX7rpM5EMA3bSjQ73cXvit17YzYXyCIm8P5K+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761942594; c=relaxed/simple;
	bh=1/ZzRIEowXcgcdPB+NM3smIOsneS0neimoUv02leoG0=;
	h=To:Subject:From:Message-Id:Date; b=bRtXAdmaGPaDWqrqVZsPPcqJ7D7e7cu9yXKGiNmoKg0iXwCiXtVJL85MG3b+lmfP0fLqwOwvgHEJd+Isa2Bsjo/L6moMoZbxi9PE/3cqb+sE2dGfCwBsr8s0H/qrrCkA5dOaQkmNPOpD+CjSjA79gcN02yhEiN9ik/27wK/UCHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEXhvXU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEXhvXU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A675DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761942593;
	bh=1/ZzRIEowXcgcdPB+NM3smIOsneS0neimoUv02leoG0=;
	h=To:Subject:From:Date:From;
	b=IEXhvXU5F4XBSZwwd2rmWPDyV4BYLHMYKMflEWDy6pKdXbNkVI0l9We0qQQufwPdk
	 3DrrJI4788C/msEezwR9x2prtSIYrBqezZX/ICOe7+9vAz7XCa8ZtdFnCAS2zlG7fj
	 dBeq9UMh6DvijHBK1ACGtV04lx7w/bbsftvAgCAKEkmWpjtUsmi2/q9ir0wp4c+h73
	 Ivx6sgW09bjYmR6JkUqwHN872vzaAax3iWqHYPL41/udy1ICENq8t8zUxtXrLe7E1T
	 xaRPpgBTMHoJYydpHO1D9NqYPmIsD03RMvVj5Q444MRyplC2HYJ/skLL5vvQnwra5D
	 tIBpIKnFM4APQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471FCCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194259359.17768.7734427383137772810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47c5e812d136ebf8fb41b2702e6cff6f46cbd9cc9a400455ff379dbac1d92f8
Date: Fri, 31 Oct 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761942593
