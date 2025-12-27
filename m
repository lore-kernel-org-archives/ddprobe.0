Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA51DC997
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766866434; cv=none; b=dlhQ2H4fv2F2Hu4CLISo6qT8Gwb01ND2IX3xVLwxqgxcYWZBNxa4MM35OG7Gw6x+aUHgK2KDkO9WryUtkp3/ewR8YWHzluTri6zeN6SgJCgKBXxhy68Oy33+lTgx/0jzYt8NfMahT/rQ6blRfwJDgDQ281IFCZAqUumktWB54PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766866434; c=relaxed/simple;
	bh=W6W558UXtnAKcMAeH7ECrWidvxKX7ojf5m9dJc+h41o=;
	h=To:Subject:From:Message-Id:Date; b=Pd2H4Jhyz4BZ6bp7B5rCfFNFkP3Yp3QarAcSGZkK1BJUieYeSGOk6nPnAdrrQzuDItK7Pm4oVUo+7iVcbC1d+eGDYOTBp+3xqlg0kE27NK90hRVJEestaBqlCwyeUzjJi8UAruH7LVhwtqsvu0JGkqJyXeRTF2kxKE9Ben3Wr5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKJi+FWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKJi+FWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD397C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766866433;
	bh=W6W558UXtnAKcMAeH7ECrWidvxKX7ojf5m9dJc+h41o=;
	h=To:Subject:From:Date:From;
	b=MKJi+FWEEGly4ddsIp7gRGS3s/osBrUqIRa+V4/E31RyUgUnRd+dLEqESaabnutiD
	 XmaHuJo+gr9XvNZ3Vqp6M3CnNRf0CA2n00kqOAIwDRyQFWVJu74qfTVZDzKZ+rqzdT
	 bVWO6nGP7aT7hPswIZcLUdjNFJ1ii+Y8hArEGrXbjISkAZeZkbqe4kIzN2Rrjw5JKu
	 BcUz426fAafAzX/p8sVmELWioTPYFvUcYzWcQWF9q1R6d6yuXuw7SR6CUvgMHDF0YI
	 1m4klg3mjulkFxlyzSU9SyRQcSli5W/MhrnDiz7UgZQr/mGQmDxf6zKLjZYOLmp1xt
	 C0Uul9DUNDmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5AE92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686643360.4873.18191708589006133412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f07a0b58f2cce1ffbda5a78d35d9e5d1435540effff1f65278ef86374efb7c7
Date: Sat, 27 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766866433
