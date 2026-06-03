Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7A6126BF7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780445674; cv=none; b=bD4F0yamkIj3zvq3xC8Jv353LogLgDHC1sMof8/SybdovqnZ1i5DZntTv/WeJJsMQzKXsBwD7cpL53cd/FsTyXnyAmCz9HEsFGEP2/SWR7264nPg7gZiiHXAzB28bszOyevZ46Y9VkjCrZmL/n7Mc2MBQVUHS5sfN51hm0ftuc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780445674; c=relaxed/simple;
	bh=ZozkWtmfYWxGkP8WN53jZ9x5I6tWXDZgYMpW/BUUnu8=;
	h=To:Subject:From:Message-Id:Date; b=P3MLYo7hu2ixEHDyA0AHCMCY0VZL/n2RyCwpZAFHgc4pIz0v3S/HwAjA+L4I7oCiANm6ZPJq1phMZwcwtfpiDsnIzq2sc/BcU7G88OsT5YD85qKQ4WxzDOWAa24Fxsw4oBXgL5lxuPp/O4G/SJ1IDB+I3a/FfV8FHSfiiuPwlF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNhQ5fLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNhQ5fLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F13C2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780445673;
	bh=ZozkWtmfYWxGkP8WN53jZ9x5I6tWXDZgYMpW/BUUnu8=;
	h=To:Subject:From:Date:From;
	b=qNhQ5fLsBsxeThuKEv8gSXKy+s3xxSV97b8ilMhPipKXuiAWvjPsGKrwdxvnlp9pT
	 zl0QFJQNZVFwxGiJbQ+UV7kfci7deklJCu/KV49wEPzpAW7URX7ZSSQj1n3xDbA2Fs
	 OujSSrZgcJpDALlFyzV7miTY/CMnYPyWp7h5pB8UqTql6yQtfBnsTzhoYaRwLUeyGa
	 r3Irvnql2va9LrsOd3zS76NuSNspuEL7Xg+v8k7sAkLJrbta4Rd6Ivyw2CP6QUFvY5
	 yKKe2tsRx5Ph4gEu/icPc9Cu8gv5VIOug6hX7YIeXFWTXAPRq+T/vK3/cHZ9zpVT9c
	 wsRTV5K8k0q3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97EFCD6E5D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044567368.13256.15189760615891624549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6dd1c42d8feb62ba80425326cb1215d8f32fac09fd2214c77e4823c2e20903
Date: Wed, 03 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780445673
