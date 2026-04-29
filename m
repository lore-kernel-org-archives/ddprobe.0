Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139C83A75A4
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777462054; cv=none; b=aO5qU5/rkqeIT6uKGpjPlgsZkMy3drLOdPhilSGrwROZ4GXxr4hmEZkxyK82Vl5MWZdHjDItHyFBBb6t7u3tEzc8Wq/REAEWi5vH3mzCgm1Av0yxLeFVaHOG5D/SnjQMxlAX7keqi2g3LGiOMHIA2qCd04Ps+z+zggsROIabcoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777462054; c=relaxed/simple;
	bh=rQh3Y0Rz+WjlpyldT2kvBrvLl6EkHNomnjssuqDEUZw=;
	h=To:Subject:From:Message-Id:Date; b=hVg8nPHIei6RD8gyOBw+PE+T2AgchF9s3qCsMkuDphd4LyHFNFtuHz1ooF9hrfvsJWcDcFZju436COcpnfbowrP7I8cmYcomrl3iMPxj5ilnQGt+H8KUSnRl5IVwTtd5ppU9eKlqS+IJuhaJSCkWf7ExcUiv885HNopsYjZQ4T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GU7XBNvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GU7XBNvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFD1C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777462053;
	bh=rQh3Y0Rz+WjlpyldT2kvBrvLl6EkHNomnjssuqDEUZw=;
	h=To:Subject:From:Date:From;
	b=GU7XBNvLmF7eb2hzdDjCrtEc7liu4oZjOCDfGgN1/jIHL5yl5GSV5Tq0D1j3bZfTh
	 WQ7lsbhFknTQB5i0QKA9cp4aHrebXS7MvQpJnBKMsHSbu3O72oYxptgMNNOk3jfTbc
	 4kmyyMaz5e00o7JXorZdMQkRl8eW+4Uf4xl/moJiqWRZBHdJtLjC2abqRSY+k6MnFf
	 051S2FaQaOw8Yi9aCyoI/eEwflqhIaR0aZoflyPE26OSrvLuMIhbKAC2Wz5sjd05Vx
	 AoYgDUK0Sc0liwKYXAegb9Q6jVrgf6Edc9w+2VIB2HMwoLw0gLuLZDaO6OTYDv6BkO
	 UeiKN+qt2hOzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA0FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746205368.20059.2217743399522432452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0478488cde87ac8a966e4d9f511c396bfc717ab0839735e7ed030fc4d6fa9dbc
Date: Wed, 29 Apr 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777462053
