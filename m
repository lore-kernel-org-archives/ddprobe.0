Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AAA1C5782
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727801154; cv=none; b=dN9jZEu0zuLDub6N+AmrNJWogYx3afigr24N6K2DXfgEmj1mbGUFso8bKbB/Yfnm0Xt6TrNqWdKRFb8YdjEaJNeI9kesIeiH7uB4gn9dq5v6o05JVpeuHC7DotEDqvac6bFgVL+a3hdpCWweFJttJmc3DngFCPavy/2bmTJUTNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727801154; c=relaxed/simple;
	bh=vDp56qK5xuP1Ta/0sqWuNQ2SqRILh5Q+g+yVmRDfk/A=;
	h=To:Subject:From:Message-Id:Date; b=M8X+yJJ5hx2c3rE8a0L4oY9dt5NNxxNodTlGnPf0bPiLWBkVPPqvvgdcECpDazu68hkUWrOySv43Pjarf8C6Y7EwckBqy6u/FDfNInXlFclYKZlQTLCCmJkvZCOVAWzopfcDk1Ia99AZy9AFnrQ4uAVykrWjUp4kDa8J9qpCDKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CW+z/Wzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CW+z/Wzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD798C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727801153;
	bh=vDp56qK5xuP1Ta/0sqWuNQ2SqRILh5Q+g+yVmRDfk/A=;
	h=To:Subject:From:Date:From;
	b=CW+z/WzdMcGQLz3gHQH3KCjvtFBirfqCFMrhu1l3Iw8YVd92Afgin95bf1UmanLWm
	 uK+gjKTKMfAdOp0OHH9Qcc0MXFwYEJNJcQtRc1vZ1FfHLt0FPdATLwA89rLZKWU2/j
	 5JNukJtqHXBDzumJDJy6sgX9AfX6mBX62sfNawW/oJTuGozQ7kWkQ2toyB51CIEvre
	 Qx8GFC/FaPEjJp7fu2UdcrhOnz9zO1waqK2hgYuTlfp2ehMPw4HvIN5kCFDefvVf3y
	 Z+INC4NAD3kSmPkyyfSsJtqzRAZfWdwfyH5YlIIJn+ECPQMtl5lTNp9R+QWqscRZRj
	 bzK3n5J7sQMYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCD8CEACE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780115362.28223.7633858857390924727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6ecc115b87c7a9091a3c7d0b9eee534990df293978bdd6b10561f7df501587
Date: Tue, 01 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727801153
