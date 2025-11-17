Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEC6245008
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763353914; cv=none; b=PigHE5lxwsoNiwfLJNX6JxCBjCCrUfZAwHVGIItElnb6G2n4XPOL+ctbDJmstfp4I+vM+cWQB8g7U8j4AJE/U6vmFAJj8o28jK5LPaauLrgiKhw71md7XCSRxR5gu03MnuNt6VNu9eQGdVuAzHMxcKZvXERunTr4+lfgBwPUYk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763353914; c=relaxed/simple;
	bh=LQJsnW5EAVOlsJS2gq2uIYnB4lzHDTxxoCpIwdHdWhg=;
	h=To:Subject:From:Message-Id:Date; b=BNdqY1d0gchw8FQOw7r925TxkG/cmkarHGGSrK8WEEwToPnxxNoCRX1OVNPenjxN3aLaimrHLLO+f61DpUwUuTd5ev0WtLqytWwPG0xQ4z+FVautHsjIyiIav7MZcp5tjjjqstP37DYPx58booawrd/ytg+pgjsuLAF0Bi5Rtdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IidLAyPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IidLAyPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AAFC19423
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763353913;
	bh=LQJsnW5EAVOlsJS2gq2uIYnB4lzHDTxxoCpIwdHdWhg=;
	h=To:Subject:From:Date:From;
	b=IidLAyPDYfbu3bMeTU0ZrZsi6k71LF1yXVEbT2zLAl9VO841t+JXa8Qio7k7reTrL
	 IbN5BsN7/l/C2J2p5Q++hQSXCw6be+yp0ExTqv9EEYCH3sEHV1N4KBNH7S9ckyQOwg
	 CbkVpD/ZjgOQy8wRb9tNhCt4JZSQd+SIPuw0o9dW6lQpJtn5KXY+7zdEQOv8XD/MeB
	 7mLgV4BExB6f4bwHXG3dTtATIM/wmYmOZj0xAor7HeOBrDt4pN0BSiqoWfROd5pY11
	 Cbuf13mIS0QM0c5X2wmw/sNYvtWk2LPosn9JWbBou+QgksLLkLJ6iRfemyA27L8GBD
	 Dewh9kokTqu7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9956DCEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335391359.26871.13169185850105132777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325fa1d720edb9dfe7a9810e486341956ebc5c284aedf2a3ced4ae7a26a2d3a5
Date: Mon, 17 Nov 2025 04:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763353913
