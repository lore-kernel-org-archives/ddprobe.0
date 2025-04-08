Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C6615A8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744088994; cv=none; b=A8M6FV+pb874EA/rGEQvw1Mrt+bwWYEuFDC/5ezLCBBZ8pRFgXZSMgP0HdiUObFhoGquDTsN3cNp6tTw6qINJq1EmFOiDzf3u/bzeg8dETVGkvBxcxZcdEXk0mN0kARWozhZQFC/iumqPTRJHwij33SZzEoJGgFogGQVQvff3d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744088994; c=relaxed/simple;
	bh=cPpXy7I/yWwutFqXHMvkTS1N60Z7egJn4wse3xNQZ1Y=;
	h=To:Subject:From:Message-Id:Date; b=S5id5w5TBRphj/SdM72RSEkZLEedwvf0MOHRi3N0u0cMPUUNfLesHpnxgfRELzHH3K71ey2GliCaMs2HXwSKPwvQgPpILXKKvDnvgVPacoNkDjpy8F1nfmB5EzfuD/8YZ7oAIKsetiWHJxBb74kmjWTutX++/vOdnUS2e16RSDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEjLDBPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEjLDBPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAE5C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744088993;
	bh=cPpXy7I/yWwutFqXHMvkTS1N60Z7egJn4wse3xNQZ1Y=;
	h=To:Subject:From:Date:From;
	b=oEjLDBPx743KaYKm+MMn4t9wOY11dwwNem5mucCt4LiVIMy9ynt0BlwmEpj3P87jF
	 mqr6pBUC/2Mg3T2D7iKQDkJCSCebdabsRRe8G8xN4deM7b3jpmz4ufxqqIMDpXf5vk
	 iJi+j3WY7jbvynwPYT6g1pLnn0y+QejW+PNPRfVean5VU6JeV1UD5WmC9+vYNtyJmn
	 M2vH4yc/t7SmG6Kk/xTsJ4EMypd4dHEEuY2bNxxRI4t5999BiwbSODXYffqB5tCHZs
	 QZxvLgSB1W9cDEdyMcPlRrwQxW7zsixwdCJuMnxW+wTWf0ZiygRFR6hzOstIF7rSDa
	 Gu2ziYBKz2tRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AE8C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174408899359.25892.11688652190191637210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca0d3020aaf548e2ac2f6bd2aea65a0829b2c0f3977463eba65a93eceaf14006
Date: Tue, 08 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744088993
