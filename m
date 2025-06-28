Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296323B7A8
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751129394; cv=none; b=OsvcXjkLfbhGn4zc+oUgghj28Qe73SDzLJdCsZw6SX/33T+nHuORBY2ywIMyUUQw/0gT9Wdm6PLLybMuO8LeAVMxdwjPMhKmCshfzZfGswRNp/nmKr2OVh2CbjPGE1W+7OPC1ABYINLEAEgAN7FE/nH+ZRgjGoL2lwkVlGVjiLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751129394; c=relaxed/simple;
	bh=8TRjIVlfP8nJIu5e692gzbO+lsR7xueAYhXgu8fRNyg=;
	h=To:Subject:From:Message-Id:Date; b=qPhD2Xfr7aGH0uO7XqqXtMvWnlIPkoeHN7iujR10I8M9CEf9I9DTR4imZYzHFyV/lDbw1WS+Oq9XYtYDb8Md0Htr1uhZ3BrQH7hC+kj1NsTbwKL4jIyqTW/h6CEtwme0wSCrMI6NW+ZlMeFKOrMncSLMuA5E5+bBsQjcv5Hl50E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbgnF6gA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbgnF6gA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1A94C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751129393;
	bh=8TRjIVlfP8nJIu5e692gzbO+lsR7xueAYhXgu8fRNyg=;
	h=To:Subject:From:Date:From;
	b=pbgnF6gAYV0emGhBorkKifaDDL/DC+dd5rxy35qxE/CrZESHzc/aMZZgWuqq8Kqic
	 ykdGdqJleXgnBij8x/iRUrDXk4vNncEzhNDRZWm1IwYq9eh+KHun/Vc3B3lESgq44I
	 0JVokwah6wppBVOpPSW5lsYV2QvIVmXwTwsNZDXtb+dwOktvWUes56B+XeWEUPx5m2
	 qoAU0kCl/XpSes0iE6SGs9z7a5cNlIFV4/71Nvh2zl2ZbBq6qu57p76T1PAJNFECK8
	 nMjZIe5EsE+6RG3n0M28/3k9OTOGbkp/y0CiBJ2qgJQJu369sIuBy/nPeLIX2aZJM0
	 Y/jzClJJqiVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC47C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112939361.27315.1401282291509824634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b103f3b1bda2eff6d69460cc1271029cc7c4883c21030ef6556aa7cbe47d53d4
Date: Sat, 28 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751129393
