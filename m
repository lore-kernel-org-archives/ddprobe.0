Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B7F36D4F0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763779914; cv=none; b=Iao9P6ySX/MeXG4HeQkNPCEF438TJe/40eBXRdfHXve6JgFAg8Rfoc1r4+h6peZSW7esfHsLlNi9IyYqIOoLyAnnYgAjaNZcAqIplZLbBBo2NGPlftqnr4q4m+kOTEFyvhz6QO+WnxvcQSyteFWUt7Kov6SiWNarRdhBKlC3Woc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763779914; c=relaxed/simple;
	bh=LLCYs2hox5cn7iDZt9hflv2IYr+eok/ox8P3PhwPOuU=;
	h=To:Subject:From:Message-Id:Date; b=pLYnBkuJeajwfRcEFlUwofuhVtNjnDkaKIskn478hilb3YZtwP/q/ZCnFxV5VrYbtPQfEUt4wxJKVaVZKuWOl3uc2KaaEsGs3rspVKD9T8qfZ+G0eBIftJOAasEv/qIoz6ySGZKIssxqIvMDdGewYR4RTPZNQka2T27sZPsGfko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZERnunl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZERnunl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6609C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763779913;
	bh=LLCYs2hox5cn7iDZt9hflv2IYr+eok/ox8P3PhwPOuU=;
	h=To:Subject:From:Date:From;
	b=ZERnunl7VN4TL1eEzLZ36G6mUDYztzIYvcuBcsrHXWOXgQSI664gw8fTLlWd9SRjm
	 Lcje8etaMdKGYwifDfzZKGBS17BRWNKz0jfX23burTXpS8ZCo1OJYbr7VysqiSANzI
	 WTM09Nw3NWtK5o+QhiE6emH90MaVK7LXdXRSsxV3Qj8R2oT4kYQ4Hs0RICx7j7c5X8
	 Qxu4a+0SBtmOYxi4F65sDJHDShHuCwsz+O5j3SCBX4XfkfKk3CtQQB7Zqtvz9fZH3M
	 ypdfHZ19cls1mAisjvcJFpaArucugNrRQhtZYhOChjbyygXrdi2BlJ92D6nCbd7T/T
	 2w8yaTGA7ZKPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4DCFC518
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377991358.18179.4421704785422307633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44aafd60a1e3a6a29aef40955b14b782996079e7d0cc8254895f7c35d7db03b6
Date: Sat, 22 Nov 2025 02:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763779913
