Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCCC2D5A14
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756034995; cv=none; b=O2tygDa6iOSgzQtZJrlIFo7T6exG7eOJotru95xFmrZ9eNckpfHhqLOQKhr3uCmZg0YqGwEbXbPAPqjbKrynbIu0aHXrB2n1B+JHMZeloBg1jaFjjWvoMkVS7eAcIOqAocPsDDHBP9+xOUIoGOy/T69E0TJwsuaUsBJn792ATqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756034995; c=relaxed/simple;
	bh=V/EbbB2M5y0FB7d6pcwUXJ8kwiUuyoZ/79Sn8mrZOLc=;
	h=To:Subject:From:Message-Id:Date; b=BpYjHQdvOXCMzsRUNVkCTRDtyVSc79mnqjVtyi/fOk+sgbgi8kQ3mSxpS9/3D/aOMR9uOL12QviEZM06OCeVAFdQlU28dLnCuTg1zfeYi4G0er7ITtvIBYiTbCK1pBMN4TQPveK9hWFQG3TykdOxZTijZ8On9r/TIp3SMi9pExI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZFBVVsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZFBVVsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0833C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756034993;
	bh=V/EbbB2M5y0FB7d6pcwUXJ8kwiUuyoZ/79Sn8mrZOLc=;
	h=To:Subject:From:Date:From;
	b=IZFBVVsishdSo8FDvtgsTkeyHRc0XK8oPPlG6F3zQtUFEKlXwKJHuDOlG0sML61VE
	 W0N1BuqAhfOZ08VBKP7jlbz+ZlJBwXrM3LXh/Q38vDCeBOl90U1XC22vVgqyWw60J5
	 vQepzxQ4ktvaHsqwjZ8Hpe104EEr8JdmuBXFEIaaMoFg90N5cd5MW9Ld0por1IG3im
	 sQOQbyLSQkEciKi8wBdPqPikuga5VXReH/4nzEYyJWofSELoJjSHDY1mF4ttOC8Nr8
	 H8RwSO5VHLGiaqUyR+ZJHw8Icpq534cAvfSd5neDf+ujyv947KdIYt8HtuEJMSACu4
	 ifwf6S5PSgL4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B6BCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603499358.14104.6248537723559662851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f779c3adbe0a8476db4f57652d99672f9f14adea308757ab2e73c8a0132211
Date: Sun, 24 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756034993
