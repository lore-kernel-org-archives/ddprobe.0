Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D8B2E8897
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785456034; cv=none; b=Rb8uoEVlTFhhNqK1eXeJrdSIC7fAu9Eqd3o8iXLsxNE0zfyJmamcxPOitd2I4ZWHTu4XtOmLKsQBxpKyPxBnpeMEZjXMQ0bNQIzvb8Xkg6Eq7ZzfWFRVU1IymhJ0UqrnZ+sFPXgt/W19M3aMPzQkkF9rMkR2H0N9eYFzD6oVBfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785456034; c=relaxed/simple;
	bh=9noa/vuZlKIrmJY8Xcz5AN5hTdc/x54r2CFb7lC6qiM=;
	h=To:Subject:From:Message-Id:Date; b=Xvvk3GHkNDtR4y/PTdGPqX/Omj9R+AX2hjF45eg+s3lxf+YWnb5TQ/wy082blZWzlEfPDAOG/s3+3c/ddC23g7OHu1qgcmVF9gDcpwYzinker85r3Junvn7nTLXNGalH6hy0+BhVR/v4Q8CD2oFs+Z8m+vp7CoPRcRHkrbg+YZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpmnYqA5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpmnYqA5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11F2C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785456033;
	bh=9noa/vuZlKIrmJY8Xcz5AN5hTdc/x54r2CFb7lC6qiM=;
	h=To:Subject:From:Date:From;
	b=gpmnYqA5Y5k7hHSqrVVG4ZRfCcf8NolfoZ3+5uR43gb3fvjKuygNbTxJXXVA+L/os
	 BaiWm5hAHyQRWsn8qGQ4WkcOdZWMtpOfuLK5swmEUBF4BuiAWoE41oE2zfElNVevA+
	 SEDHr3EW28VncE7l8PuOpgVkxTWQRv//4Zzw0vPzW+ZcNKa5B7EErK631MsmtH884R
	 Zkp2kYL7aa4K9v+O8GtSn2xzcW/y0p3C6nZJpqZ5uAOgq3zAt421E/wvplUwCDa8ef
	 MrNCshEIw94KxCTGzf104SPSgdAe6sNMtVqdU6WYSi4LH9H0YspK/bJdfEktkUDQyE
	 NHLQke/PGXCrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8ECC55165
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545603369.13976.4119832663976883165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7db1c3a663d123f1b18dbdf947344d6548040a217a56191262a1e9120705d1a
Date: Fri, 31 Jul 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785456033
