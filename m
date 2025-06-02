Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA3C2E62C
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748843994; cv=none; b=blGmRDlQT3wpJ0jVBvLRys8QKBPuKrufLTi0hoakSUwuLgx8vswqG4XSuYaquWeeMthUwc7gt0M4zq/j2IDuQA6mK3JtMQu/G+oowDXUuTJbJdPnq0Yi54GIewMQBVoNmWLJXFXJmepSb/bHf2wu89tA1kJG9+B3NguSeYOBEKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748843994; c=relaxed/simple;
	bh=uGEgumC8j+DMPrcKT2YLfzwyUivGq9KN4PQ7aBq+j9c=;
	h=To:Subject:From:Message-Id:Date; b=R8Smh7CS2G1waASsIsKkQEXg2rHe3NhExqiGV0KQYCNmvFhe6FZ1PcfW5ZbGvdhhXFejFeT/pT01SqxSoOyHblKsN7dXkmbIOayA63xlnS1tD+GyuO8FY74BxXNc5Xlf7e8Zf9Vyc/ELSUB1OCAx7sswwszuwpF/0Fb5L09fw8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVbiquZV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVbiquZV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC87C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748843993;
	bh=uGEgumC8j+DMPrcKT2YLfzwyUivGq9KN4PQ7aBq+j9c=;
	h=To:Subject:From:Date:From;
	b=CVbiquZV9gTGjeDUM1Yi3AnOMrpP2kOQ32kDzCsCxRLhqjY1TtR2soThMP4Wcsijw
	 Y+J4UwNxaHjNiubvuLLaeAsGoFn7jj05D8XzwHk/NXgewmJMWPgkYLXvCUY23aY5vg
	 I/vdZq3m//ikETGCI2iwzqJq6QtfZojks2+nu+TLWjOjp1bMabZbhysJPDHDEmIQNs
	 nI/hEkYtUjYwWqEQJrPkMDoM/3++D3VdcTW+nRX4QbOfCm9ehxxG4yM8DVdyc24TlC
	 cnxT0UEZjbdtHrcOElUA38qnGDqzy3QGOpZoqAiivaDPZNKpagjwlopouD3GHxZy9A
	 g5dLPkaaUnYHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CAC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884399357.5771.7312384769802168662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b97bfb7c8232818e3871ac7fa0e6983e176ce37265001336ed6bfa970252c3
Date: Mon, 02 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748843993
