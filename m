Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214B038DEC
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751174394; cv=none; b=p/NThROWmJXEKb/LL/FjKUkMtMHTyqvoFu0g7Dg087cp0ZgLP54NFNRLBOl9LMnIoE6h0RKBP3VNiDBV/ByFF2IaN8B4IBcNN1fi00uATWDpWJmUtYEfZO9YBejSdnz24AE3cFpykZ4RmeiocDRajczwhtv0yPXufcQ8oLYSls8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751174394; c=relaxed/simple;
	bh=Wc5ldXfAYSkoDb383Dzb2eYM7Mc+gUGU7yffAJrnvpo=;
	h=To:Subject:From:Message-Id:Date; b=K30gaTPmipt55JpbbkBdBsxhBTJVXdi9I3G5mg3eA1j3Eh9+GdPytm4SWdyQVOheLcPJn5f16m5up8lQS2SSFJMO4wz9CMcr0oVOxnHbcXKjak6QJ3vEzH6Jq4LvBrfNl9zIkJN2SQlleCx6490t7REfmzMh1+9i37iO4WPiTQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=airY8CaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="airY8CaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3527C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751174393;
	bh=Wc5ldXfAYSkoDb383Dzb2eYM7Mc+gUGU7yffAJrnvpo=;
	h=To:Subject:From:Date:From;
	b=airY8CaHEHeuEzkD9XG0tcp1hakt5GEDeAvPfRenBnyZKzJeoxmqsYGaCmRDX0pcY
	 wFhsd6fLJQPbsMyEvHaBLWBJ8X1Ja3A/06eTNN0TwUmXQIEhtaS5X2jueq59dufAVq
	 IKk0SwwqPed89HPIyjw9YP1rpHC8S0fr0M93s8N3BBe/un+DNcqrFG5Kk09TZAkORV
	 mKe/Y70oGeWsVN7x3z3rWBwg3Z11j7LWBoAFlDBY8IMaNcaOkefxI7tc7I5tBADjfe
	 jAuPn7S0JxQRNjSyvTyG7UCHErGWDC1RJ4NO9TJjN1ZyVr0wM5bytyWszB++Zk18/w
	 N9/pSkuGqKj1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02EC83026
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117439357.20948.15699312056178007171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a85f5010a268b8792f8391df5268a7810a6b2c50f80cd95d36b0a80df7d69b
Date: Sun, 29 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751174393
