Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA6126F47D
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763042994; cv=none; b=eMBhFKHaMkSK+B+psLL4kJkYOmRu69p0S5npTYh8fznpgyJiUxQ79BXgd8x97W+3+wD3YwYouoTaMyl8FQxNL1eaNarNLgaugX5paswByjxJfh5aMLlZ8v7DbL4zP7mvNj7PVoIrw3T6JwxeIOasrBicdp8tU+fdEFEZsLAowV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763042994; c=relaxed/simple;
	bh=R/SD5mw8g+NYlN6/ME5BVHsRcUFJ62vcI94r9N4kiAc=;
	h=To:Subject:From:Message-Id:Date; b=qoO9NBFub02JPkgK0w2vz1cl90f7z6lOmRqHrFLJHmwRCnPbUjfRlhl2SFiLXhtwrSun14piINU/uoRdjPdcTqZS2QK2ejqFanbzinkqYjS4GmyTerpGuW4Gp0S/Cv8gZkxsQzavdFwPlp+IuN8FBWYLKViRyacbL7qMo9jezUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6ZR9TVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6ZR9TVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBC5C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763042993;
	bh=R/SD5mw8g+NYlN6/ME5BVHsRcUFJ62vcI94r9N4kiAc=;
	h=To:Subject:From:Date:From;
	b=B6ZR9TVuAyGk4sPjIr6mYaRADcfnKUKrwz74i5rY8lPRBPPX0Z4qbWhvoKBGIGCkA
	 DtM+n+lRs8ZORXoo5JJKdwuEmGI+UDDapFJSCbKE0ha1BggZM11fcW96Pkx559gkDu
	 eofgtL9h51HxADsPI+Xy7WSxB4jqhcqEm/mfegwPYEIzTyV9wzb0m2ppl5WegalIO0
	 6MaDKhoLm9ESAnvYZjGcm6mV8yR+JMm3MMywDjKnxo7kVCgHKhDi+eWmR8xkloqaMj
	 yE4bT7Az+hAIGrUCbleN/8lNOo1Si2+cJ8a4eNtJx2gEIccM9iXlJIYXiYv1MpObSL
	 YtZvR8Sh5pV3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91900CD6E6C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304299358.28341.13172286040206555804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0155f4ae8378d7b7e9b1e9bf3dc23642249197fb75e4cc109014945e0b028c64
Date: Thu, 13 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763042993
