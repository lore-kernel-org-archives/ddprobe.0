Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC1C13A3E2
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716850463; cv=none; b=r6V3F9K7AL9T/mLd3mVDfz3HTdG7XAvQsBwFctSzpO2n3evVDQ49bSnEULV8kr3EdhhDpBKcWyCVRBhKJSGSQUoAK+zCVjOIBoeynaZ6W+1DCFYtiHMojRY0osNvdvZ3kyEJ5oJqCwxKUujysNGOg1Z3bilzPLNJbdpfGrFTVaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716850463; c=relaxed/simple;
	bh=CrcFocZeq7sBtSmgpVl6+HyQBFUvNkhqa+YwQg1zqYA=;
	h=To:Subject:From:Message-Id:Date; b=ellgKrnErKOzFAm290UnW0RgE9eGFPEQQwZ1ETiiDtzMRuvzez86Jl7hmtEa6QjyVR1s2vTSUeM6GgeJbOU+jOZWAS2OtFZ8tK1Ot4UTabeblNfIoBWtJ7cLF9ICQol5S/0luYhQ3soJgAO/eelI87vnyPh6gtk4z3t7JkV5Rbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqj7biBQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqj7biBQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CD3C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716850462;
	bh=CrcFocZeq7sBtSmgpVl6+HyQBFUvNkhqa+YwQg1zqYA=;
	h=To:Subject:From:Date:From;
	b=Dqj7biBQ9Sabl05kl5sCknQ9Kw6n6dIbh9ecPp3T7fDeFsCcHaU7mFhFxXv3nBqvs
	 iVI37ELM8ygTUfDJ+cEVmucv2P47y9R7ekH0ocIYvWoGUfMwzDLVoTZSw0oNubAuoE
	 KwjzlzIRitf/rMhdUBIA1ggaLgAP8oIw3IAce1DBUVfHXMt79jSAXwahecKrUrnhU5
	 ANhn8fRcTbBRxhNb+FSPr6n4UtErNoyBPmzZONLy/1gmB5xvttDP0BB6miDZH2hylY
	 2ZXgMbC1RBhW3HrIGfC8P7caAV/183xzzUseTq7P4wS9FzOzNnEuMVhRHJnEWoNZ1F
	 qR9rbyIFGY3Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF7EC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685046277.20102.3198488477325661694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc464e216c2a4df4d436e38483edb0e4718a3b9c76e032b0fe955de1958fdef8
Date: Mon, 27 May 2024 22:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716850462
