Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59AE13D994
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785645634; cv=none; b=Qk0PcJgLM4E4Y9J86U70G5upo09KwVlwGQAqc6Vd2a0KzUT+ptP6zOA1ldADLKQk/k9Zmu/InAPHAI2vsTmjIrU4LYMSIRlanGOqFzbz3nBvHJwiMWIaMvC65TcQGAJ5GrDN3JwiexcJE6bh/yjMrzmzgNp14qKIeBKOwe4qId0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785645634; c=relaxed/simple;
	bh=/qJ+F7y8BSd1Rj9nSCRgrM6XMCDfl9X6ZT3TRJ1Xp8s=;
	h=To:Subject:From:Message-Id:Date; b=KHG7GMU2AFP3frnqRvH/jMlNxJInSCAqQ7nChmpevxTyxl7//dGolYur94GURtZPY4+w+fhZkVGGuroYPASW9tqGlgPamNBf4NuTsblG8RAdIwPmCsY8c6P61nFgdIT66tojDPCg4InVJOMPreLhuZzrenSpCUMaYbLJLFUGmNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nm3zo/uR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nm3zo/uR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CA9C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785645633;
	bh=/qJ+F7y8BSd1Rj9nSCRgrM6XMCDfl9X6ZT3TRJ1Xp8s=;
	h=To:Subject:From:Date:From;
	b=nm3zo/uRJiOqJofDJL6uGPD1/yQhQMwHWQKggcKqkUOa+wEgMQtupHQ0L4PWRCYQ2
	 vKBsL9brV802qZEBkYF2cWG45rA6HNhJCjyBuNjcKR4NiJ7ZJ9kDRYO9GR1dE6MMTj
	 4exK0dMiT8AsP3fzV3dwlXyvqno5fiu63QAvWgYmgCwyewhmeFmeIX2IrLmGIp+N9R
	 B7coZgrT1n08K1rlq+bqkVajfQTLlAa3L+Q3l+6AkdHxazlHhvQJJIrSeCQjIBF/VI
	 ZA7g1TR4uGjnxiWvepADrWAwMD5Xc22aWUCr0XjmuH8nfaBo3yfI/5fkNXtFFScY1t
	 q8MSk/DYL7SgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA53C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564563368.10106.8054031490500522743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e7dc0adc338f75b78d18fb52cbed27079ecfa36bbf974f27bdb2b408cb6f47
Date: Sun, 02 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785645633
