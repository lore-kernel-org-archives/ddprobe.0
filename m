Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AD226CE03
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757870994; cv=none; b=M1QLo2YVDiuk5DKzKof1lWudq5ety57+YCMhboMNXJU+2UjWRmyhlAQx0PbtXJBTLInwV1P3OAU04iHG8KVPWoa1yULEsMlfAK/1O/U5YNoC95qq2obGjjkudGQtvErCS8xxwyhM+td9z+tnQSVuBMP3srlPEljDi3FM1pmJifs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757870994; c=relaxed/simple;
	bh=oD0EIsxNRaWuPd3TBJ/bT38XeffaIrVmhYySWrus404=;
	h=To:Subject:From:Message-Id:Date; b=gwXosI8YnBAUKi7xvKS/WmzfYJzt/Wrxs4zkx6O3quMx0ezQTLhw5h8PA1/zAmgd0zSw/B8Zk6HOIC7ZxPczGWziXZfpQHZ6VHtoEiKaShFSr+ZI8ZW8VgvZLs8LRJp5xjF2TOReZxlwjLi9NIm5lm6RsZ8bP/guaG534vBSer0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rz6iLkhC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rz6iLkhC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F67C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757870993;
	bh=oD0EIsxNRaWuPd3TBJ/bT38XeffaIrVmhYySWrus404=;
	h=To:Subject:From:Date:From;
	b=Rz6iLkhCFYbjajx1CyeNWSgbbQUzDzSJjp0QfGHJuCgZb4SBfiPrWGB5Akx8rqSkI
	 5H56bs9I8aFwm7/57EvyLIlJzYfZapc6p0w3potLxb/GC9KkRkn/0bAKC5yXu6ggPo
	 hyuJjkksecW1daZEtkmYKy0m4NyaU8GzlNaiBGqlv4RignLEJ/vYU+xbj5VMnVnLux
	 PWCGl0BK6mSL6ZqSo1txlQQOe6M5Ss4uMjRoljc2k1+6D8/pb/mTbIq691Xzxv/NBw
	 33QIpkJAfbADrv7pBRx0AfVvvgtkItpOi/4Z5dhMSksmToBekiqxBXqosMx8yDSIz2
	 tH3i6N7wDIp8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9450ACAC587
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787099357.8955.5601852923108110763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766dbfbc2f0f392a7352b90b420317c90b871977a7e438003077f944388752af
Date: Sun, 14 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757870993
