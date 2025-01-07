Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D9A376F1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736214354; cv=none; b=o/1HzVinhZhwwPvvX1lgZ4OFvOvJgUFgr2diJDuXlWt9+ThZDfg6R5eOnpnN1tsrU8NWNjNohRCUOEpOarLp/UYPOIq6OWGl+wwPDdzjjPGkNqm1IJOzJV/GSJUsddlIy+vFvo5BoFBbAUzM5ntqgwBvjAw4Vhr2iKDuNxPgrww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736214354; c=relaxed/simple;
	bh=/0OcFpKmDuEYWAzqUuH+ZFET2Hw7VovxFr9S7+uYtEg=;
	h=To:Subject:From:Message-Id:Date; b=dBNV+V94GibQELt3mB6Hl8gWQSR7iiypO2bPEDRQx5bLjhDIYd3ownCDnax3zbGWb7ZJoLButmg+yzQKXLLQ/0f2/QhRvDiuH7vxY/ps7vaG9KRkxnv0Lk6FI/HA+Al4E8UpIGzGZrXpRdLU3pICYp2/uJdFhJ357b55Jz1inU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy6XT6L3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy6XT6L3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15B7C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736214353;
	bh=/0OcFpKmDuEYWAzqUuH+ZFET2Hw7VovxFr9S7+uYtEg=;
	h=To:Subject:From:Date:From;
	b=Hy6XT6L36mMNtdMtbGrO+xfQb+RptygJnyQ348Cpq0nTxws5VML/3VcsyHi7Qar+3
	 XZ9d7xMpGzgU9WKjfe227o/XsfqsQo8g2EFQ8XlPTtir4ydE0YkhCr5sjY8mHP9kYS
	 GoYIAojK5pdLRWKc3A9M5hGmC3M6qp1d/TjIlNXXHKn3/MmkkUoFtoCeBbrMq6oZW0
	 CBRz5Y7kBidYO3D28W/aSBIn6oO3JOfDQce1mrtdx3ukXxUfn5yq4zYdKR/tLN+YrT
	 yAohs/pRxHPKYhqNJW8RtGuoMDIQlu5f11oLEbRSNOTJV5Djaveh0WShVzohUhz13f
	 VPjUK9XW9qluQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E878E77188
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173621435357.9734.16976907337492054282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ed9c8b19cd8481131489eca02390e6a17a541a9733f8b5d4f63489a177d043
Date: Tue, 07 Jan 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736214353
