Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3063519882B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732821954; cv=none; b=tWtZNNI7caqkhEA5ZRHkXd5jGuGn5lR/VLQymXXlE0gpnY6TzbVQYVEDS0ciMB1AsNC9Bm0G0HqGMIy0Rebvphq2Gf5je7LseeA5Z36OLniYfzM09BNr2YRVsLDgacIlmHOWpAF0waGKj9/lVZp+ny1yJ7K7/mBbrI9zTghJKi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732821954; c=relaxed/simple;
	bh=gBYmHmjSSTaMhw9NLHAEeyjOGUXQEFfsnW5rpjvsDrw=;
	h=To:Subject:From:Message-Id:Date; b=oSSp0uD7ryuk9kzRkM7++ZNdVdhbMJeaNPt6kGGSQGlRr22D+t1+nDwkCEKjBUeAXJS7VIvcQEWmcfDuorC9gspohpczdqV0+h/e3Fvyba9oEVa2gno4er+FwNnnegEtnWEhPUYro8DcZ+IMQtN7OQM7jPWw/BEZaA5JjDmEu/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8kxJmeD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8kxJmeD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB8EC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732821953;
	bh=gBYmHmjSSTaMhw9NLHAEeyjOGUXQEFfsnW5rpjvsDrw=;
	h=To:Subject:From:Date:From;
	b=q8kxJmeDXOGQC7Ts8RAYT5kRPUl1K3SSdC59l3Wj4gmepiYXcpu2iT6ln8DSlU/S0
	 Y/2aevKEf7hmDrTZKpo0P+XvoOYS/D8e4uDsrBFXWDYJcDAjpUOtvtYo+L3gE9+gAg
	 uHstlEF6KvJ3+CuNjOV6AjzBnnXUt4XCHH6UCPaCA09F7CGbfZoAsC88bCa3ZKsr9S
	 TbE6fI+265xsievomZyYZ6ZYdVXA74OgbczPqGtYclUogN9VGVZpQTYi1GU51iHjWo
	 PZCQBx5475rsyzttonx11z5YWT25oCO51w0q9H7hPrpJqmWfOlU4QAYoktNF33SM3t
	 ium31Szn/fGTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B3AD70DED
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282195359.11637.17652046682946554263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f75d4624ed70674b59066f950859284d01bc7ecaaacc5c5075c7255ffb9c68
Date: Thu, 28 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732821953
