Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637B240DB5B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791235834; cv=none; b=TajmRlVpWrUivElqU4Seq90kUkgMCZv/Jq/czw53VdRuerTKKvwQ8djD+VpPBYA0SK9ldHDvDYnw0j5wwJP2LKMydabGqftd97j41YRcaXIOJQXSCi2DkzlBXrhOE+RskkHJzePYweGQ/5MRW6ju1Q2YkRvM89xvPbUeBSkDBnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791235834; c=relaxed/simple;
	bh=T9C8AWb8duaJM8iSkGvMJaYOTgmNDK10qUCW5MfUAZM=;
	h=To:Subject:From:Message-Id:Date; b=sb9COYs3j3ddaH5fhFrY5B5B1vRSy/vGrrOUDq+oSWzl2L3OIzAe0LP6CNJGGzrdlnjs6UNsbLUrpKWcdLkT7Z7miCwQ2F6AgCn7qP8RJuV9fpRRRw+IaWdMndWqty1SVi2KZxhveug12voJ2Qt/ZW/W4U10W+3/zr8BJt0DGd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKKc7OEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKKc7OEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE28C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791235833;
	bh=T9C8AWb8duaJM8iSkGvMJaYOTgmNDK10qUCW5MfUAZM=;
	h=To:Subject:From:Date:From;
	b=dKKc7OEkz7g9RadaNFJzfGMLkS82d1WOYN6jiHVB+7KgfX+XlPDjo8XDPlT7C44dt
	 iXvciONIZ+0Z/h2Y4aGozQY70ySUdVVkeWP0NBkGvZsp6v8nPDv0EdPCli1Q4mNDIO
	 6zKyFJcCAQZV6jo+WkBFzMNpTpFOQ57jlw0bEWxpo1upAZy49xQ3KhEVON1MBevfnL
	 2n90aOmrCH3TDPCaqQl76hTGo+cZmvZlVa1KbybaUUl+hPY+Jl7CmBe2PLarRVVfz7
	 VjHpLYW1nCa2HfqzrkrEiaF+nkbHE0kQjcbgyawKYnG70qAImxn7H1B1A3Yvd1rdw2
	 vh20AsmlDlUdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA58DCA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123583368.11272.3370121752221076177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61795469a3db3edbb88c7c99159f19a3e0d63dc4eeae8dd997ad8b636a58a448
Date: Mon, 05 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791235833
