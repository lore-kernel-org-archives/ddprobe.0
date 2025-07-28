Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2627270825
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753700394; cv=none; b=tqBCxlVOe7FTr4SnEon2kccbIZ9JtTd77UpuX90i8+mvg+UqyyNcRJ+hCefQEZAwJinvDh1bydHhSlCJkWUotk5cF3Y8DYgyLwMRXQI993gRnlPtBSxuxOzBoeWZDSVFJOWuRijht6e7cpvVeQxYN5ndu8xw2do0o2aquvbeKtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753700394; c=relaxed/simple;
	bh=w8BYSoPKiJpCPftXaYEjHhBnTYXm6xMuLthUA4Ux+m4=;
	h=To:Subject:From:Message-Id:Date; b=PG03XllprDi7zJiu5yGUQ9c9vGwuiCM9RkYJW0loLATwvFboOOpgh9k4C8WgxR4xSuX+a1aOCcNrsj/OSkLVQu6osbZc4bpNAz4jnZ78UmPG9fdWjOGKkJ3REknzJTCleSA/1BpqWNJQCt4PrQN4zFUVS81xN8bbN6Be+nk7/iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ge+8zDsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ge+8zDsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA49C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753700393;
	bh=w8BYSoPKiJpCPftXaYEjHhBnTYXm6xMuLthUA4Ux+m4=;
	h=To:Subject:From:Date:From;
	b=Ge+8zDsNlUlk/d/hbQET8HMOqeLnV51j2zfPx4dn5cHoeCwDbD5FhA3BkJN3sGUvv
	 tsc6eBivitSHZwDedIFMPgYKtrbIrZfm2sDSDv3D9fYrQVL/CIdPJz38LeFO4PpXKz
	 Mc8Rj/jSCtMPZuZ6098QT/VP0j5u+yhMebKrNRAsqy+EMNiwiOUV1AbWXU5xJsdlP4
	 g203waLe2jt5ebo/oHFW39OL+WZI9crKUWGiXNTWY+40/vY5Gp7J9847szmJGLr0cB
	 LY/+dAQXexD5o0OioQSBZZYn2RYmRbm0M1gwgCutaBmTq7cZnVvXKRdy3YLU3AUnAW
	 FuzbMWnr7qP1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB73C87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370039357.13426.10855305355814039377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6677bb414eef02e21e7c408d98baaa6d8a631cfe6c20ff43c26f59a041af36
Date: Mon, 28 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753700393
