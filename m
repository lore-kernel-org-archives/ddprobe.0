Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C631B4B66F6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788446434; cv=none; b=XljktO6Sr1beY/Qfh3EEADOjLWnBy7Gg/nETSBJKkvI1tNHo25KqcR2Hbj7Ro3mZXJdq4sP5TctJGY66X3Ke06bum/7l878jtxky9eQg7laTnlRS3akwaT9CLpiEStle3MNSYgAa5keojbcyXGKS3Weba3vd15/CJ+Fo/FuygHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788446434; c=relaxed/simple;
	bh=dI6CAVD2t46nEm7I+iBnQsqyqCVIyf5Vsvk5Fjcb95k=;
	h=To:Subject:From:Message-Id:Date; b=gnWY9fLJNcvzcdEaxSraPBsY05dCqRhw0yrcdgqArWuqAAp+cU7oMmzQxSTwbktQ1OruuC/S1TkTjeUNbc+2vueNmYkqdzbmeeorvC6c/olQV72cMQkBsMvk7hHx0+vAq8UHiriXkO/EXUY4m/QefI6yhiI1OvsFiT831LZjPP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8qUuml+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8qUuml+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ABFC2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788446433;
	bh=dI6CAVD2t46nEm7I+iBnQsqyqCVIyf5Vsvk5Fjcb95k=;
	h=To:Subject:From:Date:From;
	b=p8qUuml+L3upF0s5Luo9mQHtC713H/DSuOLJB0K+wwfEQTLfDkt7oMPQBswQlNGeG
	 +MKbQdi4nJ1mRxH7ZqL45TefaP2QtG+whCRj6HlsrHv09g1ZHFpXl/i9YRodZaYAMi
	 W2/8jIUEqCQj1MgcRMRxDy7akSvXfAofn2JqS3njSSiKCY0ptQ2v98CIQ/NdSmJ6j6
	 zntQm5Rye9gNME3AYnZ+tAdRAf6ywfV88bBgUJOQdHDZOrWTVqWCNfiGKndLdo5Kp4
	 S4zA33J1t3zz6k1viFQTn9+olRo0P3PPccu04DsMtxeDN0cMUz92JVDNMJZI/c0DRA
	 LwK9t3uPmbzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15F8C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178844643371.12219.17328992064084501558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf673ae51436f53ce3841d53f69d65f384330a876972cb66413d12e9d137c5d5
Date: Thu, 03 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788446433
