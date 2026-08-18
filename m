Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B53523ED5E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787095834; cv=none; b=QfzNaz9FxYlJDQFjh49yvIa8UAeJcTDdBqeI7pKhJAxnwfSqde1w/hUj6gtv2RgUS/Kdybb8drGHhgMIg2SxhhLK4jdx89LoA/jHk4hsvnr3gy9vJx/decBs5chjI0lX85Jo7QWdQwkC1S611UBqAz0MsyZCG5tgd+BcWDvku3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787095834; c=relaxed/simple;
	bh=oCXQ2P7fLvXmAZhLYm5mMkh0SOC7m8qVVcfDx1cnVSE=;
	h=To:Subject:From:Message-Id:Date; b=YOghla33P2P6y9Q3V4UCTII7tqpMIVQ4Qz6sHUFonpqDB5Wi7WtomFvGyX25JOwC4n6Ez+zJBxDDFa/VvwV8QFaZTkW7CQEBzApe2V8j3VtFHUV7Hpd+RJbeRSt8BPlQNqbUGQuoL/nmv5kVkeSRWYiFsS7QbgpVuCNjiptIUNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8wLU9nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8wLU9nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D84C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787095833;
	bh=oCXQ2P7fLvXmAZhLYm5mMkh0SOC7m8qVVcfDx1cnVSE=;
	h=To:Subject:From:Date:From;
	b=D8wLU9ndYX2Go24KSbBLQhKmzGjg3Gz4hiYkALQQa9F1CrUGDw3RG8KoBcWYgRqpF
	 CNkcLyhaAOkMV4E42GpS2qpmzwZZcLo8agcketnFPO093BLQcLtGlECD6GXLQjK1HA
	 ONf5v1LcN+6FKByIoE5KVDbEZqZaAfn+4QG0V5brj8MS6mURE1FBF71vVMIuwliBkp
	 /cRUy9MFqRPf81lqXvSReu7+qpffYL7CGNY1X06oapOFtC/wxDIhraSeXooiBZYzSO
	 nXXz3Lx1AHhxBKaPWvfZsZsjGIgQPwm7XTXGQJDmY+VMHXifWhnJ3lkEJYR2CPWzV+
	 2V+Qm+Zf7wkdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EA6C5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709583368.5660.17405065257739159603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91cfab9f7413ad8de78d4667d6f61eb7b486a5c6d24b134e6f4f89594a7218b
Date: Tue, 18 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787095833
