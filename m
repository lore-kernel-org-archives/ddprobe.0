Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF64519CD03
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768614233; cv=none; b=QD9nGnWrSugZU0LhqYH12JcPKH4F+A1qqkoqs2pcv0CmlwTkOnJxYm/hOHv4Cq/hMQIXlfbwJLKDKm4j8TNh/TwOI4avu6/X3nkzCGn5nFbV39roXzESaIs7JoN8wKLU5AM6Blcx3zVfa6IOo6MhQWPa1ETbHsrsrkeeT5zCWEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768614233; c=relaxed/simple;
	bh=Mm0cqhjlpDEpOaAnkq2hJBm9ulpgz8HojwxnlmNaOVI=;
	h=To:Subject:From:Message-Id:Date; b=JMgwg2rzknYdJFzwG+JEDxO1zHPbZTqUAqgWvxw/wyFsVAxdNajB4CibyPhvckhei5LfSDqSQTbGSNHM4oJNHoZw7Ren7hX0wMbCiYyKMxlb6S8HkCeVCluIseaSgm88jTfkde+QGjS0jytWQahzr3ES+u9bX+cPlpCK9Lp5kvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKgH9ToH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKgH9ToH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F3FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768614233;
	bh=Mm0cqhjlpDEpOaAnkq2hJBm9ulpgz8HojwxnlmNaOVI=;
	h=To:Subject:From:Date:From;
	b=hKgH9ToHlYvlj10MoZFDhH3YYVUNZpZDNDzsCDlYpnwgXR7Svf1UWaWsGQu+aWEHI
	 a0uycZwCbOpNai+mozfhCwDCaK0yy/YjHaB0iDfrBBCmc1q1bm2NjvfIzeoLedt6HQ
	 VcSCOVDFCsr8bdPBVkTS1UJCYesZetx2FbwgaDG0zXbI4gOsVgW89OuG76F689z7D5
	 b16OpBlalT+2/3WZav14lBGYeksXvn/EixETb7JU3tbbG2ldD7ZDCOfLKUmJHlamXs
	 iMa+Mo1/QCdtjKmWKJ8MJv6sHczquskFd9J7BFoU8+vuz9aYzJ7MlZa7LzpdVyR+8z
	 WTQBSNMk/9Djw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F541C9830E
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861423357.16594.9972884007081591018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b354e9237907af1f35b5100a3d48d6048afbb19129a2562a37a27b38f703995e
Date: Sat, 17 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768614233
