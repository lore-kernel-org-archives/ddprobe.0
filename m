Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307EF319843
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770825294; cv=none; b=O9q7UIRlFH2is/wvWcoqb5FdL1Q5OHp5lpHuz/1yP/Hl9JwBZlAL3TYze3hR6w02E/Gxh+HMLdRd6k4bNGPngIlEjei0bWCi8aZ9qaRJVPaaLLYi+XAv8VZc/8IPj5gi4n5cVeooRbUHRF28gLSe9YBs3EVPwOEkT3euDpI8glM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770825294; c=relaxed/simple;
	bh=YCRbk9DDOFyFGiwIRPCy3v6dGJSiktSyx3+OjQexgyo=;
	h=To:Subject:From:Message-Id:Date; b=b+t6+lVA1Cix4yI5UNmA6razy0MbtWKMziI7l0DD8S2NACvaIQYQ+6dtAHnDUz1ucTYTMfJ8LQETrZwWlwHuJNVt9khtpNhHGMW7iTagmLK+JV9B2jRZ95/pejsh7UN9nagtlVJM9bfrdbWNtEVTSs6uq+CpD8PUZRnftfKUhEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCdV7rHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCdV7rHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64A0C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770825293;
	bh=YCRbk9DDOFyFGiwIRPCy3v6dGJSiktSyx3+OjQexgyo=;
	h=To:Subject:From:Date:From;
	b=SCdV7rHz42uBY4DnYI7YdKtrD/P0WSmcnK4N/XN8jbpaQBZvHpe/NDeLI1aAr6ZYC
	 EQd/eQeP1LfQ+GW2PqB/fciy851K/vcWRkrX6E9q98ylk96ZqkZnpV2mhd1tgrnW62
	 93Pg+liTmfZhPNe85S8nA8KUdiCrDagOXuF6TTWOG60x/q0WwsggHQRfhsYqNbRbHd
	 0lk7854icu2V5lmKGNNuxUcUZhRCZd4D5aylgKO6Fq6Xgj5DNEARUAzJ6/BfXBzu/q
	 rpaa7fT7Hc1J/qDGqq+EAToPXTbeUOCNeBKxG+/GcBrLSZBw/TlIg8Yqy050/ZH0kK
	 +1LGGiLMSEBBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA0BEA3F3D
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082529375.15249.8665229085039815633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f244b3c2e75e5a3e186f8b0616fb7dd2f83d598d7832981945c88622a1946a
Date: Wed, 11 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770825293
