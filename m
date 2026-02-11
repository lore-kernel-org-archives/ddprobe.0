Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0CE309DDC
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770792294; cv=none; b=OHiZtoNglbcc1WXZgfyj9BLEUje4IP+04Hiozy7Li+6esr3tXsrx8WUh70ReLOdaF/aYml4i7nck0IRt9MXn1qU5EN7nnMjs7RD3y0c06tQmlaEsOJIoY+l7zLBd32cgrE+Ss0NzgOwYAtrzTTPPKpzQEx9yYg+L5I8Q2HoU4D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770792294; c=relaxed/simple;
	bh=lXEQMCWX92QGbNiqO2h2bCwGcxnyI2StLlDFuOoY26c=;
	h=To:Subject:From:Message-Id:Date; b=LfeoTfiXQIgMLuzsA7MqPqkoSvsXEGRXkqrTK2owlBB7NOIOuAVOaEDaGpWsjhj/tow5l1MSnn/AhFvQS+LpFOa9M30joDNPVOINlrqL1/awxt6+WUA+7kVaCeVHSEFLhvTVUkFI2nBuuGw9IbI11yHGm6NGMDH3yChTx6Es+fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEySowEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEySowEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DF4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770792293;
	bh=lXEQMCWX92QGbNiqO2h2bCwGcxnyI2StLlDFuOoY26c=;
	h=To:Subject:From:Date:From;
	b=ZEySowEGGX8ojsoQnop38yxOmhd7U1sBcdg/HyRilDto/muC4fVXerWd/+wH8LLZM
	 N0asBaHMnxRIFuSalwU/QAcjVh0XAB/EhrWfQEu++3uwFq3yFpSHZUeEMXS/F5ddd2
	 I92oNp1oTqfWUk1oZYJZwkrkpNad/6BiMOhvbgjC2TcqfETqueOUc/0fEjBcg9CDGU
	 iVwYxzAfdSHwfQYm8QvTq5oYkWWS0+Cq3DCULjZGrL3H5WZA5pVDaduW1GsHp6THbq
	 i9lLxUPk1Xtn232l0FmUeIyl2c6Cw0ue282QuLmKxl3l8mb1KoTN5IZtgkB9oOYiGg
	 WqfYBXCjvnnOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4D8EB596B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177079229381.1955.6619386287246564904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f73b11d1989652901b0f8a09dd56397280e77d6a0ab2744d96337a34c8e692d
Date: Wed, 11 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770792293
