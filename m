Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEEE18C933
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767449034; cv=none; b=vBskM/N13zfgrCc2o0h/TUhHojj1BG50pWG07lPNsKdexnwodHV3duioa/lsvKtunY4E82jyB370ycgWdSxZpbgmoOyVA52aN2YgU/6HKcpSNS0Xaner9Duar/KJSKYFKRfPffbpafuPdHdDgP8npWr2dko1hZAFAbIoSfHvgKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767449034; c=relaxed/simple;
	bh=gPR5B+hyBgZSJ1c4+wqNPUkvgUBhA2gBthKzZcyK9mU=;
	h=To:Subject:From:Message-Id:Date; b=RPzlX5WJzKGyeCmGDfGqo6RT/fVPPbLovKaZs4zbqxSlqPuV8LLt5CNcO7aCWNcnJ59YmMpt16dtDxgOYhdG3h/ZnW9t5sw2tlIHOCLcZ/HU8akxaLhvSyluSYAVVDVg/IKmayM/rt/Vr/r0sIkLsB29TxQ/uPqu9z/WMiLXOu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAowQTBI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAowQTBI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DDEC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767449033;
	bh=gPR5B+hyBgZSJ1c4+wqNPUkvgUBhA2gBthKzZcyK9mU=;
	h=To:Subject:From:Date:From;
	b=cAowQTBI76xcfkGF7simCUTn/8If5bagkOxsh9orpZt1fBB/n0eBZT/wMDjxI973m
	 p5noDQdkgYp8EJYgldCeif9dgPCaXmZSeCzYSybJOY9s++l3cjybLz6cjntSw0JdeA
	 igajuw1f5Hp3lv4UGtaznyP6HZWNOLOt9VOndtTbiPeGW4H6EK9sSGgqj22GEKKGiX
	 4Ywg9bKkeyuXvPA6WeVufq4XRlZxSMJWolpXeo8B+DheXS7DvqDHubgKTZUBPbi/KF
	 yydMmBO3yP1tHrWeaLNPdmjjYPq32NukZMZSmdbWcDk93A8EdFkvXqzwk6QqkUc/a2
	 g8XhwtLMlRDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CDCFC617F
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744903358.10954.11460082013496115940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f11e1e86aed3f01599d1ad6cbcea45ed00aead052c27ed5feeec72e36e372c
Date: Sat, 03 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767449033
