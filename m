Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A7C19D881
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721139323; cv=none; b=Q/mq2aEp8asUR5NxpASXAPymI6ZkUQvDtNMzeI/MUpKuJRMn9lOpSf6V3P/dSUlrkaC57p5X+EkeERNRVS9TprLdsojESFiyeDM2zYmnNe2uGKUph4JC9VNayFQU6LevQw8ERdH3msQZdgXcgxZ+jQ33/MBHPcV9Rzmg/qVcseQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721139323; c=relaxed/simple;
	bh=7xOdIRDoiaB85gEG4qUPD/gKHOdyviQZM92i8SUlDv8=;
	h=To:Subject:From:Message-Id:Date; b=OmUzQOcHutQcpiFB6tmOP6pF/tfx2sMffWG9ImW5PgcfcK2jzZ/7+QjtpKxBph55GfJx5xgDEjpfaGxqSUuuPpTtq9mqwegEIaJplsn3IEWCZk/v5X5qO/GbURIilZ+VJzOVUisiC29OB+6FhLm3rC/F6P2d7y8vobm/9p98Hzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sg8qKHDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sg8qKHDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB03C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721139322;
	bh=7xOdIRDoiaB85gEG4qUPD/gKHOdyviQZM92i8SUlDv8=;
	h=To:Subject:From:Date:From;
	b=Sg8qKHDKZrTuRWsnzn1qp2okJBFFc6RrXqzH1yc/mczWf1yGIeCYQgsrmGitoQ2+Y
	 bg+FawKaZwWmC4hlwuCFqGAbA3m+68u+2WEQfDPi5vjOv9sY+S8iO0zQHEvIRZ186v
	 VXN89WuoXTcDVlEFSw1hpNQKlLkmLce+qlk4615uY49Pj8KW0R7WR6Md43HVQp12Ra
	 5Je0FSkdKqSmLxNMCIehIa3DUAq/x6H4SN+OHxbI8TVE5b2KO7sLOMRAECXO58di35
	 bM8SUMOWQxDgvKrnTabDvi9zQUeXA+8BXH13s/weKKt6gj/6tKDtI8DOgzwQvXR2ZK
	 r5/7M/mrwreqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE92AC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 14:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172113932277.413.1085402622236555233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ceae94f1ea64dc3b11a515e30ce54cd58be943fd74cacf4dadc9d347a36559
Date: Tue, 16 Jul 2024 14:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721139322
