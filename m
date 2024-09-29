Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF968F6D
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727646354; cv=none; b=M+tL1642xKbNb5mnqkfCgZwXDfnN8So33G8yLZIqYZiCQ4QV41oQk9OV8SO5pmn8txISvJev/WHQ5ALos8I3b3Aq12VJ77kGSGRFu9Vxvce9085MfI8FNN76j5pN+/uHebDDfuZnIXsegY6CJtEe80EAnaM4t1njKWv5Mv82Jtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727646354; c=relaxed/simple;
	bh=0+pC/2KsCJWNgEJimyTduttVcfURXUyS/feCqFXE0lI=;
	h=To:Subject:From:Message-Id:Date; b=NGsFC6rpwrOfwubG5zhPEq6vz6WJvVX70qPsfhCXPVFLHHpglOw/9yTHwf6xPUCTnsG0xsz9go0GU5kdhjwBeo5KaZguogHANgeQCq+CaiQwLKN41kGuccv6NEQ3G7o9QfU6/iyNtWPVEm+ffKL03Qx7GWWBE/vPfEm9xnWcAys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBwDMlf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBwDMlf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4314C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727646353;
	bh=0+pC/2KsCJWNgEJimyTduttVcfURXUyS/feCqFXE0lI=;
	h=To:Subject:From:Date:From;
	b=kBwDMlf7XCxjK8QWrZG9n1YfBqjWT7bJ0VVtrx+misDursHsAdO1sZKOuL2akWD8g
	 bOD8wOCXV93UrLOqvRX85R5N+N9G4K20LPLBxpuXMiBJYS9YAV/c8+IaZghX32/Z5o
	 gkGpkc/DPYL84Fm1TxJ4rytXomC5EFKAnqKU4bT5HdiEQKNK5HLWO1mTBtyEd+LSjV
	 A6kOwKxzb5RKH6G0nbqw2MA2H0F2yLWz7gMxhtDSoshFysH54u9G7KqhH/SH6ukbdr
	 frSKw3aDrqiqhXDMqnfSy+x1NarRZ+qmkc63jVKsv9WoAeqMwZ1X+Eff8KNl+kjEIq
	 v4BXumxupJkSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A70CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172764635359.31212.10802560206881668995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3500d3523dc1bb31ecad68d761f475404faacf705d3b456685e611de6e933d3
Date: Sun, 29 Sep 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727646353
