Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B9E256D
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745679594; cv=none; b=c+TejJ6NG7KexUBDgqwgFreKcbEgI4TDMaZsq+v7qT4YCeohoZpi3SOnibvAzw8XDPB6AhxnrWG3muHhsI30ampvkMTdcYb95/dNcISo+2y9Zwdj+2tY5wzTgY9SzY8LpT2PyaZqiGy9jU7rHmX0tvev0J8HK7s1plfpziyax+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745679594; c=relaxed/simple;
	bh=NIxQVlxipVbKtlXWL06zwmavBYwcUeSMUHtpqZGRejI=;
	h=To:Subject:From:Message-Id:Date; b=mxntjpXTFNFvVLWk4rxSLESC2Ol5yC9h3kdTzTURpb80liLs+tut33AKAY6zyv/Nfrpfht0oZshG5u5qdmKCrlP1t4lG891uGjIMEqY/RuYK+WnxMvRaRIxYwHpUFsLRnVkIADCW/BsIPoZesq5bwIqbnTcMFwBfBvMc0vC84Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BzACKL0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BzACKL0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31DEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745679593;
	bh=NIxQVlxipVbKtlXWL06zwmavBYwcUeSMUHtpqZGRejI=;
	h=To:Subject:From:Date:From;
	b=BzACKL0hf8KeIrIoXPDlmJgeOy91braSThDH64qPlSwlVLeplt23oj2cuBDWJG9am
	 UIqLn+EI1f67xwB5UStU9vOU9/imYxLSiVqTGrlD1YrvodHknhfOcolGxPloYYwPcE
	 6H6Arc5YLMHki7Q9BFJ7Ahv1j7ICwYVY4y77Xpb7+iBMrn2pDWdLJBYLNo5YGSZ/pP
	 UiRadjNKRQxVjyWYh0BCHh+PY7crYgDzeYyP8XlfCUJ/AG3xfmgx3AtGNpnE8UdaxA
	 iZOp95G5oTOF6yZd9uIWHFHz6jr1Jtp4wbkaxafKoJouyZ9zHkF4epNudponP4Gk0V
	 5+smusBetRo5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B6C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567959357.31123.10792662881533877296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ada7b3083a94109a8e0310366b3753416a1a3a7bcc84110ed53a9b139193f93
Date: Sat, 26 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745679593
