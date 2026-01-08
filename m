Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C352F4A19
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767903234; cv=none; b=Ls1CBtaAHlW1RUYIc1nS9YnT9t9TZKYrkCAcfOtJTib5rLRiU6DHtAhrWbxc97NsLL+QIu58RMNyataqAYkc04yDp12OQsl+0xCBvG9fzGzZvy2MzlElqj+4cQZEhWKVwXaVk9ObeVeWqBGokXhWh9Envekzsxfco8+GhXDpUmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767903234; c=relaxed/simple;
	bh=nWtVa/wcK6zDcGrs8moD6NIDUaHwBhf1KCWQ8Hzo57E=;
	h=To:Subject:From:Message-Id:Date; b=R9wvMBFa6vTblvy6Fi6yqzwPTZc4ZEyXtFhjMjmS6bBSIwFdtgToFuQGA7TPogzBUnyPVyxra3FjOfjBIb2RLCGiwlgm6VPbaaYZD26BPy8QrGnbM4kQmTyNdH08C48I935hGYi6e1VvTPM8YFcvP/BnmG372blh7FXvNJ6DcMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktj5kODB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktj5kODB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F39FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767903233;
	bh=nWtVa/wcK6zDcGrs8moD6NIDUaHwBhf1KCWQ8Hzo57E=;
	h=To:Subject:From:Date:From;
	b=ktj5kODBZyLzGDxWIEKZYgHR7CsUeFDZgxO2qV4GOjX9WKC8a51ngo5GOD2t89Jff
	 OXzJWx0LX3oPHYtnhc+BrpzWoUYxHIIVdovS22sbmBf33mjmc9YVmU74i1Jc7V904B
	 B0ilPySsdVKPZGJKLxUck8V8ScHXX0bOM95EDsQGydJ6e8bFaJgLiaASxrpRJ56fYb
	 xY/DVLzlgjSgCQl+Vd/OG8c4+3kjv5o5PjLFxORc1UnxzjPsgOvaysSRNVxBPWTQ+Z
	 u6DgbBf1gvLxG0vBWh/RnFZiJf2G5//ffkDgFho7RhsMnwDdHknVMFduchEEthZGrD
	 JgeA05pgFpjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE43D1D48A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790323357.27368.1458772401267032443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c091a548fcdcba02314dce4cb93d1ca2db35e3f06dd2a52565040c8a01efa91d
Date: Thu, 08 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767903233
