Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3E910F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792369234; cv=none; b=NrbMUjtm7gMxUjpkNi33F/CVXH9o2zPTtqYYgr3dmB/I1g2WYfQRY6CPa867WZknUn5ErqrVg3tHbf0x2EGSoiooIKuvAQSsJuOiKtJtXHqRUItjyT5BDPUBuJovibzVhD+3roqDzCyYH/frQTFl52fp4uwlB3nZHJ3/AJ9YD5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792369234; c=relaxed/simple;
	bh=OZWd+g15XfAjGzrbw4yaOPbO0Vcn2XqToSIqppV+ZBE=;
	h=To:Subject:From:Message-Id:Date; b=UguIXiT7kRDTPUqAvF3v6iT2ucSt5X40vXPoE+94YrJdjuoaF6ck7v75CAkbCKvNBcWG0Oz5I9oUsFP4huAQvQ5gE6amZgS0hYvcvgknIhdaCUdqk31YuuVh/z3a9HVWhxq8ES1qu60dfQqH+jgqn0F0MpGcjmtz8varqtZPy7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtayYgdG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtayYgdG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04C06C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792369234;
	bh=OZWd+g15XfAjGzrbw4yaOPbO0Vcn2XqToSIqppV+ZBE=;
	h=To:Subject:From:Date:From;
	b=TtayYgdG9EKHb5g3ZIy1fSd4SkJy3nf2jkZoj5EbL1Lb3PMcQAhtCBKBEKD6Qpuqb
	 jkb1Ff7gHW0Vnt7pa/M5BEENf+TjU85Lfyr9K/BurXdQnGQ7HuaBW0nUW6RVVnp6lW
	 LytJFNlMEDF/j6wu81ozpKtgEIqC9DsLmUPHTP/gMFohq74Y5KS594GDHi3u4j3F7b
	 YqyPZtidbXWJOIh5mM1yZkcn3VnxybqAbpcD+sB9JlOrypLYN2P9ZhKh9IGNkxhf5E
	 o1daPAZjJZgBUAHcmOvwvJBn+LWqpH0Ou6hiqcV0s7VJP+wjSWSZmyqs1HfKic9ToJ
	 Sz7p2an1z2E9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C924ECCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236923377.31149.2545160658467569725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0197752f89f2da06a6203f07913f2cd231c3d2bd952fa4116e0eaa084d6bc2e9
Date: Mon, 19 Oct 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792369233
