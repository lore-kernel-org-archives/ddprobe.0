Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3EE3D75D1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782838714; cv=none; b=MF4c1SBz2zDRW2BKOWz7ns7Yg9p0XEKM+lhFweM+B1sD0ACqUJ3QO+3PVizEwb5cIPxLaeXt/Nf4bvKv61MGBFPwyEvdyXjMbwBwolV/qpnZ1U68vgYwwpnKltI36hC8hCXQBs+qbsXdu8WLXHhB6+WbVqcHw10MU08CFWbRzgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782838714; c=relaxed/simple;
	bh=83OqBdDruBJAxiuNsghYyVMCFx3bMCwGx3457xQiG/M=;
	h=To:Subject:From:Message-Id:Date; b=ljViBfoUebj/zYe1pIMpRTvFj5Wons/qIa2oICngA1MVeoKgAwdUt+Lfi/U8/O8UCvlNDAPEYA4PI0P0wNwez848yuOXH18pCkZC4VSUkNsBo2B/WsqaDKI+8y9WTUSp35CVGGW0s3BWI2CNUU6Hy02nBdO9hk/xKbXD1bl/ecU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzQRmIyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzQRmIyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3934C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782838713;
	bh=83OqBdDruBJAxiuNsghYyVMCFx3bMCwGx3457xQiG/M=;
	h=To:Subject:From:Date:From;
	b=bzQRmIyRzN9MxN5vgzy84j4whj0s91Tf3k6kElRvhs5WjmQnvLu+uVvSPbYY9HNs5
	 Icg7JwcO1HteimIpMI2wX79f7nEQeLoQUxzywCnK+5CUQTndVJn1XkA09CX9wZKa+g
	 J8dOPazBe9XwitRGZSXcUA9zrmfJbqq7I/HZmvA0AyF2f7F+T9tPYHgADQ25p/VEh3
	 Ck5r8yqFn904vNOuzyXFyxQIBxkbl5moG5kK8C/q1sI+/MpHDRLhUAQmQ9jS3W3DGi
	 PMjLllc+zFWYILoKID6Tx6isBCU87YEjES3xVO7sWIuQEh49xVNmU/4VoNFW1opk1u
	 kypaTOSdVErrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDCC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178283871368.14623.11585318833684646125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e3a9187f859d6d844a971f2e0e316a88022ea9138e542b41b8695e75586316d
Date: Tue, 30 Jun 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782838713
