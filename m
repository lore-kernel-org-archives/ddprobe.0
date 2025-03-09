Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7FE19DF60
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741523934; cv=none; b=HB7WmfxMxS2tFryMJvFIINfHpqUHD81bk6wG053Md+i0ow66vkInPhBY1Z3LWo8+Yli4i+fsMLnyQExP0w22nkEczOODfv4CWtbQ+2geNzK1O6WPs1jrq7UtfQi8ib43u3551sq8xnkdE5cRc3r7AA0AIdFqIZrw6SSjWZl6lU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741523934; c=relaxed/simple;
	bh=ZUH4m531sOUSzjU4cXmV4yaMeYcqpq6khJxM63PtDh0=;
	h=To:Subject:From:Message-Id:Date; b=IP/xAIYO7h5g9w4C8KCd6HTCf3SZOrlJV/dkgq3Dw6vwh/ACTzscql3JCppfSB/pALXH2ww7roisZ2A4HqwFEr1I654qnwqGGWkeS1deNVo4IfeG6WSPFwDszc3w4XtEaQ8RtVLgDuX0H7cS1+hk5m0UbrG0OMrR9nubOG5YS+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2RomLHA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2RomLHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89F5C4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741523933;
	bh=ZUH4m531sOUSzjU4cXmV4yaMeYcqpq6khJxM63PtDh0=;
	h=To:Subject:From:Date:From;
	b=R2RomLHAYA47aQZ8ww/QwHijOs5S5uaV676MmKwfK0juylvrhodzyQhMiAmgYXf3j
	 P35dW1slM1x/rDYdUE8qSo7tTDuOytJZYiBRaaEz7CLDx8STFreMYjznNVp4Ed7ZB1
	 gMURV98ljzAtCtYFgeuQMgR8QnlmwJL5nU2ljnbp2Wz84+1aou8BzLZ7KtDI468q2E
	 ImvR6Yv847zUlWogj6z/eF7KCmE4DnHfp9auTkVtQZkNshvzgjH+ip2UHpWyeZb7ar
	 +uwvOtoJsmnGHT6lVGrY5i55vvnts7EGToh86bbcc7sq8Tkd9MLVcsaHdVGe3ZT17Z
	 EUZJ1pIm1bN2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99393C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152393361.13322.11287718499032760846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68657771a9b2f72bd3a54e84e83cf10325350b9a8ede57b9401c7d11b28c6f4e
Date: Sun, 09 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741523933
