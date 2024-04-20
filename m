Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4257214003
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713606023; cv=none; b=XtGE+HfMHUxHgNoo/6JEDE+bukrHlzzwC2Ey6sWpEOnvZH57nV3uMbi5o5qqAGnlg03fNGH1q3K5iJmKt1LbXWpctKEJcUFjH64qzJGFtXMGwmLm0fbsx1j2f5cED8XJWFL+cq58W0e+6gyGlIFJWzBXBVhUH6a7yJ6YreJOKjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713606023; c=relaxed/simple;
	bh=dbmNVu/LZgDdByAg7nyYDSyKW/fpZ3vcsiAJnxzzmm0=;
	h=To:Subject:From:Message-Id:Date; b=HEjipDNFq8RFvgd8sMtiBUadiC6bhF/iI/3bYFxhutJhnBjrwph0JqBmGOLFUL8EFPT9PpJeTtQ5erpIsqMRJrcxAS8HTjQ5sQLhzOxSKoBYcWTvComf/67NdKbK9G/gEsfD6sy7OfDkDSmgIZEcjU6v9hgy4W/eMl/nlmOpZGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jlry2Ry3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jlry2Ry3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC96AC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713606022;
	bh=dbmNVu/LZgDdByAg7nyYDSyKW/fpZ3vcsiAJnxzzmm0=;
	h=To:Subject:From:Date:From;
	b=jlry2Ry3CIA8GTJCWvG0UYk4o4yTfzQ69N0j3fHuW4pNrXNjM0m85yCOLjidUqnud
	 Se6ZFSeh8tL3Pxgg8kJW4XSamp/szV9Pd+bnrGhIaP8e4ZZEkeommqjdU7cp3tIh3C
	 8WFs2su2cuX1CJj6jk8PMgypZhbHS82KyrXPGPfnU9Hgz5VxkehLk2uwdUsC9IKDEq
	 iyknMSp8X4rxMOJfxfzMxK8rKjEBeZvDvoutG6ugRJffoErIkxgvHJY1++ELDypDfN
	 8+NurDQp9j1GitX3hkpkS9LZCoTLgVg2cC3PIzvUufnC0Q0gfYeeLPgKm0KKRBWrm+
	 fa6M6XsZZ0krA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3645C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360602276.9042.16865657834625653851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7886d01112015cf5e1627b6b814c768ca7071edd9a21a3aee5841df2a3efb1
Date: Sat, 20 Apr 2024 09:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713606022
