Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5F338B7D7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775494534; cv=none; b=TOqu4khwL/pZyiCLKOddhhzyOeabKiR3HYNo9yV8uqKq5MTSqJegJp0Fg1p0ya2xQ6NItj1cV5ZMQxDRPE1mc/Wzn07vFJnPlGlmaPf/vmcIi5soOe/6oyyPS1TykKJ5+Avy0gNGJgfnCKDTbya08HH5SkijVxoeM/TzrM+ks3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775494534; c=relaxed/simple;
	bh=G9pSos7yJvDbLZZ/QCNiaAaG4matRb1St4ys492QE/4=;
	h=To:Subject:From:Message-Id:Date; b=Y5nHs3WNSTyFWbacW5U5ZhmobDTdvAacrSdplLZzL1o1FO6+m3vAYeBuFRnu7PPdL/Sqoqni6qAaKvi6gnsZZ/cJKrKZ1qlfPvIcRPpBMGpRYpbleREW4Per4COw59Lwl2ybp8RkB2ehzV5H7qmS0DBJVly+jnRbNJJp5DRug94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx87GRUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx87GRUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEB3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775494533;
	bh=G9pSos7yJvDbLZZ/QCNiaAaG4matRb1St4ys492QE/4=;
	h=To:Subject:From:Date:From;
	b=dx87GRUaLpADr7syTG0eSjCsh8kpOdlTWRstFDGINUkzjpAVI77qifLpQ9m/yFS8w
	 3Y6KBv+aX027nfspnWnkiU2IlpOtMrc4oeS4OTrjlEGZ2iA5fYJPl2ZL42caZdF717
	 /BEmFUykKhA3qAYjqKMFgZu1NsuPl7oyBNrnUR2UdNeb057Frj+4vpqIZP0K65WLRS
	 ajTctAPiFTMvwx3Kgyru85a+VfEgapSNLDVPGxUycTTaExmcIoZzEAmNLLK9ZOylE8
	 BdGTzENbei30zvh1xaLB64UhErX/b7juO7G6EBE2D6uB5QTLdwGgjS7t5IbaBWXsR4
	 y3lF+kPcuRDkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C4F46C5C
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549453370.21736.1901086513061392782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d745d6b51b6b6ee66656d2c3715c520cee7649a6787d6bb126f4d9b6fb8060
Date: Mon, 06 Apr 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775494533
