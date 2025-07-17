Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01051FCFF8
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752795593; cv=none; b=GgErFZ/rO5VCH729zrazqA17N8ErjRT4ITHwbtwpm0pxJdjf+wioeRrPSFTj0lLXXpldgr018KSllnYMAUofMEic1LAKGTQ3QKQiZjj8CMuOU2eo6VrcMOi9crIqwFSjlM1qSWAhITxziiwi+5FeNZAzkw2DanlvVZyc3aXjrPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752795593; c=relaxed/simple;
	bh=IZjgD6WreKMn5j1J7yX51zCdLmH2m+IVKaIx3HBP5Q4=;
	h=To:Subject:From:Message-Id:Date; b=im596KNwtqlChJ8e0AQeSETW+guUvlK2PqidlHS49gLNvZ+FIxe44tr1273m/4BVPQReZdnDa4TXvhmwzQT/u6Tzs1AXriR/D21ivgO9WCvX7zBVxZ7DQxt2wuFGFpZVBZCjFQB84LQCe7oN3KB848v6abtyQM2aVpZDTKrtqSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=en3aBAX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="en3aBAX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4ACC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752795593;
	bh=IZjgD6WreKMn5j1J7yX51zCdLmH2m+IVKaIx3HBP5Q4=;
	h=To:Subject:From:Date:From;
	b=en3aBAX2PeARlUqMhUg15TFpLnL3mkeIAmwJHGiFspdax/0fLVmq95kDhUL22Ph6c
	 3w1W8R7eoXU6JjjqpqiDln4sK+131pbLPO781qCSf2NCzs1vgpwk1O1Py8am+6zRxg
	 vwq58DG7hRtaY85UoRXry84twfUrKwG0lC6berY/IoF4lm4fg1WLK6zAFE5VzFJfHJ
	 Ojch7lEueA6LAWd8qOMW9jhX+VEkuGr+mfCTQZwmLKGxZVFEu7GWKODV70xVJMTCqK
	 iQSLDRkpyEPrGMwdnd53urBCCyXORJqJWkmTnvqwZql5bQsJdw+HXTC4AJCoR1XTzF
	 6VEWpEvb1/X6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90348C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279559358.3952.2159428531537045037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a56a8af74b3f3bba370e18a79ad8a4882ef878210426218cf044c783b7630c0
Date: Thu, 17 Jul 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752795593
