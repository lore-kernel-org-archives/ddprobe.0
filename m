Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6711D365A0B
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787284834; cv=none; b=qXmJy1MuHkoUmZVYsWF5T6IpFerZviDb4Uy2mCa3vAI/q9ZUjNQokw4TsqVeEW5VY8ODs1XVInKQveUIKk8VpfAolq9OimiCCnHsBdflxxBG+huIHp7QkbWg+cf+TNQjRceqSJuEeuoX17v+ZKJ6CCRPBQO3QOb5svjl2FZNe/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787284834; c=relaxed/simple;
	bh=BbTUVE5HtqIRTAam02qk8M0ZcEaAkU5UNCf4eQWyorc=;
	h=To:Subject:From:Message-Id:Date; b=i4XhxlO+hTgZ72ARnCtifPzVdss0skEW7i1MtACnJwtem5jEhM4KJWc21f1BPzMXOCDk0xhfYdvIfDVy+oIbszNLIwZB+QtEHbsC520vSSmUMBjDaez8UbDXApQmvoyqFEewl4PoNATFniiC3zf4z8WQNtuNMIO/Ii9UMEz40zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVrUqnsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVrUqnsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3241C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787284833;
	bh=BbTUVE5HtqIRTAam02qk8M0ZcEaAkU5UNCf4eQWyorc=;
	h=To:Subject:From:Date:From;
	b=TVrUqnsm8TTvUsTYQHrtiVTWMW6c6ntg05Gt25dl3xSVHAEBaudPCri2x0fbNU6rV
	 RSXaIYZXlG/logGu07WysDMI9II7HIlMWPMH64iPHOBw2NyyvNd+aa1KFaA6inPznP
	 aE9dX1q3XwXvbb0o74tc8gz4ZeoTs8pivmyBUkDArZUViGV6mRYJl/EMMzoGxBUD9X
	 e/tAM2QxdbymKlB5aqlcw1bNH2dNbVR2ZtcFdOW8ax3OEf+YjB2rI2Vh4TnYcMdKRs
	 JWWWzvPEhAsiMjEzkeZ0dUrBJttjHJzo09OfqrCodaV/rBP5qcxuIVgNnTFHzBdpgq
	 TMzaCNtwqAAjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD15FC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728483369.12929.17596516430289583851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61ae9206c00dd1b8e94c443e0eae88fa02e658753bc11edeefc92f1ccaa53f31
Date: Fri, 21 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787284833
