Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4989D25E479
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744624794; cv=none; b=p829ZbaeQdCdRUo0dSxykiDn/B5P/bDYXGvtfRsvTXnTRzwFd9ERPad1RPIYb2Jg2MOG9ptPx9g5rD6xU55Jd9Ak41kg+8ndfW1UXv7jUu0/w1ClKv+bd7iV39+oizFKay2f4wDDAl03pe9NxEHq/c26e/2TF9Sb8Dei1jRc4jU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744624794; c=relaxed/simple;
	bh=nbN9rMWZfjGkxA2K5/e3qovVJOYgKFda9mPNwmt8DCk=;
	h=To:Subject:From:Message-Id:Date; b=jQzaZx6HRHfb1Z12y7kkgRLyK5wIGYL9HiSIRUQw3NN3dIIBQv1SlrtNl2dv3ZOT8iGvEdlJBZ7AS1JQR3gc6sDMN+Vzslj5Q7AVg/DXEWjbbblV4MVTXVxRb0EcId2hkKEukWFaLHRBSzVztXywaotwt0TitkC6Au1xEyaaB1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJvAo/0Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJvAo/0Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD01C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744624793;
	bh=nbN9rMWZfjGkxA2K5/e3qovVJOYgKFda9mPNwmt8DCk=;
	h=To:Subject:From:Date:From;
	b=FJvAo/0ZxJpgz94IcTBI2stEDXkByl0oSasazIsL87t6caKm3OGjg+60250llsf1q
	 XwdCgQbMkIIY3OPIcH+TdxdcJicF2aK+QuffdRVGzaIRNpFXHCEkmMww9CB4xKXDkw
	 /ZTnGPAv0xPNNiZ5n2cB969n+gfxDn6c2SyanADP5rnRqzuVaSc4nqLTkS3s2MGTji
	 RxKvWzo7gmLiijW041jS7gt7I3Hl+V8dukfvGNJke0yqrE3XO7q+abTqTeqbbHDasp
	 PoZW4ywamUy6Xwfd2a0QrCYYiv6WneWsMKAssn4IlNL59zkAN9UwXHrGw9RRbpJTSE
	 4Zca0I+Tppebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F6DC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462479359.25869.5376399296170198728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9dc1d3bb544392aa9740ffcbd91e287afec7f3dd0a9f90a823f90123a38735
Date: Mon, 14 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744624793
