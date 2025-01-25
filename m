Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4530917578
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737821154; cv=none; b=D0bzLsDSkDK1jbYdaPgI6a4ayehXRxE2z5HVUH2+S4nx6wSwb1FX+8B+9VsubDM+XE3XE4kpnfe6NrF5lr0aC74ItH1eHwCWEl8kiPlJj7oWGiGIWb9k6SyG5H0b131oGQFpEViiddnEJJDn9jqQJ0XXAYpkYwqxy88+B8nkKMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737821154; c=relaxed/simple;
	bh=IYiTxkut/LNy3Y6yYrsuHG1VA5RvkQv/f2yRNfnOCFE=;
	h=To:Subject:From:Message-Id:Date; b=IcwDNpxtT4PrLbP9LvYAxsVi8ttuBJwS3PpmNgfCHQtrM9g/SFfmphv406yScQAo3ezg0Yn1p12dJACH1BtTgnPkXYei5XxifRTuvhVRBS+q9gBUHx7Hefem7VQbhG5dfoVVc5K6+6beGcDky/ub6obQGlkdFOJDtzSYiVEnmqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZAVUcFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZAVUcFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC0C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737821153;
	bh=IYiTxkut/LNy3Y6yYrsuHG1VA5RvkQv/f2yRNfnOCFE=;
	h=To:Subject:From:Date:From;
	b=XZAVUcFjt6xpIuO6zQ1ULBQcyfrL+gBjKzGejlxl04Teg5SnCttaQSOgENw+Jd5MI
	 GC4dI1JykRXu/AK1hCtzRnZYZzVXCOqOdjyp8dDtz/MTfDb+x00/4enqyoAf4B3P3J
	 XbCpMQAcm4w7RRBO1xApyDBXKiBACZcFOEqhI54aKUkThw3mq/LURgfTIq83HgCml4
	 2HiTSZ49R7+QWRDFRQvzG4GUZ1YTD759YTYvXikUtmOQZKWChbFkpcwyL7uYoR5sJ2
	 FH0zpKy+WDN2a45hGVDsIPIW0MtE9Ymlmq3Hqn2BK9dm5ZYPbzItXecVeuATRLFjYe
	 lGnIKkEpiC29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B13C0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782115358.2347.16791787992840405370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff876693c7c7b15467f51738afb23e9a8b6ffee6714e8bb69f26b9fbce302a80
Date: Sat, 25 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737821153
