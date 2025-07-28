Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2300C22FE15
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753693794; cv=none; b=nmC0VZbU64RPKHlpKHphp5K4rJou7KO+cU55z/yXc/dmZlfKarzvMBxD8hJmSL2tWybdQitc+Ao+O4NJOqvsQuKP2Q3nTzM2dYzRX3gDoLHRO6Vy/HtfMTQapbhiL2YaIbSqcD37h4BdwJmuC169MGArt//mPd0quEJSWsjte5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753693794; c=relaxed/simple;
	bh=NU6G0wLBCXqiCEZ3fZtrfzSn323RmTvU5pePUt44LbM=;
	h=To:Subject:From:Message-Id:Date; b=N0Mp6skFjxmaLbRsWc85K07mFxI52yACM9jfIwHaQRWafEarKwqteZ850EEnSvFWZ8Z/senpMwXyt44ZPSUv9uD42mocdgYgl+R6eWlsoW6PEgroPMH8YN4TXt4k+5KWMJQ/t1Fe+9Nr+O6rcdYrkwH5XC0jcpxkbVQQvvdUqC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jiE49oZH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jiE49oZH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 977AAC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753693793;
	bh=NU6G0wLBCXqiCEZ3fZtrfzSn323RmTvU5pePUt44LbM=;
	h=To:Subject:From:Date:From;
	b=jiE49oZH/0en1f2wbX7P+Eut+YSadQ+zQ6AC1IeDkT7jrYBTZXQ6MSpY+Iugao1F/
	 PzHpg1SpyZ2T/AMTiebjnfWr8n3rbYrD1gWDwcQkUG9++dmhYect7I/WRFvAkOU3fK
	 MwKZNagd+rPCvi7uKqiMjzcCxuDStO1QenSYWA0laGndNV24JQmzJ8mFHSl1iXJ8N0
	 ds2PyzEBWhPlXhpRH0T8KowLyJvJWFTRSM85Vm9UeD7iX54tO9S8QP3ecHD2EQyShD
	 3cyU3rLY4nq8e9OWHnLEi4zoBZuy502zmz9drGTl221RTWEe9qiZkzTE8cb2YXJbZM
	 ywT0M3+l+carw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E78DC87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369379357.6658.5351108473124452093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9f2ee686810d25696c3cf17b87351d1bd104dbd52957dd596c5b79fb5e2b75
Date: Mon, 28 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753693793
