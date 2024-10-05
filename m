Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA16182D91
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728129954; cv=none; b=I8QgKB5kKY6nu4p6ZjwK3WXVFDLYbIoXxm1DI2tpQqzClCv3jSBUxHtWRxdy6/SP5KyawSXEPSeIx8K2ikwd2y7bf43TiPkkWH9Uas+FWp/AvCg7qQdeu5MqrDcoKNa5I1GSnc8BxjXOHEKqAsSMywDU8NQZiZa+9vljSNF2ATQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728129954; c=relaxed/simple;
	bh=U/RwATwsfhyHk22sT1GYZTPLIoS6DFR0zute2ObXwZU=;
	h=To:Subject:From:Message-Id:Date; b=RQvOpLW4fRDWmFL49qRg/Yp2isuxT3iP2RHqEgpk9xmLlchjuJ0UB2glv1ieyio6Jcz5CeUx+qsgdUfaa6Qnh1hwEWW35n1Hy7LyEWQN6a5VQuR4mUDn75rXFaI3I+5NjSWX52aPmtvBwVvN+Vgijy75hu5t0o/YX/Pu9t6KpLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8bIXZBM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8bIXZBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8B6C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728129953;
	bh=U/RwATwsfhyHk22sT1GYZTPLIoS6DFR0zute2ObXwZU=;
	h=To:Subject:From:Date:From;
	b=V8bIXZBM5GRvZc3AcXBrZiDL4Fytnpdq3QAqmSXdGqH93hPcqVA1ZXWWWUUEV0boL
	 H0y4qZppy+zR1kwsplQGqvj8LcLTupdwKnA8e05UYX4eAKsrxFN5nBDb0AZWNlrx+z
	 epuaJJrDZ3erjnj4bm52WfcvqdmE6FkFHnLgWWi1Q7VQOo4rlGfgib82u6PzsnytvP
	 PZTxnanktOn6FI/Mjtpi9qxiJdNgjZbG22yLYbLIkg7+0jjWTHrUGZWBcBGNrXI1S4
	 4GAISxznIIL3kadNnx4HrLub9RmE8z4nGhtdZAio8+TlzYYsm+xKSdLjD9N7Eb4j55
	 PEzIsy58zD3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAE9CF8862
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812995360.24442.2644645206679238514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9161e2713aa55812a88d36b009acd7ae054e77ec2982606b7c7c58ef6597d87
Date: Sat, 05 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728129953
