Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AFE305E2E
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769696034; cv=none; b=nJSnqUZ0Z8x1JOTzMOT2At2TP4HyJ5/GPZw8wFeAFvCvOGvx5XlB3igbqL+WRuViAmKDLjKEebbNuSnhLRoMUvfNYuRyiS7IrWtTtpdDq9FsSPDf/FkeOr2J9DaehHoHxMcGKuQY01kwba+9PUyx4g4BO6eTjZzTD2M40nktUy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769696034; c=relaxed/simple;
	bh=RhKIC7lQ2NcDlyiS9ehgjU3wtlh74S1bt9wUAbSN4Q0=;
	h=To:Subject:From:Message-Id:Date; b=FpoybzEFEmy8Jo15bhoX1428zbahozlS6LcYubdzRESTC73XUV6jjpNvyJYr1EmZEanoFR12p1P5pQOiUnn78LoHmdewlXsFPmvt6hDQ8qg1BCNszHubzL2Vp0CWs/YN3ZFckQnljhbp4bPxsSOoNOH8il6UiWHTDR+ZVsvY8pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfahvih3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfahvih3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D05C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769696033;
	bh=RhKIC7lQ2NcDlyiS9ehgjU3wtlh74S1bt9wUAbSN4Q0=;
	h=To:Subject:From:Date:From;
	b=hfahvih38lGsKVPmekleYyQS4zYwR8Bt4Y1cbMZUr/dvv/6uvLbP+vi1rHPD0lXI6
	 ElmSZja00gt0vT2Qv6TuyuNYVu+A8C0QqcZeSB84UDni51sqqEjF7lXtN+A4LRQFXI
	 6/cCgrHdyl7uk/rbROVaCPKT4Dx/qez4zR7Sh1/pnOp1GRkp4V1XHcgW4W4QlP88tZ
	 uMdX0L7sz/PPQ4E5HzZankh/4xUQBwumlhhTq0Gmp68/pDD5TkUDLwIAlWxsQwvxHF
	 20YSPIhy2X3eii5hSHPTMGdXsq6V4tYulv8xsp2LUIO1U3GZcNgZsHxF8ODM+GvOGn
	 M0D9Bs6A8IYug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CABD6101A
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969603358.25142.9880226667166694866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf80f002700320f397b48977b95732cff77d6547d218a07d025e59a656cc5b37
Date: Thu, 29 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769696033
