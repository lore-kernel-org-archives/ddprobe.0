Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500358485
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718072303; cv=none; b=jKeU+/dWDrU8SLnICmDdTKd7Xz7KMlw1uIqp9BsHFt1EJHlRGHaxAmRLv+2IDhZC1RE/y7iDlNVkkPxE8+Kxko9vOzEt7M05BFk8Le5Z0dn7tXmMzWQq2bxG5h+i7X7aOABIXGwrEJo+flzWBTtrn8y+5um1PqELEusbozuaRzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718072303; c=relaxed/simple;
	bh=UyoJ5eGs7sJloK5Der7aadx/FI8wVAWkQC0tWuPbGyg=;
	h=To:Subject:From:Message-Id:Date; b=FNo6ZO0qh9CwcfqJj1fB5pV9ipg1nFJz3gT5/PczpdrD5DI2GScbkgwfrBCQrVs8A/fwe9vmllir02RibXwA74HNMEo1tFTnTlNjdrviaI1BS1DFchPFNwjqVR1DF/8EOQA3hMQcQd+UX9kH/wKkNG5X126/P1bDG9jszd3ygC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPKR8iKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPKR8iKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC92C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718072302;
	bh=UyoJ5eGs7sJloK5Der7aadx/FI8wVAWkQC0tWuPbGyg=;
	h=To:Subject:From:Date:From;
	b=PPKR8iKWj08TyOOqnGZFOkmBbV2AnLSMI6IKHz8MAhE4blQ3SzAY5w47d2g7x7loT
	 5wNmC09bqQdurzpRa8X090Ibp8xquQ+XTML5vR5D/L526tnivosoN2zopPuc6DmVgd
	 Ti7xjSBTyl3xP4jdMj6zdaoSVfo81+qg12d5rhjRUXWgfmUTEFfl6/8MXCtwpzzH+o
	 LB1PKTqUhWeqoz3CL6K5xCoO0Od4O746onWDOBHteQwJF0uqFiKZW6OtA4Eawqkscn
	 V7r7dr6VBqDGVrIac0aKdOySCVlJ0wUYaa1zb3kQOQ+QESJEePnDTJ4GKQoumtlcUA
	 +rFjzpMm0PCyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C553DC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 02:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171807230277.24041.1697225274177475892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318a319f0317b30413b0fd4a829092b4ce45de8febd4cbfeceb28c12236199d1
Date: Tue, 11 Jun 2024 02:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718072302
