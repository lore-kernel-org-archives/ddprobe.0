Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D14192B84
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758680394; cv=none; b=GQAPN6IPwi+EqTHxFJ2KH7/qh9ORWPVWJdpMnW2E2IdOjPKuRua0VdKHzBTV6K9KSzSUYjP2kBmNZR3uPsVCF23QxIkX6VSxO7wdkZY+K+IQ23NZ3fxGMXLtAY/4Ga1dEvIDbYzVf8Zi9gAaTsNTOquIzitDM0TDF4hZm9nmgrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758680394; c=relaxed/simple;
	bh=N9wsDKUEKVCLguFb0F0arQlpZdioYpqWR0awTyJNH3o=;
	h=To:Subject:From:Message-Id:Date; b=a99uhoNfQyRfmoB3vNfZtE5AXg+secAFf8u/gtzrxHCOOXZcZr1wqTIT6qU6fuKx8qrIljGMn072KLnf+nULcsPPnqXd7NbIP/jqhdJQmzLkfIu13VxxZ5a5K2+/AvokaB8z6fJtU9yzWeN19wl0lTvUEr+PJctfsVW/0xYeqR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLt7yB0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLt7yB0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5DEC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758680393;
	bh=N9wsDKUEKVCLguFb0F0arQlpZdioYpqWR0awTyJNH3o=;
	h=To:Subject:From:Date:From;
	b=kLt7yB0Pod5t9u69XNGEUPxrxg4/A1HVatyl05DC1MraaC3zO63F5Pg0eXq9aIWXB
	 HEFff9KjH61VgJWfwY18pSDgnn51CfCDx26n7mTSGjCXkDwGnEjlLs2kdtKdXQQf8R
	 tpUF/W4Mp5o4Jq4ttsdya57NiQWoqVcB2qmXhCA3LODOhN+9xNrqOX48ALTZxfDhP0
	 /UaUwtkcRQ8X8PytkaMKTMmFE5YOirSw6DaAnrwQJsoBKCx3B2T26EhLKV5L2MY59c
	 MXYW374ud66m5d6eXbPnDUHg8KN9Ilx+C5VHZu+ZkwefU3AH37BvWODGTcxBaW+t27
	 RaP+dIHjnuxtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB5CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175868039357.15918.17691309779944980235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e822d4e319ffc39335f0367c41c748b9c7d5e3673c69a41891e97637f562853
Date: Wed, 24 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758680393
