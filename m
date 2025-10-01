Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233A014A4CC
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759360794; cv=none; b=QkEbuvGjcwQnZcYf1LVHvN4uBbciks5DE/DrJa1guirvCg1q+5F1agoQfbbHPg/xOV/5q/VtiXuWtbc9bQ+z1zLF2Sqa69uVPNMpxSUHAuK1GhYf08T0oV++oHCsgs4L8Q6WePWkw8/bN6DrK7Q9X04aGcLGlyynZswy6JzvAW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759360794; c=relaxed/simple;
	bh=QDsAKyQ1axQHTffjri+oGCregqiDdC8k66rvyVnBcvc=;
	h=To:Subject:From:Message-Id:Date; b=dDJo6ODBfkYJSOkfNaGg/SebU2YMTNQKVCyLovB8qG1WUEL8wcf4WqAkJhXnJlj28KJqL3I6lXJSQdhoaJI5Tz+fvbADstiXDloVYMV/8YzqZKt1FBvW5aDIs/ITCGua0Ppg4UAdVZzdxN6mdSC0I5oYolflW/woeoWp690f/Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHimm4zY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHimm4zY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1208C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759360793;
	bh=QDsAKyQ1axQHTffjri+oGCregqiDdC8k66rvyVnBcvc=;
	h=To:Subject:From:Date:From;
	b=vHimm4zYH1r062brW4tT9V9wDwQ+uUmnL5+KgfiKQylGcsBXMaHFDLzWQtAgNv93w
	 TbkfDSUQ3hO4Au4CniIhXOsece95iGnDzXBZ7pIZlDfuSDvKGd0/UKHlTBUE2swQZa
	 odYmILDvBLdKyHpykXL/Mjt06eBKH8M1TA0aL1t6jBNct0SfZvHWtEHPhH71Ah0Kl1
	 GTCW0plrRPg40hhQQBLVNAi5th9YETDwHWh8UvMS+3nqa+El7mzfLTQTzP1nrnc4Ch
	 QyxwgEZTrJLpTbIM/9UrQ6Set3k4tfnstla2ujVhfHsrkzqzSCVJ8Ff2q6t/aA3dvo
	 QYqXRBllViIzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BBCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936079357.28600.4328469288172489065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edeb375422d78bf50c43719ec1d73e0977578f6aaa827729306b5e1a0cc2b183
Date: Wed, 01 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759360793
