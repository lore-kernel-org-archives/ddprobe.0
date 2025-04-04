Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08736405F7
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743739194; cv=none; b=IT4zhC17VELphx9wYOBeBm5b++xXAXWdX3UF/L0kgZxLl2y9BMtkf6bA5vriHDmBe7HtU5ENm0zf3p+okdpYUQbG9TVuaz0uqT099UcgIBkmjHxMe3Z6OEHYNxSw+55kWVBWN1RFmYgBVXHBn6ICPQzwmwoV6EpLj+Dm3JnbeTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743739194; c=relaxed/simple;
	bh=byuZEVKaUDi0R1Q5gA3BunpWAVYQHXvW4FgLY8X6hX8=;
	h=To:Subject:From:Message-Id:Date; b=KqO/L3ajKo6owKnbyqiDZYkggHLzziXXncL4GlLDH1MSKsIaRkMQOncqChFh2VNjWTPgbx5wxFrgrD3YiiAN8wX6TWvjI4gm5M8OHHEyg96p0fsyiEpFKJUoWIl/1fKgIg9HsQpor+lRI2ZZHWHl/CmqvWRW4x1TcKbBPSB9fzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujLQcITl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujLQcITl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44FCC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743739193;
	bh=byuZEVKaUDi0R1Q5gA3BunpWAVYQHXvW4FgLY8X6hX8=;
	h=To:Subject:From:Date:From;
	b=ujLQcITl8L03vhEeFjkvLN/PuyloNDsrTNRf6g1/h1KyOyAypS4+rbwPxZfnsslQl
	 LbIZJP12iaZ/GpjzClyUPQOQSb+5UmG14wu+q5H6TPLGhHIUt6rNvN50k41ooOLfro
	 eiUXtnt7fSjlUUvpXC3TR6Tq61eUyx8aGlXxFQUXUTJ1CzRQ9KPvWXckc0cy+zEZrY
	 ouLgTlSpvqAdNIK5XNiRIYwEyBb5/vO9C3UOQnkZINKZBWMAuhuMm5+GlznqSSRe8E
	 TP44Zqp1uMZM37DX7j3k+CwTXwPUPF2UVLsHLs2XEUVKLDqwdXvTclMX3KsRi7ErZP
	 b5WfQnzYTFZxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2308C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373919367.32204.1388025138688257054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64588fc887d32179ee841e29c97135cbde564ef5197a3f8293b050b6a8a4808a
Date: Fri, 04 Apr 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743739193
