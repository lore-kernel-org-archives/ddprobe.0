Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740164206C
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719060143; cv=none; b=fMAxLH452GLMR3HjMXmS2QBtIuH/s2hcLpbHmJiS+0YYlQ5yvVIMGeYT0I7sFy44khiPBiCfgPVNDhV+6/5SHaxRkXRDKN/FM8wBKGgujeJZdSWnirI6+0CZIm7ZNN1q00TfYj60KxkMtagrjxmdjnfsFwyyH95iRkOkLfoKAKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719060143; c=relaxed/simple;
	bh=D564cIv50VBglIib3lBNfrvZQEAMPBGbfgOATxz08ws=;
	h=To:Subject:From:Message-Id:Date; b=PDPw5CdJdp5Z0kkaRH1+SgpPtJBOhX3s+5bkDAo3SpR43jsQm0KhmS2l1xDd2seXtssivYVOIlgpYouvMXu87f56KVJfE8U7LxM8IW7xFseCCtDHaA9UEi4iIW5i1l9gf/qs4Dnj8QYNZDfF1KkwDzWUpukL6j5iGHu/ueWMB/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/YM+jU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/YM+jU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76DCC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719060142;
	bh=D564cIv50VBglIib3lBNfrvZQEAMPBGbfgOATxz08ws=;
	h=To:Subject:From:Date:From;
	b=F/YM+jU+VDs5bhwYIB2jnIlgxxErLzs6M5uw4Y4QvrjTzr3eUSVcIB7shWzLgke/R
	 lCtbVZIrdPJd1lY1svrkuvpa6whedh4spvIDHJelb/XbiAoZUK7JWMm28Guv6lFUtr
	 GGpU9sEQJYLmuXjUOfkky1Bad7r6yEqTVu0sb91ZX0jUR/6fhqyOHJwr9i9x/Wh8oy
	 FGJKV11ZFKFSc++7Lsw87UAZdZ1oBGUFjp4vQljl2cE3mvXJh4GikoImUq71Jd5X/A
	 y1sqY6/tGnH7cPHPoQnwGGU4yAmobDLd7bjSSRoBI08cD3HxtMRJh2bqTq9WY+WnW/
	 1eZgfR8xaT12Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D470BC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 12:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171906014282.4246.5999648281198680011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9797f95043c895020e6861306fcc59e9b9da301ce8a202b06809450ab1c1aa99
Date: Sat, 22 Jun 2024 12:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719060142
