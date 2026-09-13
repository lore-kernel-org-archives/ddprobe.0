Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456654BEE52
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789299034; cv=none; b=j89gXkWo4tBcNhFgoIdYC7DahpP9egxzYjeBTA4iZJgVvGKFbhpUMlsX746oLTyTWBXCs5x4mUGlfHRP5IyHE4RtrD3EvkXbU3bkdVnHZRV19HpbSjIjNbdtDw0dj1GYIdhtfBMh/qfj76ePxwOVpDg18+E40oiezNj1oe/n6o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789299034; c=relaxed/simple;
	bh=QEQgnJ3PhlLALGwXLe97jCJH3YImhW2yJUhSOAcOZbY=;
	h=To:Subject:From:Message-Id:Date; b=e1ZVNHr9jVSVQO1+U2/CRwiTVGxJ4Y6XLyOr08+nc1co5Yw+QJKJS/oLOLP2NQG1aV8iw0qho3NDrrN1aM2n6XeBXULQX2mDpTHqt08Zrpc8fwIrdyXMpa77Rg5vuSwrdlpM+DsBvQCfGpB6crPLXgB4SQMtPtJKY5cxl2371TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5vzyqrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5vzyqrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5B0C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789299033;
	bh=QEQgnJ3PhlLALGwXLe97jCJH3YImhW2yJUhSOAcOZbY=;
	h=To:Subject:From:Date:From;
	b=M5vzyqrwNFjquORXlXdQl3jp5yk9Afh9NAQjxsCLaa3WxGs3sRf9jf2MncJ/JdrY9
	 b4gQoUfH5AmSDh6nQz61taloKMNKrWd3gW8g/Jyz+IsSuXAt9soXfNZhfQgyO9ezQt
	 8EjF1DyYN95rqKLisrGBW4hSfSSIplxh5LD523HT9yDOVa/MSF/mWyi0OY0kQtj0wA
	 sNNPCQYs0Kqj6Qiwi48MUYRJSFfEiNeM/3yzIAkGugCUmiihc/TzXWtUAmutDpgPXo
	 9tPBXxowMmhIL/nP5H/9bZ7seoq+m756zGf4/h/ysLC78+nE1hBaBfWakb1Hx2xye9
	 7sZJSUztHL61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951FC88E5A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929903368.14559.12095420395215749409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959fb39ab764a96c520e755a4e265654e955f4785f25b2e39b9cbbf443c358df
Date: Sun, 13 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789299033
