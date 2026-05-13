Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6CE3A48FD
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778650234; cv=none; b=TgeSgqq6NJ6qJ4dtWUPJ2o5qAiJ3wBI/CTKrNcohiBuKUIWQB4vzyZ4CUwUtKtN6bWUYOS0OMBOKnfVehLKrQemUjAkN3fJyl6UE3skF1p3B+2J2KnknwOdXoOHDJfIYz5YZ3HUTQC0WODdOoKgwD6Cpe5RjNHLblqctsxwa0fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778650234; c=relaxed/simple;
	bh=bBueHzIoDtYYg1WAo6jkmLz3APg9O8x6i1dvfFBwWa0=;
	h=To:Subject:From:Message-Id:Date; b=RvsDH8kKvdzoygS2+5BDBfCStDSey+Qv8Loa9rdwFyof40Jxzxh9wqLxvrl1ReFsK9WErEzNQ26vyWEu7AGcgo5ABDnU6/8rV8kgBCUt8LpFVXnxzYPrTXuI2ZBikrQO2Vevq3hUFxAmvDjyIgvuI9KTf38EjQO3DkoriZ1yDuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TduniW8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TduniW8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17B1C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778650233;
	bh=bBueHzIoDtYYg1WAo6jkmLz3APg9O8x6i1dvfFBwWa0=;
	h=To:Subject:From:Date:From;
	b=TduniW8Eu5UVeSY0NtVShEzrWn+BZX00qB1LazWM3RlcjGZvxQ5/2H/Y3mklWnJJY
	 aLwcHvPTxCHBBRlghnXgLAhAYsbmdKJ8kxxopvKUOmXwfEuYRJHwYS7xvZC6iyfx1m
	 XBZRM10F5ydrg3fC/FbPFMrxAjcDTqqfd0E5XBoBZigRrBULwZlq31HhyfqhLOTVsd
	 5t9baTNkeA3x4IEZtamBCjlJnwHuRphyUFjx7J/5HU3nZDre3hVyemuAW0IDCNLkp1
	 DeCLl5pqNoF3cg+KlMAVTNsSaYLZzi9GMlJnVkz0E9C8NkSecRvUsosCidial7ngXp
	 jn+TnQu4KmWww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED87CD484C
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865023369.15245.17728036465724999197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d9db2f92edee616eb0c673c806e576713015f0bfb971436d1cdc5ce96c74c7
Date: Wed, 13 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778650233
