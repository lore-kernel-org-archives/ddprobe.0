Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368623115A2
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775898454; cv=none; b=b3Q/xlBz4yWygVH3kkg8HerlshAL7LA0hiSlc9ecjQhTLgQAP7ujA9g6hV4ynDG2OIcmruC1o0H1frwaao+jbDhrVggdYa/jzOtGvsR+Cr820LQjjZaDPZu6mgg30IPe4TjLtbd6H732ZVbUaQKTDeAJDK7o4e0FSG6sDn6RRxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775898454; c=relaxed/simple;
	bh=oldmVrTUr1+3Y4d5D5WhbK8UFsgXrcMkLZT6/vOLRZA=;
	h=To:Subject:From:Message-Id:Date; b=fMC608BnkU94u1Vw19l6bgKEAT3fUZG3ZLZYE640HUvGUR+H5VznOtVDB4v5pBhyaVUOCoU44VnS5T9EyzPKtyGHLJ6vlLZkbkaCdR9DKfX8a9LusLQmlQ9gL5+A2ENdT3GzqnsSNqB4uukF62wSFveAaqVbhZRQrJXBcguVTDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y23MHZpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y23MHZpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA919C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775898453;
	bh=oldmVrTUr1+3Y4d5D5WhbK8UFsgXrcMkLZT6/vOLRZA=;
	h=To:Subject:From:Date:From;
	b=Y23MHZpx/yCySz5+11r7Z3aXjIct9QTqX6bUw8eJAMFl1qj65UQTOHZzBwK1UokSd
	 AA75jooCkPxY+bFnY4l+BZX+l7qtFWVjDLuZ5wEBjfcUv0g4Frw+psPjC1YU6hr2gk
	 Fs/iKx1GwSuHcoqzKQFqs2wG0KZWvatCUGNq2pxl65LY7Kf5W5+1jxr9PIQr6lKypa
	 CQ2N9MNYbDxY1YBdA/5LBANO6gX73kOAhoqBoL5OJkzDKCnHqBlb035iByF3KdX8xO
	 5Xk/4Gu+gsr/6xwXyrJSoeJZqay9b45vrkujxIkamkOlUl28CsqxBL1cj5hQg7l3qk
	 6PL7XMYIYsv3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C7F45A19
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589845368.26156.4071443630206604198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503a72a3fe22d2465f6058dce42e77052c3bc12e74eba35eff2e23cfaacedd0b
Date: Sat, 11 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775898453
