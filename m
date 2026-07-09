Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EC33CFF5A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783629514; cv=none; b=IuvoHf53bvTJ3LkpfuJMEux03A80oTs6tHLPcpjqG0vJBXv56O3RnCW44b7ow37gcYybonMjqDKZUeMBU+RcsyYKidSG9/YhzwgV57YQDhWJwO2EVa7eqCgkhjUk8BvHI7AKnK4F+dR7TCcbAXI7GanaQSlHAD6FeDFovI35cXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783629514; c=relaxed/simple;
	bh=EwW4G7PCBIw79y1hke9Cc0N8qrstEK7+4rDPkQD5N30=;
	h=To:Subject:From:Message-Id:Date; b=HKqqW4mY+2bmz3eGcIMl4S8rQjVZQQxoYOUe+lINYo+ANuRRc0YZdttVWfE6VSresepMcjWcx95bg6JpYF6bxojKvNQwT5xN6RC6l2YZOhoghJHH9A9ZH490wtDMXheE1SEEgwSh5NoKKduIrR7575tY96jVQGVRmQ2JNmRvx7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQStQBzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQStQBzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA501C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783629513;
	bh=EwW4G7PCBIw79y1hke9Cc0N8qrstEK7+4rDPkQD5N30=;
	h=To:Subject:From:Date:From;
	b=JQStQBzby9NkX8KJgC0QonZQaVfWwz1uXNlSXM8paLBdjAWbmapS+i5N8Gh5a23ui
	 HVQbnbBkiBshbJqfEB7eQfrRzIi/tmLLVX+iRKK6xZ6FlNKKkTzWh/KlEYhzcyj6Rh
	 uQbAXbLR0DAY+IBWKZCyinBM8RsgCJ3Lo5YkvCKxbMssSdfJcaI4YTDgU5xhwdihxB
	 PbI4CAJ+bfwBIagsH4ipet/FJsIeqbFGYszwN51oAhYx1q1tQ7QbbJ5fjr5FqQCmbw
	 Lrg454MESapXn3fyBk+KNLn4uofdrKkC0PWDeViiNCMBXyfxBUb1360PpNK3d14Ual
	 FkgjvaZEoAaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9555C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362951368.26485.15471623121915451274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bfa169d212b1c4ecfd59014d3e144ac93745d0a533c36e548bb5d28811f169
Date: Thu, 09 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783629513
