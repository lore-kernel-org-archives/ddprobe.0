Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36ECB50276
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763122794; cv=none; b=FLDlPPQEU5zMI2IYwJh2ZRFRV/lv7ZgxqBdNj6U7syeZhZcIeN8TzhWRHuauAs+Fo7qg4C0A7vuEqWPs6au2XDdWJhTh0KlXm2kYiMF4hjj7xn5Ui2jS3+fDJdN5xJJO2Ql7s+ttEHU4cB8wMHSbloUmkjogwb56dd6FAQURNxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763122794; c=relaxed/simple;
	bh=5z0o+3KLZRCTAXEhJ+4A/upEUCqAVkSqUUFn7ANQ6n4=;
	h=To:Subject:From:Message-Id:Date; b=Qr5SUzotZqsm8Zmz+KnHUgKQPbSVxoCCXqhCEz6q9PN1pOMU7LVKslqXjQzht/LwfAeM3XmH9HmOTjX0bnGU3Z2B/YQ2t8SHvztWzkOFh1cRYni48+870RrzOFHuf5+PzkIRneY+HjW1Io2rZkI+8wUOz3iBts3gYkvFL6IRcjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQ390uNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQ390uNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4818C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763122793;
	bh=5z0o+3KLZRCTAXEhJ+4A/upEUCqAVkSqUUFn7ANQ6n4=;
	h=To:Subject:From:Date:From;
	b=TQ390uNTKVogUunoXNc4qgYkpGWrGv7btv302rnoLAZNzTx1uvBAU5OmJgRklFmvz
	 Nv9YxXZkzflYoUUygF7zFydv+2r0iCKmoz6Od5kwgcNtqRll7ACbZxOGxP3Rzyq27a
	 KR+rH8pLC0MZ8ecncAxSrI3hXY3igGXP2xJbxKq6UL9c+kpkprYjhK7c4NO5Oq7QK0
	 c8mnzVdYtVd3NOtUeAFmw5WxTIp1v/gmca3Z9tMXumWsovpN+pUEfzSfs50dixzZ6K
	 HftNzJ8kvArDrqr0YJf0o6qk1x1GMTiXly41vf5X6DMjYnGx0xZ+wZfk3GYyrIbwZt
	 MoXqHrDY0lhKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977BFCE7AFD
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312279358.21287.14215041077078113178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 352a53020af41ddbf17f5cdba64c12c79c4d8981b7b4e9ece3fe47948a137aad
Date: Fri, 14 Nov 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763122793
