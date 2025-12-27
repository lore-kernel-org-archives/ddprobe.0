Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3873C17B506
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766846634; cv=none; b=F79aPcNPypN+WjgxOlPrNtbnSs2wDpn1gHXgau8CYRu7ESlLsh33K1gXIomXNKldS3gu0BblrmkNyTiHU9Q1B/65VYlpG/BqrH2+Y+yblY0bFIILOcueDx839QDgAOXs2YaulwWbOrRhoh/z8M/rGKTTRiawF/U1bRE2DeGK2QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766846634; c=relaxed/simple;
	bh=TfIWplQVpxSu30GzTrf3PQ9hS5SmGUwONS5FMTeopx0=;
	h=To:Subject:From:Message-Id:Date; b=uSBOYmWjT4+OJUqxMJ9oalkfMXN1JZk+CL8Bdcryf8tidn3uKAaMdPWRcDP1i+QEFXfFidhldjfXXP9nw5vwZruzQBTpdVAm14nz+TeBQrtkPzkUUaulgxLvNIeaAcYetPNSVE/5ccP4NjoxgBvBBNBlm0HGLbLuyS73QUrQe1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5PTFmWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5PTFmWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B04C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766846633;
	bh=TfIWplQVpxSu30GzTrf3PQ9hS5SmGUwONS5FMTeopx0=;
	h=To:Subject:From:Date:From;
	b=X5PTFmWijh6sH52HHHdkBnmjRMlKYFFmQDYl6aPHiwee3tkIygGauTy7d9P/us3ce
	 4w2cm/OrziRuYxSc2wfF6rIokrHy37gtSfwjY3c3rLN5NizfuS9/k2CWGy31nlSrRk
	 42T5R6IGENSTll6jZ0UFL5ERLFrbc/ZOzjXoxlrkE8nfIrT5dqkwL+8yxZqqJ3b+kZ
	 t9EPGXgFGSJ6ui5epr4IwYLvgywKJNF4xkjlz1oC7EHoUNff9zPunSsxgLJ1FSC3iG
	 fzTiJQZ+Fx7eV3bbVrB8Dt6S6P6WCSP11YHgPkM9PMCLn0uxfEntdA311ElDUwZB9i
	 I1JCsg8lWJUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7A9E8FDCD
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176684663359.28851.8922382509354510744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac94c041d451509b80c70925dcf0664d74f9e47cd2ac6b3d5bd1a8e66ec861e
Date: Sat, 27 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766846633
