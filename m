Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4B130F534
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773011094; cv=none; b=TwoH+sVJntsuDykJPclUgkW+EQOyIWp4s3/HpWZjupWuTFJ5olnu+h5OBYitmUiFl4fQrfx0PPZqbaNpZ6D3KKGmcKllCXBIKf2Nbvz5av9XDq+9q26Fx2DosMjU7w7Lj7iQEGRnpNyB7nFwmyg/ky/StZkK+VbQgwsLgZ4qkAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773011094; c=relaxed/simple;
	bh=iKFRhvncvwdE4ONP8Q1IsMH0mUI5jnGSg3Ehy8bj9Zo=;
	h=To:Subject:From:Message-Id:Date; b=V/DbqnMeNb5oazwyiG1r1lcYiL89bN8tHgbKZ0wfioKIPT38NyXBBSyv4I9lH2Pe9lodvL7/lzNmLouu0c9DQQKFJTNrYmjf9IOUUUJWlUDNeD8lwNh8eNtzahx7DBQ1HWXnWSgSywr4zBDiwcfakybPQT9c8BB6gCy1ExEFn24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LyLCD1h1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LyLCD1h1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773011093;
	bh=iKFRhvncvwdE4ONP8Q1IsMH0mUI5jnGSg3Ehy8bj9Zo=;
	h=To:Subject:From:Date:From;
	b=LyLCD1h1HGH8S9YRJEl0/TNL0ACEzNRAp3nkEwEefbWgc66mAVg7AB5TiYKCzzHJo
	 7UZbcIM8Cs1efUJ3Uem6BLQi6jWTThdd+2hl/DK67SMStuYd60RD/44cuYFfu/762+
	 4MX3frPuNpVmrYDze6Xz8vxXvuA982zBnf6mzLF1mTio3aXB53dDuH+17NWWl1dXK7
	 16jZui2siolZhR/0qrHVwlMHfhQZVGxArqXhBXuUZW/UtWUGDPl7IB8j//iIjRrvjr
	 JbXxug1fDjZLLwsHjVgkGI1B9N3a6PeQp0VmsnoZaBBlMmjXOYc1ruAG1lInoC4JWu
	 YPyPighPq5KbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF6EA8549
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301109358.25603.3141155271311144835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 280b389b206550d175718d57cdeaf5adbc4ffa37c8ae0d179012ad90cf111779
Date: Sun, 08 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773011093
