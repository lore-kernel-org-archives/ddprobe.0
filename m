Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45BD415B13A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720700243; cv=none; b=CPtWwUApanLReyICEm8RO2uJaogOn8cmIRp82t2v+W2iZ26I+tS+yNmmbaeAR3rgpudcABmyhEHUAWC7qfjLeE13kXP0SqcVqQOnM7IpbvjLvmtjqbAwMJugyrfS2s095t2GHrIs/F1isq3iS1cL27igNVPeTfvB6GxanCx0J9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720700243; c=relaxed/simple;
	bh=6UUMaS6vUqxXMfxdpcYYi+6htZDMYy8Q1c07Z30W3BQ=;
	h=To:Subject:From:Message-Id:Date; b=e7WVIMwBdNfE0KQvUnFZ2p/zZD05sxJrxIYsNEQXdHUsQFvgepp2nDDoD00HwfzleKyGY0PZZwpYY6SWG0gpCUFwlpaW8e68DgEIFZYpxR/iZwcPpaUmCokE5xCefQKeLndlsfX6c4qv0osw3UD11xURpwlJH0EBdjnRSNGhcQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+DrVRmX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+DrVRmX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D553EC32786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720700242;
	bh=6UUMaS6vUqxXMfxdpcYYi+6htZDMYy8Q1c07Z30W3BQ=;
	h=To:Subject:From:Date:From;
	b=M+DrVRmX2Q3UW5KwdZw4S/Fx9OxV0La6n3Xucw5z9kOw3LewKKMYquBaTqcscHtol
	 /Z2F1H4HvbrbZKmBSs8lhg6raLvH9ME6HoYBZqjbBtYxr8LfdLIC70WJbqhG7D+t/I
	 6YvEc/vVdMS1cn7NjEJ+mzrp2I0V7l2vdcV8LFiqnr9UshOIY7PpTGtr+P/QbF7D9U
	 ijpHKzD1R+KWXTJILhbAX8/qLBDYuNNGAIHRF+WIZrfccAJFMgSUQxIc6MNrh9xxnG
	 9nVNYDi51njqZuyfqWZ3K9mlPSZtkR8EoqyrZXaLYqTQi7xbWbZvfuSS9VpspV9pB1
	 oDwV4KGx8HVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C265CC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 12:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172070024278.7140.17760049557579858557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396a8e96d6c746a546e1bd88d5bb518c6668e64b875a9f7efd01bfc2224e2e4a
Date: Thu, 11 Jul 2024 12:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720700242
