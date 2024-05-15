Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452C0149DEE
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715787143; cv=none; b=EWXe9d2BTAFyr8JRp6XpflxvgVtglFgWSMhYKBlkHAhUIIZ//HYBtK7AmBlIdX88gU5XhUkvFgUKInskwEgL3GIjHbGT0yuvsBcoR/mgXNQTeOvAJx1th6oNyr/+DIMX4O/bu6nzLL6A3USx6KKqwPdXrK1vizSZau5ZCrsQ8ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715787143; c=relaxed/simple;
	bh=IjYMkdd0GLOqIkTMNf1KD841vuPe47woQsJYXQd57+I=;
	h=To:Subject:From:Message-Id:Date; b=U2Dj7zKvZpqnwpNI5Im3HQLm2csQ9b6xuqMNzDAamBImmiQzIUxWQxnTEXmwiwMB9y0YBU6rRloiWmzDu7WUdo/U/+8HGx8vzMiZfRQXuQVGObZh/ObId2Izo7tuX2lY3yw1Bo7Eis3mi4Xdv5u4U6u/X3RMm+rdcr8+95hKuq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MC26w0Hf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MC26w0Hf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E1EC32786
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715787142;
	bh=IjYMkdd0GLOqIkTMNf1KD841vuPe47woQsJYXQd57+I=;
	h=To:Subject:From:Date:From;
	b=MC26w0HfBH0jeJilJYpW5IyhkraaD7uaT/EA1v5SV9iV3nLSacZLB9s6KjtOa1HJ4
	 q4L69DSCQrjIbQIlgcAH8vwUhpMrF7jTLlv86P4pJ46KyJThIu/TlpoAMvUarqBam0
	 5WKO0ckEF8dZz25+smyKJgn40rWUBQJWFHvSleg0xDVBtfHSwe4ttzsEJUBVl+0t9e
	 TXOL2U4KC+4lBNgPJqAz0J5gCdTjgkk0/Ei5CPcNSV6fg8KBjgFZRSiHrg6ocex38n
	 hhjBebHhNazvvxCIfzqnHJNKa2hdMb60zPRAzMG1n5EtoVtKC1dXQDMr5L4WXEMQQS
	 WYfzimJGhl6ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C83C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578714279.19796.5010681402578065270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79abdfc33423e26e01c6b9a004df6724339a9e9717096fc441c60f5c6d487328
Date: Wed, 15 May 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715787142
