Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566E23232
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713694223; cv=none; b=Lv/ZVQTp4AnhrjFxfJ4gS3mHlDONukSs8kUDmguEOH8hiV9C1TefWmOtTZIvkUxiiEN/CgalQ6eYg/sWJ+umJOK6Q3HwrtRdEoBmF3gTrJ4L2c17UILncr7/X6TGt5RgrhhX8smwQwOCSygnyBlYoZpi57ow9J3PqwzTZPXixP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713694223; c=relaxed/simple;
	bh=g/YhgX4Rn5/l9ErxPdtQkFhTYeGz788A79ip4+/j0Wg=;
	h=To:Subject:From:Message-Id:Date; b=EostAlTz5KPub7/lkTeBkbkESxRKhaBekX6+qI3WrZB3VYGQQqOSGb+mBqqON7ZjOrCmUZPWnXd5QDlmpwlizkwSoGNJ1QXm0J1xWV8vTJHoOttZkGu+wsoqPMKFZeFtyT08zHtDzApOR8yDQfoohzhWDk0MbbAIxTmVgnNh67A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrS6VZfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrS6VZfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1164C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713694222;
	bh=g/YhgX4Rn5/l9ErxPdtQkFhTYeGz788A79ip4+/j0Wg=;
	h=To:Subject:From:Date:From;
	b=NrS6VZfqMSSiGr7PUlQ2IP9mRoaHLYqNPcY29G5lYdzVbFdgwiZbX9bU47dEWcipi
	 bQM9iBwnfZ6Z0HxskLNVSscvVKXzo7HRSZwPfI8ulLQq9+hTPqJC8REzsMC8LA9khz
	 H8rBcxZEm2p168DNpqVByoGcR+jPZEjYxzrOZfc2j8fbZN2BiopLOqdc/pGym3CwGD
	 IRPNEK8EtbdPXYp06PR2seeIa11akMvgLT6x/iQINBwSIQBR1OS1lzHCmHIRIGXOBE
	 54qaUpJNN5wLu4GkbGwoHBbErtnwz1mK/XgZDA1O8tPoPqFoo6d/uGYPUEEwzFXqOL
	 4cjDR2gqCNopg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB513C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 10:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369422279.4202.8637789247139631850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef1ccc5ca82c063dd90578c985a35b9c61fb9e83e7a46a8e4c7c8f1fea4ffcc
Date: Sun, 21 Apr 2024 10:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713694222
