Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DFC1E51E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785189634; cv=none; b=CCTDebnIvKiNnFdQAIQdAGFrn/2RqK+L7IDaNf4qxaFfRG+4Vr5kQehEAG+OA2RWrBbRPnGSWCHCkqcnSQjCobhw2WDpNBC737zdTwTZ6kQDwDSHlPrzRHDeMfTqp5P9ZbF4tFAH6R2XcfZfNrxn3wiRI+Xvw91ni2fJ6m2VHwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785189634; c=relaxed/simple;
	bh=NRZR7qNHJUG0IKYcsJ+942W450Et23FUNUZK6N1VxMU=;
	h=To:Subject:From:Message-Id:Date; b=uSKWK0FZNnoOuPhmU6BB6n1eXU3ylwLvJhzSvnR39gOdPTPHfY4/x3XkCexkBz14ASIobl9sXN8pVnZ6rqg5A2i42YAX/+xgmZU3/r0Bf+phXler+5ZMXKlHV7CCXM56zt1rQ0KbXKTVK8/R3rxO1QQaxxFu7xk60AUU26Ag/N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGcJGT+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGcJGT+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25CBC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785189633;
	bh=NRZR7qNHJUG0IKYcsJ+942W450Et23FUNUZK6N1VxMU=;
	h=To:Subject:From:Date:From;
	b=PGcJGT+qO4bx5OCQdYImJN6h/p/zS3r1tSLcFBNBRbL3nIbn2FqotrTu349hfYZrc
	 alds6+9yrHKaJkFyOBAcJodI5HD+jRODqbysr7sMao92vYbir88QJVzZ5nd2fkRlGf
	 zlSj0qhBQboy2zyUMRr+TyXTgZ5pcuwkEdWRnIyxRlr0Xr2CAs8KhwFV/pn6on7wVy
	 rXUYCnHT3xo0wN1U9EN/B0X9cClBW9VRhks9ZTAFpgXcCFFltMYQjOYElZ7X2LLAIl
	 nlsuPmjGhJTNThQ9dSPeh/LkcmKJlqsaxY6QXij+y2kZJ1KNNfiXm9JzuV0ktqtQh2
	 qHrVQMQf2d8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE9C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518963368.17955.9516855867397964828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3474f87bce5a5bc1230997d00305036afb3ebc9bd20cf2b965707785766dd4c8
Date: Mon, 27 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785189633
