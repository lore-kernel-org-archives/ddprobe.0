Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389362690D5
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763358114; cv=none; b=igX5dsv8m/EdCjHsznHbW9/fRDsCfPAVV5z7Z/iywrnD51kEJvSRO5oL0YD8xeLvud6X2fSBvyryqhIrTiQXzl1qCbuzD+zP4Og9/EZkh0pnNPiPeP0uZ+4eNMb9AWvwSIYSeDQ+N3tKumP3fI6h7LK6scpw1LtkmYT9mIqFMnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763358114; c=relaxed/simple;
	bh=J8EIh1yE/E05JCk9KmQQS2xs2OuzTd/e/v30AoheU0Y=;
	h=To:Subject:From:Message-Id:Date; b=LOqD7W4KtjXnJ/1sQSVq7QPFO15iwfkOwE6LWedV3kztc7tK9XaKSapRzXrwsXPn9uckGOPdbnTp0jCVXTtunKnBAYnCuefpfy+D1bE8KHU7BRm+elBzMRJpK6+btsRC6DWp1QTcGjo4uUatqSqMUzQtImpKfuflMc65ctFIVrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxIRVz0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxIRVz0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6447C19421
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763358113;
	bh=J8EIh1yE/E05JCk9KmQQS2xs2OuzTd/e/v30AoheU0Y=;
	h=To:Subject:From:Date:From;
	b=FxIRVz0JIMRcxtKLmVzVR9GbDiH1t0G6hmhcYpvyWkUOgzXsfd27mj9bf1dPEVzTw
	 +JNAfSM9H8gEnTwSnneDf+xqANqTlncUCOoKXLsdv3WlnwQ1VAvx6+16KhakLECSRG
	 aqq0604TQcbsLGfcXcyzJrfnN0stbXsRqJBWkUG6YBF3Fn76KCkP+kOUuh3S0E9hy2
	 ClMNkbt/AFb0VWxpfWVTrygLike/cbZ+zlltbLdjBsI0LByDG84QxRWbE7Frr7a/Up
	 PXwt/YeI0X6y7SrEgPEuH1CQdT3SiqBQkpS025cKDoEAQNXtAJKugUcXJpjiWqzgkG
	 CUUcvaGZNI97Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBFCCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335811363.15001.612345200745956209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1ea719c79540b054ff638e69cfee0f8f01c1f194c776aa0b5465c37837ab4d
Date: Mon, 17 Nov 2025 05:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763358113
