Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FEC245012
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775404534; cv=none; b=d0CzmCbqodqAXndvn5yj8ft0oS24t+5RYjHM/aWGQLd+LVtwejIj/qJm49M9cfu7j+4BTo4FkAFXQ/Bo/VUY4MTIr5P5yUP5E6rzfUBcoM+s8QO9oHRrfKQzBDuAxlPPCSMaP1iXzrc8QoNRNXFI1YT3rC624J3sG4QnnXKVfgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775404534; c=relaxed/simple;
	bh=3Spqa9zIp6ZduwS0NVtaivbttcZN8UF4hzx/UKVPAM8=;
	h=To:Subject:From:Message-Id:Date; b=SFhEA8FP/3KQ8Ia7hwNQpwrJNSJyOImMoPIx3Y8/pKhs0Yo/Iy4ETQ1uzUPUglFlI7mk3viCJ61ckeF+8VMLXowhV//FOT08iS+6hx7ooqPK+uP0krI6Kx+VS3I7bUc+kppjs8iTi7lLmzr1pEIdHZnoBmrlyxC/wY/qsNUBBJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK547RI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK547RI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0F6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775404533;
	bh=3Spqa9zIp6ZduwS0NVtaivbttcZN8UF4hzx/UKVPAM8=;
	h=To:Subject:From:Date:From;
	b=lK547RI93hGh9c1RfKjTENOgqvDJSA7zij5fFeRl3boaR6SElpKo+SF84or4CYtzz
	 yCGynKrdr61HABdHt5amy8cqqWf2Pm06jIMPcLq2gSb62H9dR4tK2thzynmGG2gW+v
	 AheNxY4u7KJjQaWYwd2Z5sB5y1eT3Eh5qVFCNNlFHVl01G2P7RZ4KNwyAzb6mgw1oe
	 LhBl+9CQU0ms01hE11MIwBiQtAld2LXwvCz2ejuYKK1wlME9xXnHJwSBXJKB6vAh7P
	 BCbBHKGQdiw4fCBh+KCAOMF/7m6gvV/VX9XhCNZ190HfMJ5DsPLT9i2BlJmTI7cs5y
	 ow39W3xDdsfEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BE3E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 15:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177540453372.26114.16066552185983315542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3e5099cb5ddf30aa43db85153d3342060cf9d68754ab75c5be0655a3cd6fc7
Date: Sun, 05 Apr 2026 15:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775404533
