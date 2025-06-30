Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1372F1E833C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751308194; cv=none; b=XQ48ZZlJHjfpg21pHn3upHvDT+aDi+TFXRj33jj/YAOZhZINbPT9gh0WYIIGnCB/WgELDodaGRj3jf/Og6SYU1WNJsL4XwYZtzGlSAFkFErLhFDLRnAh5MSo/7bwbvs6LbMR/+HAU5y3dBds6KUpHcXMIWwiVJyQ+NSECNaqDkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751308194; c=relaxed/simple;
	bh=uA0dTR0eMrL35m+a9Y67VOhv7TPYbJhI2k4PK10mr6A=;
	h=To:Subject:From:Message-Id:Date; b=pVzfgYFs74SY18aVhsIbZOX3HQDoQ9wbZc7JNQK25F8djTeGgfu40sr2dbW9Jf7/f12iRSQNxK03vfPYZ/5CFWzqV+dJYG6CeSFifIU858OUTbuhW+7WafcRx961ECZZYo5kIEoOO845v19BAUeOX27q/qBOfylVthcHUiQ/jZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/Nm8aqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/Nm8aqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED61C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751308193;
	bh=uA0dTR0eMrL35m+a9Y67VOhv7TPYbJhI2k4PK10mr6A=;
	h=To:Subject:From:Date:From;
	b=Z/Nm8aqk4AtHoxqbudi+mYQ1EQ76nRbWAZmdpoMeNGbSnQUnNwTd67bDs9Ynk6XOK
	 hjnVwNRyrwFOpopqBcIWfMek5a9OMrq8ZI44FbQTAN0Qc8g0TOtq726BgqHNgjlXC6
	 YJZgwNow9QHr0mkYIEJUgxMquqpEQZpu0sZwseIO6EZ2F5BJqaty4jaRo2rypl0KaN
	 5jzVlTC4A1uewqmYqy0D5lkQP5MKxAB6Di5hpWLR5NqpDYHIn57Bhcgs1WJl4NjiGW
	 SqNliN6KbR0n4/9gQam0MsvCn9Q0eyXOwzw07SKV2xt5r44SQihNSHMf5T+rY0M6cb
	 9rL6jowEt2ljw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90082C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130819358.1541.6103752106062512385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dc1c65938575390e377603c7601a8850513d3d4bd2d678f184dd598d28a35c
Date: Mon, 30 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751308193
