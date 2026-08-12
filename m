Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0FB729408
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786545034; cv=none; b=GMejNvpuNYNsFEVmXsrZoFPLkmIyS5RyZX4jUDK39kAnBXBOjX0KSY9ywVKT+Fs/747cIgdhJsx7t8nUPLbTeJHFfUcDb0y0QnP2/V10btyljCSsiOaK4KrPCPIs9t7jniVPy+e7TahANVu9ASxAcw87E0xxahMW2Hf9616ojJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786545034; c=relaxed/simple;
	bh=qfCJzpCmuU3mgW9uwp3G32gZacu+YkwlVqw46c7/0rk=;
	h=To:Subject:From:Message-Id:Date; b=IfjYXafUV4cGLdau4erLxdleb+hGWZ+WLxnwPWhh2Ntb2PNWUFQndSXkyvuoNtxKr9yUmG3ujjkMVi722Q02yq4GhLb6TiaR1t71W6YwH3pdr4iqFTpTCMlzjbWugAUq9g2qYciY3EQSdzI16F6+Q7lhdL0j55kiuJTtcFflT20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKwkmNXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKwkmNXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4C2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786545033;
	bh=qfCJzpCmuU3mgW9uwp3G32gZacu+YkwlVqw46c7/0rk=;
	h=To:Subject:From:Date:From;
	b=sKwkmNXtjGtj3VUkUwkBZv8lGn9eXeSFWNX7GiLS7ZBe/Nawb5gWS1FtqvCCO4ThS
	 AroaR3SERa8cCbydAXPdOQw3MIDw8B8bsFesWyMPt1hDjTxuApJxnVQ2C3vDphSjOQ
	 Bs1Fr5KBTx2Uzx4H1//aNpK+M/kZZ2UgoAmOvmMRbTO0f63UAcs4KqvqLaR7k3aWLG
	 V4RXKAmveUCFyLGnEVsnQNXR1Abeego4QkEp+NbtVZ11jw65Wr4R6FONT/n8soVy4D
	 I8bmUsdjbhS7yZdcASkMsp2H2kqBKyDOgGjmMjE8geAp+uDnqAhTV7SwLv22eoLNzn
	 pNmlIRbWXXYDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F42C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654503368.32277.4825974023081798130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8accdee3eb12d9f7da52e43dab1b0a6a915ca21e151d5bbc6bcc1ebe7b98a0db
Date: Wed, 12 Aug 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786545033
