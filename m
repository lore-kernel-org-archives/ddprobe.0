Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3379BD530
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745716794; cv=none; b=otNyvGuigNelYl34AxuzNVSJY6p9Jgo3jWR5qhvygzriyASeCS/tkn4mChrk8K7zpFfMzF4YehZSywkAlAqaNYXLSK6ZPNyCcLlQMnZ9iNoycwCQBRbdkd2R2JV/lmVA/t9bCbc/TG8+8rRfiDAuGSMCUl6n6hpWyd7Mniqebak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745716794; c=relaxed/simple;
	bh=jlNSiWnANc8woejUEhLvRxQiXa0KvZuru6zWCEniXJ4=;
	h=To:Subject:From:Message-Id:Date; b=ZPL9UbBwSK2scOTVQwbNFRaKyrvE6zhG6dB9kg2V1ZJvMweVcIyu3XEq736K6Dpuf9RxCrv1OCFBPCcNqYksjsnPZU69Jcun76xHvT4cu5DZOdFnU80MFfVkgUUg6FDOjZ0nRtJ6WEllq6f2emThIZk+oVTghEuqWJVWNfmsGPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEmFlFOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEmFlFOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3123C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745716793;
	bh=jlNSiWnANc8woejUEhLvRxQiXa0KvZuru6zWCEniXJ4=;
	h=To:Subject:From:Date:From;
	b=KEmFlFOY6xbcgvxBuRUmrqRlSYhPKkvQ9GmfJjqKKMXNHnKMQq48M8XuSkmP1gTTz
	 pDT38b9JIeHGjAONQ/guAeacfjRGd8qlGfgbmqfuvgoXOXWYnsawFYv+/wFu19ELA7
	 hspTyTz8yb6WF+nhHpgNbn4ea/B+E9kxIK7X1MbN5p2eRgRfD8sv+cj3QU3knk+xj8
	 oXBLl3fSv5Kc1zjP/XvohBpC9ody4YFIpc/1vYJbM8NUtXj4ZXJ0byKuOwyBMn0wdT
	 q0ECXyW9obNvh3hg5bv6mmSQoJMJcmVklj8SE+BqruFczdIvuAPrw5sJAUOVZNBcxb
	 wFFabF0TTZtiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E87C369D3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571679358.8030.5969510072215722648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5397c2c71ae9346adb5aca68fe1334078ba88b6466e83deba1ddf4b766f8aa7c
Date: Sun, 27 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745716793
