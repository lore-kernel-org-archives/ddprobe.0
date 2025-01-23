Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AC023CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737602154; cv=none; b=WZHpqkrEsTJhOao0eVE6OYo6yCK+80zJtqHuQdqfMeaXoDHoS4ccqq5Ha4TJAEuKp6scNvUKJmCxYlIputE/dLpNuSCAxtxh7PvSDKX+kqZxPUghP84dZHHcr18aLau74yK84f9fSvE/X0rvomB1nmT2sOxoc2dZiyciQs2Ggl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737602154; c=relaxed/simple;
	bh=SS89ritKl7RqK+w/G7Z6b8T80RAqa2AmOis3GQnL34Q=;
	h=To:Subject:From:Message-Id:Date; b=if5N8y2jcOJFf1BGEmyHuyaECkfQ54Q16a72fSBGFopO6RQYpsFp4/UVlHn4rRP1/2lDV/YGgYXeXwn/t4Gen4YhsxQBNZxDmb86c+ZfX8wbm1CE245Yqy8SB5lWqfVWXIUyRQn+0HGjGsJn6lYErx5Yc0xkueBIg1ifXAvLY3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/VD/doe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/VD/doe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9861C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737602153;
	bh=SS89ritKl7RqK+w/G7Z6b8T80RAqa2AmOis3GQnL34Q=;
	h=To:Subject:From:Date:From;
	b=t/VD/doeAn+kiFzmai6HXhpGppTnn0pCt3gY1PixDG5wcS5NzUgGIfhrpgpOtILFd
	 NhCoR+QyXzIfwSnxOaAHPXx99KJT/BmV3ie9EGv0nNXMwf9IEdUNl+Ey5e9DjI0+cU
	 8b+YH8wFWrUALDdAmg+BwTXQdeYbAh6gaZMb8ZSK1WmzLn/5B2q98mrMuaFkfKbzG5
	 EgkC9All6JcBVycjJ2ZKHtt3H5cOgcR9pc7+5TucnjH4rbEUO9CufCzkU8e/mgxVaL
	 6OJ+5RJYAuO01TlexRMl+Kc8qAkeyvUYY6zgut4iSgmjK+1Jc680FZksPsF6Z0BLB1
	 plpjMYTrE3M6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9382EC02181
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173760215358.29522.17818662637537277129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4a6d1d17eab17fd07a90014fb19638fbb2ef9d05896984e3305701925c33dc
Date: Thu, 23 Jan 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737602153
