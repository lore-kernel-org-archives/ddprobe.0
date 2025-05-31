Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5061758B
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748703594; cv=none; b=F5kH6DsyUsVg+hxR9F4N9DmUh36opDpWrzL3kHXVV9exBPG840+HGXB+9ei36fj/HMDIfrKU8SwMLdSsA+WsqVDLN2VxZM/1g1Vcv5BTeF7TR0TMDNtU7N3Jtj5kYku42x2FlQJbGfU0Wrde/YozSMLJY6es0CT8U1HNgy7eNK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748703594; c=relaxed/simple;
	bh=nF96JC9DqfuS/5EDm7g6rA0lJn3ztrsemCEBPeUkxqM=;
	h=To:Subject:From:Message-Id:Date; b=CvqMCjKHbVkviI1gJd3puuHFob1lb3/3FeUBnEbHQc+n08T1COZh4T8K/Auwf7rMT+TkLmDHNtHsa7xXNrTTw0X+8w3/cosbawfUg8tzX5t2MKsU8iz3yNBb8EKa0EMSKOg+NQlJE2VGYecDsdM/jZGA3k76kLwWBHr2+bSWI6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hr1BQkI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hr1BQkI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FB1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748703593;
	bh=nF96JC9DqfuS/5EDm7g6rA0lJn3ztrsemCEBPeUkxqM=;
	h=To:Subject:From:Date:From;
	b=hr1BQkI2uNXGbk1/AW7ZWaskqAKHsYCCzIyXfojBsjdMK3k2lDJYDpqorpPQ3+Ae1
	 nq8RCmOWM1Bebj9e1k1Xz1vG2+7qVT1LpOrGeYW8+gtt4ceW/TrRtAIqdOZvM18006
	 j7w9NpCLmjkGrGVHnXH8j80XkwA+5718R2wTZUOnkZ/KOzsPDXZVGHDZiR0fHs0PdI
	 W7e7ABaU7DCCRbScnGW+SxuXDDuIndQIwHYCefBN/yC+/ZTFOpx8JoAY2sEzNmh+8K
	 YAzBojsyO0UHRw7YCIodQcE1sdj+F3xCb7uYn5OdrlcJvR7uviZXz7yLSC3YkRBF6H
	 6XMwNs0xHI6dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED7DC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870359357.8204.13670342041173098968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd53ae593035b99d7a98506c0fc4b29a8eec46947be0653e56cecbfe2e4f754
Date: Sat, 31 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748703593
