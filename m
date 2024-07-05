Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6891448D4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720176923; cv=none; b=f5Uy4KQ5vrbfLvM0IB7EoVM2O0lWM9z+nScCpDZBTZoPInuXAPrSucM4CXKpKNXDDvGukYTOrgYW6wwrL8mC09x5LlsPSyZH1aWKQWTO+TnC1icm71uIBJzEQ7BO6Nv9S0LrkNmjaLED/1S5RtPKeRDuGD4/60BDWGzw8Jyn4Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720176923; c=relaxed/simple;
	bh=KORbKEHSmIza4FdLJHvPa7TrZK1o5xVQaFBz7o8EEDQ=;
	h=To:Subject:From:Message-Id:Date; b=eTdW+RLBRnTqrMrsiuT7FHQuQBhHdttB2vuTbRicigC+gL0ruy0hT2N2pFEgn9EAHhzutEZgWhLxsT5v4WhbkWBA4LxXcOp8sbxNiV2qWkUwu9IVrUDFu/FVS+/dCoRfhQ1rC8crbQeGT/cbBrZCuPiD23NaJeW261YQMtOrNKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1AvJ8G/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1AvJ8G/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B16C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720176922;
	bh=KORbKEHSmIza4FdLJHvPa7TrZK1o5xVQaFBz7o8EEDQ=;
	h=To:Subject:From:Date:From;
	b=M1AvJ8G/SIIc73dXR08LtBYdMJbGcbyzZYlYn9zGKGmmnpRNVXdeLAmPIrEc0xImq
	 LQPTI/P9VpPByztYGB5E5QeUyFmXmpfXIFVXOJq8puv8PlsCOciNZ1WQ2ISJIMwN7k
	 sUY5kMEaQT9J0nrmCVncJKPIfeZjktdmmK2lLmAK/0Nrbucw8CvMfwFNCNcr/gZltD
	 52hzwGfsXaKfDSsOKok/0vd+W3jtzYipd16iYap1QM4LcXuUu/0s2JRAOqZXMV7BcO
	 efFhp3OW7zQ2ZyEPRiMZ6YRpdvDTTx4OGTJ7F7CV4Hd4D2mtytig0/1Kjem7lwhYIM
	 Sooi8XH4Fz74A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C420DC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017692279.8715.3783249981699648432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32ef005f8b93e954598293f3ac912640c08d9ae734ca55aee69ead59d942c4c8
Date: Fri, 05 Jul 2024 10:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720176922
