Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B26625A64C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771156494; cv=none; b=a7rL5lZIza9aG3uQmptQZQ9TfA9SszJ1R386Wdk2PSg8Nj7ic0b3DHZ4dUMfwliEZn6RJIdFeDA3ib1CRBMfErIfU4szJ7etQRKJb/a2UJPvxG6wD1I2N781A1ac06FYSQ0NfaHxSgKopMEzCLsMqr9y7MynfaZx3rdFM8ph8D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771156494; c=relaxed/simple;
	bh=QJHyAqoTMLyLIZAENrX3hph8foR2QAEKm1sowaZqVAk=;
	h=To:Subject:From:Message-Id:Date; b=J09PvUWLIuQ241A5nGd3TtG+nQrNX4w4W6oHATaKWOTBgSab/EPNasaDgxFiPW4ik+Qb/8v9i7LPq6FvKD3iInf2Waua+LM0dJf4JtKRnnpZWvu8ggErzlaWiqatgQ7JF+K4UcQvtazEXGU79lNsjlPFZj7AKuWSQqpzJN7TDdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kl7ao4OO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kl7ao4OO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46E8C19424
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771156493;
	bh=QJHyAqoTMLyLIZAENrX3hph8foR2QAEKm1sowaZqVAk=;
	h=To:Subject:From:Date:From;
	b=kl7ao4OO50+UXVavsJgfTcisUku+LKS4CpIfLBmNcFQmGKT6JINCppWsrVvLv1kl5
	 ti18DJFV5HVJhRSCzjUhsB8tGXvY8tiqmvZxlc3XHy6QFsSRptmvryXPwCQWHoDuS0
	 URjNsljbaeZS73bDq5zVT29MAuRc1N5yciKZnwGlhCSilfq/bHwC9pMK61OALeX/m8
	 tbqWVPN3Bb14xsdeI/gy4TRNPQn3wRznWGTEWwBO9k21vjLD05LQywc+p4LxW8bSyC
	 ZT2aa0dmWHTIM1gArNZpGGcd2slY3/T9PAOkuA6kHwxqksELsaHDJ/cIEcrljPTyn0
	 pgsPuwA0mzU4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F5AEF587A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115649364.946.2375661926851402053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f06a232ef93b78e94d628dd0277f17d22eff7429bd88743c39db3db0932ad0
Date: Sun, 15 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771156493
