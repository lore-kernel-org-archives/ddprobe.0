Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E0E393DE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791115834; cv=none; b=Kua8iuXSohn72f5x6L3aHnhVVAvOot3LLCoEIy8PoTArvVKKvaoTSrHFrXY8XwiZ/VapPnxRyXO2+IutA8r6HtR6/0zqnK0UXczbkhk+cyYzOTXZKDbqI6Wd91S8rttU4ODsYHp+I9s1hL4XcoAJDPg500b83wQ0DOCtHGywg4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791115834; c=relaxed/simple;
	bh=Q0uuFd2qfFRiuwhMMphVsg5PfC50REHTCFghr5aiQRM=;
	h=To:Subject:From:Message-Id:Date; b=FxQfZKYFCm4kqpzqzsew0rb9L9wKzTV7WO77dv07X2Gec5eW84C0L9jyw676tLEtjIgzpaiNwnEF54gny3Rz9zYF74XwWWoF0vx23E9yNzFq9n6I4PdXV1bXnIP0YVcPagQ9tte01/YBT8J6+MYm1Ir1njCb+GjZPDGzHr9Y2j4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROJhOEwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROJhOEwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0B4C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791115833;
	bh=Q0uuFd2qfFRiuwhMMphVsg5PfC50REHTCFghr5aiQRM=;
	h=To:Subject:From:Date:From;
	b=ROJhOEwK+QGZgz3ouV9MMks+IxnDzPaUxDIWxsSrOa7n8VrdtTZytqaiRZtPH64LR
	 bLwBg0WBXkawkZbfMNPBG6oDrDDbILMBRnY8q9Y/Po0alVoc1eNOCxdQBAld2coIR6
	 FxPV83yfv+9XLhcICkAu6INriuvvEInR5YzoGfukmPzJtpgtwfZzZsisjAZugY5INj
	 Q/mjurHZ/RPGk7WMCJ1rIob/wkhBoS53GGb9YrngYvdBova99rwVSCPeEAUMCUDjnb
	 c3c6IjHNLi1vOdm4Zik7OK6pItNN05zMiSb0yzTX6z3eKIjVUAsqvmtiNqfDDj96QV
	 SWLWOq/8zgV5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA18CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111583369.8513.2822965015897478577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d02f0a61c90d1ec371137785ca93285a377821d939ec2e46cabe37ff2c00b5
Date: Sun, 04 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791115833
