Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D8B1C69D
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767318834; cv=none; b=S/1lLN8U4G3shHO5ZGgWCWDM0lj6LA7MqLqPuNywctddVZSFQxmlgLk/Ckx4sN2Orgo0MW5vL1bxNJHMgUspkV2T3So8IDBfZl8a8FpAMfZLxELIJr17qECvS3Emt+lfWwRvfTsQR8rYbwbn8l1G9A9g4uo+sLxRfekESXlO9Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767318834; c=relaxed/simple;
	bh=OHFBuMMdtqbWlDq+tk7iCTYweYyn8YjKgSZRzAhP5D0=;
	h=To:Subject:From:Message-Id:Date; b=E6ej15jeF3+Nt6zhMLvHa1gNSUjfzLc54+f4KiLfM1dqVNNEygAT0c9M+Ekv7tmVeTUxaVx8MkCMd+F6bnJICkaNsQEHNZqYTpMXIXxvhwq/zClpJ/ACsOoc9CEdYyRte4BnttSccw6JhqlXZb7dmjfBNzouyE+Qz58CUA0kYsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbPgfAj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbPgfAj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70CBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767318833;
	bh=OHFBuMMdtqbWlDq+tk7iCTYweYyn8YjKgSZRzAhP5D0=;
	h=To:Subject:From:Date:From;
	b=qbPgfAj12FE9TI0WO5/QNviHPwFGSHxShaBL4ri1n+Pd/jZ9zkvst7T/KHFADTrdF
	 ASYnJJlSkrctBN+7RMl9JR4Awag/zv5jIgppeDWpcuSh/gLmxnYMpBoNn6t9kHu+f3
	 PaE1InZzAihxOHPGT4PbRSfxtYy9+1+GaSGzlz5/ym7x3dD8LvaQlLv7Y1MqOLEjOa
	 ws24aIbieboTmCyKX4SncnyBsxhE4bI6XCHE6SCXa21b3ypVnkV+jUT1YS1EMykUlC
	 LGEyhF7jjiVaZlYTh+Yas+MTyw/DJTJVS9z0LrJrCph4q37ysC33kbo4A3AkmnXpss
	 bsfvGJVfrqekQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D0FA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731883357.27533.15702612549729389863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be6388b35b239ee2c31fee654cb0a4db0a14672e1f3722b00296d9c4c9723c0
Date: Fri, 02 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767318833
