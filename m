Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EFF9463
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782545914; cv=none; b=WCsNWnKneXFBhjUf71O4Jsby4uI+2yEwkKYdjhI3AzJmbTNJfhortNSt5BUcg02d5JA2vgOMU+OWqBB/LG+vXiPIfkHTwv3W2IK3YOgVDdcWYwCTA8YCEOEq9m+qvRidIo27d+G8bwaraX1NMKtgIwpe86HWVze/ahQwERRPJL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782545914; c=relaxed/simple;
	bh=BGVtG7TrnNpfHM1GFbJNQT5H5iejfLedsT2wa2ds5zs=;
	h=To:Subject:From:Message-Id:Date; b=GdEFFjCTytU1TTLCm6wJqfKQF2bRMVqsZ4THTzOBxNfOoDOzPtAYiJMgOq1dK4dNptkxGP1iFnyfHVv6rWNOYtnljq5lEJRblcMD7Ygv4JsJw4dnAAZjlCo0KyNvH8+2jPf9MXHrgUVypybSHI5sCMH1jnCIie2CvKxAylt9vDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/cv039f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/cv039f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB878C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782545913;
	bh=BGVtG7TrnNpfHM1GFbJNQT5H5iejfLedsT2wa2ds5zs=;
	h=To:Subject:From:Date:From;
	b=h/cv039f+2rf2fvZ1Yg4shAMU/fvCd2i4U2WQ1jtJPIFmDM+Vb7gBo1k+WoLG1sEX
	 uoWP7vpVRm01G+zSS4zZxkK8+7mWvAAoN2SwraFe7DP2SqoAdwNqg+NG/wTlfL6/0y
	 r22ZZ0cfzOeo0nhMf/cOHhk4QATkAc3UD1qVGtipEYfZNZayGiUXgYg5bRNsvfvEpA
	 hTQN4demL6JPxlDSJZGqROgHTQ+ThilIvUXdCV2qr0rECBlmVdIgfXjqmFymLkjv+H
	 RIfZt6q3FRLOSuRWi1LJsbIe78577G7qdI/JQiZfH5v6FWM2JJybkzyNJe+518yVim
	 09zmkN5n3Mx6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FA4C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254591369.27960.15141971377705995501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6dff28b9cbf82808c9965050ea3a8a0a33606c4f750bd1b4c54e8a466ab10e6
Date: Sat, 27 Jun 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782545913
