Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F0A239E9B
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758924594; cv=none; b=Lxnl5DmblXVbTFtEX4JOeRLFlf3rOjZV8z43wmcLE66oSIVSKoKEYwWeRRigy19yS84+CcHeL//eyNAopYODkOvtlmgGKhbBoeAdFz29W9r5s/BLZl38RJZzqfLUhh1SijIemgw61CgQskOMi7QQuXS8VCY8NOjYlsOJ679JFAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758924594; c=relaxed/simple;
	bh=5ol6PFPUJVX9kHoRsAdx8KrIxlqjBK8ELsdOIX1Mr8I=;
	h=To:Subject:From:Message-Id:Date; b=DSBJAdwetHbddKrLhNPlmV9DILs/AXOdrEXvwnBNn6TKXsU21ESRADo02lVugA+RQNW5gsuZM80UlCJIrzeQJOVSmmteu8GE/at+3qqHeDBXNsJP8Hhdp94oKeRQijUnMmP1Y4ml/1zR3l0uQBQZ4UzLCexPZhyeteoge0ZIzjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHkIM++r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHkIM++r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97A3C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758924593;
	bh=5ol6PFPUJVX9kHoRsAdx8KrIxlqjBK8ELsdOIX1Mr8I=;
	h=To:Subject:From:Date:From;
	b=YHkIM++rqU7cPFBeP5+Dnsx2JCFiBhL2bwD+kqu+jhUoiYe05tygm1X6aRCYL2dIL
	 wBQdU46JP4UCjVKtRuN10m72scVgQ/eoqFHTGWFNvXwBifrnd8My5Qmjq8zkPPSWF9
	 GuVPcTa6ROY+WkN8KArpxx6Gu4x35vGz5yZvE4GxtVvoPgCjRfJMbo2XA8sAJn9tb8
	 TR8yuytCeYYz9t9Zeh3Xj21I4A9yfKhJmBgdNQtH7xMvWpYapmDv64xnvrhGYlZdaW
	 FIPKyLqib8W9eNh7iU6LCNRbNan2iKt+a/GOvYfNCuwcW5kfzMaRVlrsItqKCX8OyE
	 oVUZRcxj9IIUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976FACAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892459358.12541.10852918573257707977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8e48b8b50db55bba8df3c016bc9c55e69f86b0d3f4c221015484620a041952
Date: Fri, 26 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758924593
