Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6F322FF37
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757909394; cv=none; b=lKOIgcjkexDLE1SVtDWAHmjGtyx2M1WH8OtLCh5E9/UycDfr9ZMOc2eOd7yr6RZw5PnCf7H93Ac7qGDFn0kie6iakol//EIFXA3lPPNJJnnlz+m84/GKrgtLbssXTKVPVQLKBEjriCNmHwJ1EhGoCr1KTxzrQAXmZPD+e/J31Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757909394; c=relaxed/simple;
	bh=+tsYGXfJgJwzgbEF2ZlrK/vTl25nHkW60BK2QeDRuPE=;
	h=To:Subject:From:Message-Id:Date; b=iw6Ap8qWzIVpFJN0ndWYgwNjAHqIqyaVKCyqoAU9/gx2hknJnyPWilinr14bG4jdBZGMITz/i4vFzGzCPibbyXSQdnRIqX20p3LUmMTQQvOh3rCYDsGdXGXdQS87oDFmDK1ZiLEwQxUGXVG8G5rz0rjMSade+nKIlsL852tAl+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNN2fvfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNN2fvfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A4EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757909393;
	bh=+tsYGXfJgJwzgbEF2ZlrK/vTl25nHkW60BK2QeDRuPE=;
	h=To:Subject:From:Date:From;
	b=NNN2fvfvIGapru5pDUEZhsv3URdfHvVXHZ/0vQ0RHx15HlLWDKVozwFY2tVmK/blI
	 8U5VLr24/cSqnQOWsc4ifc0oD/8VIi3FEAmABXQCZDT4f+ZFY/q/dKyYp3CLy78gD/
	 YI2IppL0LqfDp2Pt0t9ET4AOqUP4dmZYzChXgybnpQp2K/PD2laMx2ix/fdbPays0+
	 boTCGsqNuDIUHxFTPwXKC5gGVzdMyi0FfSJnKrkiMdXqmK5URXq18dK+YzaC639s4G
	 YElVl/zpdCGb6tWk+Lrysh9WD1tTssG4RJqGT5RttYI3GFKIezePTCQgkQteyIk5mg
	 mIxuDD0j1571w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FBCAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175790939358.21072.17041116129490707900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c1d37dad0096741a3f48ae1c00e5a362c94f6611afb7e4bcb2cd5ad0b7ce0c
Date: Mon, 15 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757909393
