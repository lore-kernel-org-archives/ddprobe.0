Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D819BA29
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712794697; cv=none; b=YNN4a23fZ0yyPwhqq90Z5yNUq3usiHtvQGbcwQ/LHvtALnDHk3E8Lsd545ZwHSWQzqZH6jvs8ISYhftTLT/YsAP0mtVFwjyW8f6siJXhZAAIwvSGOfY37ebGmbgzU4H/CIeELDfRo8V8rKI2tCYugzpi7JJX1LGZfzkg47wzZ7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712794697; c=relaxed/simple;
	bh=VQl1av/eV5FJMbaZ8V/GUWx29fn7MGva59mmVBQslrk=;
	h=To:Subject:From:Message-Id:Date; b=E4s8OCdTGw0hnq/CLVUajVuCQPaPJRBruBnzaNAhd9zurkbc4FB7x45oX6x+xRJNaLD/wsnDN3s0GBFGpfnMU56QkLEHC73XPJ7dBxBltO/WzDE8uBNNfOR+gtklRBZrUAXZ+8YtqYH8lXeN+uCoVl60yOzykiR92pTqpJumuq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwV6BGDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwV6BGDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C27C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712794696;
	bh=VQl1av/eV5FJMbaZ8V/GUWx29fn7MGva59mmVBQslrk=;
	h=To:Subject:From:Date:From;
	b=DwV6BGDeHUJbxcy16PvV7CcqY86K3eMZ6i8BCRKFexUP5eb7L5YkBWCwA9dCWn6cr
	 7qyEoqkILHa2OzZ4qY/yyNecRfQsOxMm5QECna0ZwYBOyMqaiJd9P+92e45NPeoWbQ
	 JqNCVmMkTAPoNNQtFAKNLalSZVLsvvIArCaEXpX/fbbDs6EU/lCreD4Ow81P8ps6qC
	 jmdfsXLMBE4Xvs7W8Ukb3QcyYGD3rVlDP1y7dJ+XUqBTQjx4c+6AhrQagnB8NMi2Xv
	 WnpMg1knRD/KadlxorD7SJ2KjPIHDcrx8gX/dhe0abGRb6lUzcaGU7K+FUTOpQisLK
	 HfQ/N0xR5vcUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A411CD1297
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171279469642.24690.13039929888246611086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae2e6515152bd178daef4d8974fc5daa320547b0aefbc854218806c6364d0fb
Date: Thu, 11 Apr 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712794696
