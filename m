Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA4A35F60A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774082694; cv=none; b=M96qR9t6t6JiZAT9iOPbfVdv7QS29fhlKAeUA9uD1Bvf0owtgk57j+tMaNt7waO8C7A0BVSBV4CtFUHZrEebtrCLoJbodOZ66nAJeJUX8odxnhR5mLOhBCDAkKRCwXOhi0xxIr+4XRmnEOhJh3gIFS05SIAAN+9Wbw6Lk6tIO2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774082694; c=relaxed/simple;
	bh=jizgO/5eCjLKhGnauarSQhuInoap2KptHyhDZ+bnER0=;
	h=To:Subject:From:Message-Id:Date; b=ch8fjiH8KjUQtrieon9W17zYDuCvD2JoGS3qSMR7nkmve2HcqN4xZSs/m7SJJGpluSHP+eGI/vEZ5+AmBLCROM5SQg3+UBXplMloQerSisoDPlxhfX0Jja9hvJsGUzW+lsnxIZcexVY0YvUpezTpWazXc9dXImBIBLnbDpFReGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bs5IFZBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs5IFZBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46A3C2BC87
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774082693;
	bh=jizgO/5eCjLKhGnauarSQhuInoap2KptHyhDZ+bnER0=;
	h=To:Subject:From:Date:From;
	b=bs5IFZBSfw/ERpdObg7AtKwmnLWybblyunv0bi3//DsaeyXnPZBrRSPNthtneod91
	 8w+kEOJYKctoH8ngcrXqGPiQicyvQ9IU6Pcd00PrVEAPcQBPQN4UaoOvQjYXqGzkjq
	 s7BrBd7Q1ivmJv14iGm+LIMBuEK7CH4NAsgdiac0l4qqZvn7F1r6FaksswAszzhYY9
	 kfZXU6PhD3u00wQl/DipWtmMnjxEVzU4Rnr5stmLLEZFKxqhL8c9aSW1A3VC4hB1Ha
	 qL+Fm7YZPR3YMhTCgmzv4+79ngQ5eUOzUT6EsTMkEKd5002F4EO9chMqp41lLUEoxa
	 MQfGv6hUdYM0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F611094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408269357.30233.13124922002402221687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251d8d5b8dc7def71b98a6b8be4f0f6e168e8c7ca60441fe934ece050266c966
Date: Sat, 21 Mar 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774082693
