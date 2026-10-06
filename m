Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC1038F930
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791310234; cv=none; b=bGMPZcm/dCaSmJ19Q2BCc8UHGma+uvvUmHr1e7rtp6VMGLhMaxYi4CgbYE/U2Slh7SDh21AXjy1cHNQEMiUw2V+7nNg4fDfA3zk9ErqMJzRbgQIH1dMsWkrYt3EfKjW8ZA14ylHPKC61jTIGnadaJ3MeDna97cZvO74FSez9xfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791310234; c=relaxed/simple;
	bh=VmHZSIp0JXhHftQOS/i3OxsxwjXGQXOupN12chS6/Tk=;
	h=To:Subject:From:Message-Id:Date; b=vBPzOYVhoHkFsstcL358Mu4N9muvUWog8JivHj4yOuYQj3jSkwj5uciZI0vkJWuILXyYcdkXKJVU/g+LtkzKLylf46Sakb9IaO24ZJARFbOCmIUw75MVMzk+N0zzw9hsCBflAnNTwt/1oAmkwNGl8OZosXJXjrqFk/xMydyP8vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFgiWGte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFgiWGte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C123FC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791310233;
	bh=VmHZSIp0JXhHftQOS/i3OxsxwjXGQXOupN12chS6/Tk=;
	h=To:Subject:From:Date:From;
	b=BFgiWGtesnZM/Yu7COd6m1o18R66UGbGTReLAvUkU/L5THTtRoX4+7BlIlFrx1Kf/
	 v31eryek1eGQNdarttcuz4Xjhdey8o4sJIY1gj+sbHrtIDOEWQeBChxLvBkJ01ckUW
	 1yk+OWPk66AAeVBfKvrIvVVhdyINIPuXGjtM4mnkR6rEG6ixnW8N1rEqJskYRDximu
	 2llSEw0UC2Cp1meZvPl2PqbJ0TDYTit7qYaFEYLlz9YOna6bZCuJvfTE6WL9kAHLB7
	 fcTuNmsgXnp+v7l4Ps5q+FpHG6jB/DziA09BPTcjlWj6UUw5TlJrNo0Fo+FrbFe+MA
	 bX2x8F+MLPv6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE404CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131023370.10812.11794655715698196086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda7e6db933fa236ed4ac20a5dd97f309be9cc322e921bcbd183706b8f4f4650
Date: Tue, 06 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791310233
