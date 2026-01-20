Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC8833E36A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768934634; cv=none; b=oZg2kg/wVZie4TEocEX7rpP7VV7Yjaf9TuKqUtO4emmVUU9Fh1zfHc1hqIjXXhL1rPHvEBes1eIogsSFPJnwIbUihRL6xazhLo10srXYVMI3h0929+5pF9JUh6lpEDyycE3nyGhRLptbrI6z58DFn8A6wCxbhvhEc16xUToTIK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768934634; c=relaxed/simple;
	bh=Q7o4ZaoMBUxTHlmKFslokcZiQ42/b2ztSlecEQ3WzwA=;
	h=To:Subject:From:Message-Id:Date; b=rxek7hyWTw5ImXN/hzeGL4YERyt1ceZrOJlQER5VPSDT+ebWKI3Pz+TqdYosaq5ecVRIj6TpWbD26oFMgJZoplpbj5VzjxTeQuXQhazJH2s7046ook++NYhCT9jX/iP+KRjLrhoDg8x3Fg6JfHfFIQTZxakll33Jt3dgDfkvmmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eG7KlJs3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eG7KlJs3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44BFC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768934633;
	bh=Q7o4ZaoMBUxTHlmKFslokcZiQ42/b2ztSlecEQ3WzwA=;
	h=To:Subject:From:Date:From;
	b=eG7KlJs3S1b8Yhy+9i2QMirKeZco0BNsi2e/Wkoq/JsMf1qM7wbmymKxoR1cSetov
	 mWVU7kAzjhcF7GvbV93cQLV4eb1F+Puo5FkiBPJomGYQqXx28Ib5/pi9oNNahWHCpg
	 jih4j1qpQMgCttwOFcRrzw1yJxFB6KJyRUm0Tka8suS+QFmNGXHc7FSvS42Mh6qA3L
	 jfNM2BkJzL7N1ZdBs9cFeqbusGhx9PE6MRDRfPMSpCtACxnddzOHfZai6/hFx31FeU
	 aQIXUW/Nf9FgN6KitlI3cnQhF5wqd8mb3XjwMQxsr81NOeMh9C2b2feMbUjYv9X7el
	 A3TH+OfUzObmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9326CD26284
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176893463359.17108.6370659116370988464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e959d1d376093666b8de34ac7e890bfdb1b201ca4c7995d7260789109636563f
Date: Tue, 20 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768934633
