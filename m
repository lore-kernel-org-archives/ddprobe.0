Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E799142E83
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771037094; cv=none; b=S3gFWs6DtmfLBO6uBUsljF1McrYzZgVKQXGQtfoger9wv1g0edPnOqIiY3ISd2yMONcjyctHplRmW+TA5hPIuD5EfEkPALfPYAYowfBpvIhthXi6IaLh9m/OU0lwi2WovioKK3CEffhTrziQb30uSrHGEMLe1xE+KNCXP5JsDRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771037094; c=relaxed/simple;
	bh=b/Lsff+5vkll0Ux5aCmPqvZe5+uK6tlGrkShYlHWtuQ=;
	h=To:Subject:From:Message-Id:Date; b=miS0fjzl/kqYpw3fm3GmwuE66j5T8uSmLBQo4UOjSl6Je02Tfrhl/pyftiUnn7MRVeHe0F2pG9bt6sMUozY+kVXkANri9XX/s7w4a9e77PgmuZOLzC6+/H/dQ9Wa1gFaa2goVrZM5CgT/80lAHoZP9kGgFDzYxCOCGqAY+MHDkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6ac6FQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6ac6FQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60D1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771037093;
	bh=b/Lsff+5vkll0Ux5aCmPqvZe5+uK6tlGrkShYlHWtuQ=;
	h=To:Subject:From:Date:From;
	b=S6ac6FQ0W+UgQZsIugcOoja3srbl3ltZZ05cEXzToUMnFmNggz26dqMzk4FtZaEQt
	 PU9+GHKnXj3Mjw4Wzk5ypjEKdnt4mqDJwBIhyspGHLejKNrgR8kbSyxC/9LFmPO5Yt
	 QiIFzYk5JDSDqkaNW2UWygxxuBckjae8JVOjYvTb8SflHUMnlodlhnno9Qgwd77Wlj
	 FtTHu7525+dT5lxsDLTSY9I8p5dRQdZigdNkCHjVOJRhVHYnWt1SP63Vww7gpIOAC+
	 IksPcNkmnjHsKpkqAfADBqvWnjT04cdhn7Ib6dX7CpBYtfHh9alVk28p3Q+NGhzn4n
	 9+pTOBifhduXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B59EF99EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103709359.27561.9579366351762922826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6feb4812efc64d51d04326b0a49c455538cf30d54e899ccdd473fe2fb8ee53
Date: Sat, 14 Feb 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771037093
