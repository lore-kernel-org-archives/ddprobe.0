Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E4417A30A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775333134; cv=none; b=KBwDQDH5MD8yFl6yvQwy0aKZTbdonyU+JAMkVjHgJj2QzsGqN3Ycw8cujPU/Xe7q6OE7raZbDs10vja4ZEgYsYAZuzrAi58BYx7m/a5IbpPk8v2r0Vh+RXS3IfTSNipMVUDMjdSj94KmXCPcOztWVNjbQhqzSiKZjCATRc97jZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775333134; c=relaxed/simple;
	bh=R0D/NnhCU5MTghEdvrZ8GbxVZodJiT/+0pM9eTmAjHI=;
	h=To:Subject:From:Message-Id:Date; b=HazZb+TEz3pubIyobHFz8A1W1Z+oo5c+Cuk0MdyviO+0vBCpFiKrNQZlEGQ3VGNjv1Y7StBsMNJapjeRewpKNB7t+e2JU2nrGqr8KE6KVR3zYiqj7L/f43W3hG0jSpNzElc9dzkMRU8ccJXKXCh+96FnMiw8h0cZXWoBcnXGL44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0vABF05; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0vABF05"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC76AC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775333133;
	bh=R0D/NnhCU5MTghEdvrZ8GbxVZodJiT/+0pM9eTmAjHI=;
	h=To:Subject:From:Date:From;
	b=V0vABF05yxRhung6yj3SKvMnwFpiBTLkeGKnQLDG2UQBtQjILo1EI/Ofsc2wWeHPs
	 bMRqn13UZtLG1qbG2WLBsb0L3elCyvaZkkQV2VQ2kxQwhh1JB8EgqcJIAZFf8oQ6la
	 A9GGcXKEkZNA7UGnIhBn120YMgiUSZRByB6HAZ4jpWJauiZ2PIdi1iury4P6lLXGy7
	 QhIVtnOy+kNWZvWlFmL+ecqOoVBIxnWBRx/ecnSnCn/IlbA9uCmdQUnD7afFbtFQei
	 oMul7QbQvtn4FScLiPFrlgR2uDeqSwHiWeN5+egraV/U3s0UGlRuKupDoF4bLxdNoi
	 X7luKh3j9VJbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD17DE63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 20:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533313369.17124.13446219426379994528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2f45868a45674a28842332d55f363ec9115175000ec9ab9b16072c15d6ce8c
Date: Sat, 04 Apr 2026 20:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775333133
