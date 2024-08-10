Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F8718AF9
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723315554; cv=none; b=oYQ01Mp4mCM/iLXHydVXS09SJ8D9DwZzIpmk8eqqA9n00fVdQw2v+i2FWM5C2I/E5UbshBqXBY0qI3yql5A43UZNeBYwmzfbhS+T0NX9psmsh+z0L7mH4t2HA0q9HymeqqbhQxgQ2Ft9V6jJBS6gZSBAsQJC1Uorvj1MhH2CNd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723315554; c=relaxed/simple;
	bh=Mf8BZJgZlgN/A5vJh4aAsFIBNhduuIc4BACrvd63o+w=;
	h=To:Subject:From:Message-Id:Date; b=mrZ0X1nJJvbxkD7spzLZo6ustcGiwhe8gOGD3vg1KRyQxu9UttuZhk6WXjO1lOghUTi84z7ioJ5UtdsCASOXCiQfPCrCpIPGb053VF1b1ZHwjgF9dCpa+WYC18jCbeP2a4+Oru3Dk3Wgc/jREZXxOCr4Y/hk9Bhly5aRe0lV0to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhF6VrD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhF6VrD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA084C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723315553;
	bh=Mf8BZJgZlgN/A5vJh4aAsFIBNhduuIc4BACrvd63o+w=;
	h=To:Subject:From:Date:From;
	b=YhF6VrD6R7Ar/dI3z54y2jywfqXZp8pq3cKfBBnn8ftLwmTv830FmpqZYZCV1ejd4
	 pDH+L9fcoc8iaixP+pZgfMEaArVEOi+3H24D8iZNRJSUHgT9lfcg4vStDMujFZkzEA
	 oZyhb9VKLC1aVBv5tSty0pwlIB/pwWulzsW6Caa7NhTcsMGXKr+O1P05Cd/K/LZsWB
	 KzYwE5Q81ms76pLrPDFtv6XprJazjNGr+Zqmxi+lCLzyy/DyaYMfXBtRL68imQHBdR
	 EpGuV1QAfhZ11Gfkk1ULkBYX+F3aPh3oRPGPjFUC069h8fDshN1gmG25vNCjEoLV6g
	 07KZbLz9wvmxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9628BC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172331555360.12725.14432464567135636407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6bf2c6800694e03a4ae1b5113c5401e3712dce7725791a6080cf541c51ce32
Date: Sat, 10 Aug 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723315553
