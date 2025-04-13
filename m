Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45598199FAF
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744536594; cv=none; b=LzhXqp8owopaJqLrIdPGUmR40YO5T4fTw5z8mkjWLMmxb/lO9VVCSzboMgu2Ug/QaIMWXJVClNffcdS1wo6WSflyp7eT6t2B3w8A+UEyjRnQhSfedH4zhWii7RZNOUueAXxpCRl4E2BSIy9lBF9WXWqyGVdZpaUlViaVia9zsPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744536594; c=relaxed/simple;
	bh=RWf8CdNAT82eHi6RXMWHSMqmPwwrWRZpfLE/q8Ku18s=;
	h=To:Subject:From:Message-Id:Date; b=aOpNDsS8toO3qJCo3/mWCjJV4YHocEqXcOSSdsMdPfMKc2eh97DoCBVySfLuXWckkPguFYQxydhfgUbgQbwK+kwUcx7MMQZjWbX7Kl3T4zg7RC+mIoMtFWFTfzEOXVI1UVexgxj25LFpO8Ix9VGw/CMQGxtTP9qYI0KPu36ZMJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fhw5s81k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhw5s81k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A8DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744536593;
	bh=RWf8CdNAT82eHi6RXMWHSMqmPwwrWRZpfLE/q8Ku18s=;
	h=To:Subject:From:Date:From;
	b=fhw5s81kQ1WlI6H/Y1c5GP/3V0FZSQysaZp85CM7n6lDbEZeEiucMd/GCb0K6rv8D
	 hvcX5AR33r6zvWdVR0KiYy+BQvbTCk9se9TX6pNZvTQZpN4X0fq/mvxbD2SEXtzLf3
	 1gvlXFJIN3jiCSonfB6bC2NAOT7Jc6gQy5kuIiptXiPPLQJ8BHx+5nu5gT+KHyAGOS
	 /F7NGbfUarPqITPJed5BmK/9v38apDb6GijBktwYcZQiqqfGGHA05UOIl+SiPw5EMq
	 /+f+l4Rr1Z6hch6g+7LAOZY0OD38bTvUIpL5gJj5x3sK+LkTT9iE5sCLBDhFqdSOgC
	 qvyU0ecveXXxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3300C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453659365.9463.9680368311764910324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7947298a43674af5721df8f41e6f9edd95596a19a2a420d61c842ad939c8216
Date: Sun, 13 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744536593
