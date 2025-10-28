Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F292EA475
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761645594; cv=none; b=goqY/BqvHTwRoxx6kynnewlZeSGMz7GRbdQb7D1/lUkoMsu9NcbSvyDnnSW97IKE5RvWkzNyfJHPMX/tvxN6IVzM62Bd+pDN99EvsIRO2O+btIrjBM2j33FhTP2acSxjDt7itW0RgeEiuzqNv9vTp9XKRys16MuV9QXAlf/sInQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761645594; c=relaxed/simple;
	bh=xw/xAfMg3mK+aFzCPhBoLVK7OPL2/Mtr5cw9qnf5JeQ=;
	h=To:Subject:From:Message-Id:Date; b=aWQI6QL3GejdtEAvM/NiB+Z1nYWHNBxiWK2iFzqLU+HizdI/yI4jG7PDQUBzs22eqgMsl/dmH8z6qlQDu38Mwrrl/m/2kybQ0yhPjGPlb4aA6YDpIqjwVnNRy+SutvTk6TmrXn3gTJrqn+XaXqsJ94SK7mSqDViRulhd0EAgm6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk/autjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk/autjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38ACC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761645593;
	bh=xw/xAfMg3mK+aFzCPhBoLVK7OPL2/Mtr5cw9qnf5JeQ=;
	h=To:Subject:From:Date:From;
	b=mk/autjZRRQ75malebLKpWxCrYvQVZhY7UzQOv2F5V3kK7SVZxqSIiEJ1ZoqNcYcU
	 G28UPgZH6TR+47fUlMNY5pSrKHZ1GDEA46qpZEC3xTx8+7MDocSssmqWzzgb+zB+wM
	 +gJv4MadK348M5542Gc6XFA4fl9QknQpF7t0ieLln1sEmKiAyhm0CPXznxtroVQZfu
	 kGPlOSBAOCAqdjO5bURVOrwRh8XF88vcBcVtdAuiCnTeIkKVTL4DhEoMwGfcHnIHE7
	 iGRWf6dmwUigRYfBMpt256P7PeAgPllVqjtr5PhIVDbpQkrW4095DIo7gP0Nr528bP
	 klIfejuQJ2iLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F999CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176164559358.20370.15318300875113136986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d024a4888321bcd5dabf37bb6a1c150e2588cce8e4e60d1899399988541300c8
Date: Tue, 28 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761645593
