Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD0F17583
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744513195; cv=none; b=aehr4h3STx2H3r95r8tGfYU0lACNg4gyvOYNxTqgzDRTOvS6EOrWNVkVsbniMqcpt0xGYXjuW9Ioao016pQr75zatihcpiU/qaCWJHJ23T85LWbMK6FUhyerpCmiwyisMz8P6HZq07i4V+6DAalJje/+AO7t0/N7bFPrOC2KtYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744513195; c=relaxed/simple;
	bh=Do5YSKwNFqo9O76Mj0Yk5KVD+luYqQ3UCSYzGFRl4qM=;
	h=To:Subject:From:Message-Id:Date; b=oWouiv+0IGSuIrfA37d/3AT1/JT2MnKIC/r+ArEMAaI9h0qFwoeJS4Xzpos+M+iJssZJIUg3OECE8EBUlecgeepvL82U3xnnMjv8NQ6UPXtSS/xVB8XfAXr2XgIrfffxR2dAJ6Kab82wu181b22jM1pGFr1zxWdqh8ImJXFdx00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E54whvR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E54whvR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B34AFC4CEE9
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744513193;
	bh=Do5YSKwNFqo9O76Mj0Yk5KVD+luYqQ3UCSYzGFRl4qM=;
	h=To:Subject:From:Date:From;
	b=E54whvR3f+UZiav2rIslM0DvXj1WHb++QKmNI9YUXIXeB8OSB9tmBWI3X3F40a3RO
	 0i8mj/K5i90HrAPj0UlCii6kXpaBvGH5VQEhYtJwi60H/UFZlsTSVuKjectG79T32U
	 0SN8mBEVhlH/Fz9MzW1FQL/pty+uWM6erbgX/OIMUA09kazu1GtjRfKSoz92SvaBK9
	 wgHW4WUwlv46Vd/IrrcuhmIaFPgzGK0zFmbI5X2O0F07dWfwnXKb6/0KC/jfenvfXd
	 vwulUfm9h8uO50ALzNh9dy8EgpzatKu7fZ9EIYWswPa7qT9+g3DfYQR0GZwSuD/jfg
	 6x6mrFr8yhN2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8D6C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174451319362.22183.263688120567242833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68553f66e6004b05cd875da6a045bd4522a807d7117fe86cd441c50ff64e686
Date: Sun, 13 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744513193
