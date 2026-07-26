Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92933399000
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785065434; cv=none; b=L1Y2czoAaiCohmZeN+D11IYUvD5X9RBKWLThDJPEmbENwOWWiJZSvRY30XtgAMFKWjuNkJCwp1Y4tm31HhKBmvrpJFEedmSXPPlJDB2XkKoQfOpfA8LFaNXFBr+34/0vNIXJWVvSj1huwfvNQh8wqTEbEgQ1awLO9KDXt1yUJFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785065434; c=relaxed/simple;
	bh=KjLyuWa46FaHd+MzfOpugY9RQ5pZX62DCFe9f0NJC78=;
	h=To:Subject:From:Message-Id:Date; b=M6oRSfUDFdWXFND4RqwZO8D12aAEmlIg70chlSEORA/Se2w7SHf8d4PxAptTkv9BxI0SBVXog4+DiJ2u40nC78EfCJHmhbvPO+jAsLIZ6YcAjCd1qLPDR93BEARIaBfjCEOBuoJ0JHv250MqSoM2NK8froVvPkUFQWTTWtTrStk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFZrZ1xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFZrZ1xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3EDC2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785065433;
	bh=KjLyuWa46FaHd+MzfOpugY9RQ5pZX62DCFe9f0NJC78=;
	h=To:Subject:From:Date:From;
	b=SFZrZ1xW1bZ8UznjX6HHfg1bhqV04NjHR8jFqbKVYJh/QpsiBhO0aKdsjrgBs5LLY
	 9CJdqT3OQpTEI55IH2Rys+5LzXBrSGoQLIxAeRiGR4bQayxYxFuW1et+nH2/+sqfDq
	 g2cilnJVKdYRsN73+YIk/Q52ZX73c4StrsLHW/Y5TN9BUoliUcNoA1QFbUE9w8L8SL
	 bawurfjpkGE3zccilNHdy9b8VARsE1dmb+UMXZFVDy5PZcN3/FoDfrITgMYXBEY0il
	 AzJttmYp734Kss3eyN7bbA8jThTVDH5vNHvbRy0CUuUijiMMPoBc1TfTyDhq/dFTpQ
	 anqswir8/v8Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9511C531F9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506543368.822.9195239332096942775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aedfd873d2cdb4ae816bd9d428492a82fa3407676de7ae18d2c1b138f655fc2
Date: Sun, 26 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785065433
