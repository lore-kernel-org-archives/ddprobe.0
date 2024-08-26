Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD8E3C17
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724686554; cv=none; b=Attw4E8JJ1rRmExTstmu22/YjlonNhoozJjctOBzBzn7DChV3w3PK1knUuR7H9rUQw3SyvE5q6T1xPp7ABy3qEjJVhstG2uKtLEao80IgUZyG7A1OUylYIMyIvwF9nY0N0KTIEbOT2rz5Nk11+KvcsyVxNxWc/okHwxecMuX4J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724686554; c=relaxed/simple;
	bh=sYrNsx6UyUplpUR8VRGAks8no4MqVL3Rwkj9pReB9KE=;
	h=To:Subject:From:Message-Id:Date; b=RJ4S494tEAMySBpPxnqGKJVC0p1F9aDwyeHPJNv3quTvFxcCsYjzVhRPPI9xEZu3vtB1GeczTijNgtG4TsG/H+ms1d/+oERkcE/sr9lrIihZEWrCVmWhI5HiKJGxUxWtfag0ZpFRWlkrS5hb1NeduHl1MLXJSPgv2LDVUxFGTx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7wGKvmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7wGKvmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5FCC4AF12
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724686553;
	bh=sYrNsx6UyUplpUR8VRGAks8no4MqVL3Rwkj9pReB9KE=;
	h=To:Subject:From:Date:From;
	b=t7wGKvmhJphila6N92KVr3jkJwpjaFa5rjOLV/bxnpGV4PQKM71aH0lVXJma+hXgw
	 /aAIIGbk+Nn0JhoVOshA9G1OJpqX9avJAr1iqozw2TcBWBStyzCpZKbB/snOyJR5dU
	 xe/tkeDTQPm/m3bWQlaoH9Ts5JDQGRunXEKCBKMO72Ha+iQwKBY40UQXFWzUS5nnHs
	 zE67pTCbKmOneeDIxhxBsYvmlPMU6ytyG1WE837PI+jmb62pJvUONRuJmgdx/cumZp
	 mn0XPmZrO9OHoYKmIbQcUdk5T2lbAm2VqJs16soGVclpY4ndBnk5cXvK/yPWn6zMcB
	 VstDGEgDRCodA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B0BC5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172468655358.7890.13380262310036611474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71b1a922b9b9678e465b07accce25966bb618dd1ccfcbf1052063275b6c1941
Date: Mon, 26 Aug 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724686553
