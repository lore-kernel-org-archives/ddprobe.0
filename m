Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD95264614
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776360454; cv=none; b=Lyo+vrkmB4xBdvviG7WqPoiCxg+go6GE2l8oqDdssc3KDxQB4vrYCYIWb5qqM+K9qOPsqW1lEMdBzcjjoCXa8DZEEv89/kQBESmoGVFRVIaP4GxbWmjbDz/saJelqzkxhWaiTItZGwRj2iNPhXev49xrF79mg0UFekteoAfO1pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776360454; c=relaxed/simple;
	bh=qwCD9xU/S2eRm8UVQUqrcy81YUBaZeCREPpr1tF3ROA=;
	h=To:Subject:From:Message-Id:Date; b=FRCko2nyspNpXk9CIsDOo7gpmfzaQFw7kRXIL6N8M1H46A+C2NQ8iAsbo4m7vBwBwnTH+L4YXTOI78GZVVyWv+6aoVFN1V8Y5pSWRS7DmVhLpOMKenr++okkkFDJiLTCYg9/mV24WlvU87kDxYfiBEwPA8blthxnbIhnhq0MAAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq5kDiBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq5kDiBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC449C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776360453;
	bh=qwCD9xU/S2eRm8UVQUqrcy81YUBaZeCREPpr1tF3ROA=;
	h=To:Subject:From:Date:From;
	b=Eq5kDiBYTkg238P7mZkpHHkBicWM4qZlLXkRu/TFx1AQoq9v3yJH7levysGsF9W56
	 W+r9MHk85MNqUITv+kKIvWPrKKF7vm72/6oY0YGLTCg/iBuGnEnMKivErZeo568BKo
	 hQty0U2bew54+rAFQ8u5JJeG/hmlX3jxE4selrH1ueTTB+5uXx97kacWzeUh0n61WL
	 6BiHtoyOGLMx+lKTRjlj1sK2SkreU9NvoqwWZfbZqnaEBvc1VAdl7ads1ZNJ1Zp3Jv
	 SrDHOT86wq2dc0U99pETBqBWrt49LIKeymULjqTj7ws19ZNAynpetifgkMbygWqD5t
	 C+6uGDJDAfbhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA211F8D761
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636045368.2839.6778215246225719407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa330958c7659d1239ff9d28fc8e8e4cc089b629aef988152863c6b9717ba264
Date: Thu, 16 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776360453
