Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2123D96A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736562354; cv=none; b=Vbqx41GviWwG3lge3nEJkbsGzOgHLhHYmQRFKvLeiL8EchrknxNFEeIfSpUyWEiwBumd6VZOSBRcw98ApAAA203iaR4bVhrYD0geLdu+OC6ooV+L1ROElxmL4HDXhJkz8m4oGC0tDgEvd4litj2IQ+gSLBAqZpogS+rmVMHKfls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736562354; c=relaxed/simple;
	bh=UC9gOHFgij06E31BUARwuoWdow3h4n3uxZD6LQztUQA=;
	h=To:Subject:From:Message-Id:Date; b=Pqn3LWDWJnDkZ+HBdCT6PYxX1ePVPqJFliiJk+032hmBeD7KL9NXlw/dGXKQ3dMDFvpdProJdqyaXNEfDwxFoyRekSMWrSTCCa9RyLTyO/ipEhKbqJ3n16958m7Tqi/A4k/oMw1742VIIPOY5j330VmHEeHLq1D+0pfdTNYxJaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+jLsKBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+jLsKBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C3EC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736562353;
	bh=UC9gOHFgij06E31BUARwuoWdow3h4n3uxZD6LQztUQA=;
	h=To:Subject:From:Date:From;
	b=D+jLsKBhbo25qHXLo7LO+EJ951+I/xryjHKlFe5b5BJBtb/jnn2KrefkibEzOj6In
	 kuP38TWznaiPPwn50THjfVlwsX1M3JLukOU/+sB2XMNKVLeCGQwzLVbgVmr6x8b0Xt
	 EVf/I6JN7xq5rdd4Z4x5NP/U1GpctkVRLyIrw8c8OD5wYg3jrRhFG5/iw6ogTt6NDV
	 jAAfuktS47AhCpYGk2Z6m5MB7mtoDjrFPidPNkO6pVnGSmaOx3FXsn1eX2QysxYuL8
	 xZX+gn0QkaXB18+TumaiOX/F1zQw9gLVxDz0suYy5dtm4Y2Q+5IDAnNkfQKee7YIuJ
	 TbsXiHwbEVBiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C07DE77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656235362.22200.906344048456224896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f627af662cd8b82eff33dfe03d881b19e707955740497a4a3fe286a685d91782
Date: Sat, 11 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736562353
