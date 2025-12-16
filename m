Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4141A3172
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765917234; cv=none; b=U9RAh4ggNtf5F3GbzxKyNNphmaHKjxg/zazNC4zjZytnSwXM7P5jAiY0rxD5TK/xw7uDx30TckjIQ+pRS7yzQP/hsI5IKf4ItW6oYpAlIM0TQ1mrQv/kYAgYFahc13DDZA3qazk2dLAhuB9UZIwiBl5PRlh3JYVlW1Yof98BWDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765917234; c=relaxed/simple;
	bh=A/pQsD/ifWBOnUzrcEeZD29dPhImwgU6tR0ssLZ9Jxs=;
	h=To:Subject:From:Message-Id:Date; b=o/Z6E6PrOPjRzADivjyrO75LHG8iORCAF5fEnR0GSAmzSF7FV1UN6kzkiiKTx3i5Jkw15tmNfPvPBfqPdEuGnBaa+sE8mzXNiE08sVSXH4XFfQauQ2m1hsv0yJ9i/qXoh+nj5onFNZZETU6Dc2EpHZqxFBQzVY4YGeAKsLdA/KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owqTLOzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owqTLOzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF7EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765917233;
	bh=A/pQsD/ifWBOnUzrcEeZD29dPhImwgU6tR0ssLZ9Jxs=;
	h=To:Subject:From:Date:From;
	b=owqTLOzIErZugQxttfaQzIhSd519m2y9JR2Vxw/I7jVt6QWs+sHseb35MPmiQp4+t
	 rYa26XlP5QOVS2aP/LYJDR2QJVulxEuSTYUu8l5cFKTUYKPPkULEMnpJdm1mCFT9ZB
	 PIk0rTyXHSE3issZgffAGR0vovBOEelLc1ITWdZFKDCeLojADvd0610ZG2I6afok4F
	 v8/OuGraCrSWXUj1eohKS1an/+ujuqu16d2P9UWSW1gUqvnLQ3Xpxjnfr26fQ174Yf
	 gnAH2+UaaYy80jEoGsaKxkAsSLNDYO4cD97foYouBq8pDuG+Et1VSlx7epNpzaU8pf
	 Ge8skvtHDDVCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91689D637A1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591723358.21828.17597577418415835713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9010caaf81b1d64ff61fd77fe2b0f8d9b00a87f53ef324734ec4f85214f867b8
Date: Tue, 16 Dec 2025 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765917233
