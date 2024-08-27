Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A951CD31
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724760354; cv=none; b=onCi1fEPcYpmjaHBtnRWUBVh6+KnlnZ4FWFNU9tDexJ3PvbK48T1Z8VIi4QLubLK3MXtFdOmDH41fDkpbJ55r9XGsPiPRGzs55u+U3Nk2z9BCHUW0d2d/o/I+XbkQY07vTe92MWRBo/ALALEYBwBUjDA0+md7dQyCjVC/vVPXzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724760354; c=relaxed/simple;
	bh=tCv9+U8PmOVstVKB6jIg8Qdaoqv+1QyjEALmD5najtc=;
	h=To:Subject:From:Message-Id:Date; b=vF+6YzLFPQvkuBFToy54uSkmJnTg4pZeujc8AUihptrLk6BUbkvt2GYNjmWFs3uy+r+R0IXX81Zax78/BGXPs7jvwRP5h4toRodhPr3b9uwzUgYUzwIx/XoXCmm7vLccivmM6pZvsPaxyIdIjk7GSMrhFA4mjU4ZiuH560B4dS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmWJWtmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmWJWtmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E4BC61046
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724760353;
	bh=tCv9+U8PmOVstVKB6jIg8Qdaoqv+1QyjEALmD5najtc=;
	h=To:Subject:From:Date:From;
	b=DmWJWtmpLcsgRbWYqKObw2Y1sBVzeGwXgf+QfCZ4iNa3gKqzm/K9E6Ls8insDY7QD
	 /1S1UZa6Ag85bvyiSDk+dJPADMYvh4WK2VaxpYFRp7EUG8qb2i7xpjcfrCGAtYB5o8
	 jKCRoIqfCjA3cCIwTdwXWsfpj9hmP1rB6iFZ0sO9Z8ydAKsC9pAhzps8j5vK7y0aI1
	 VeLH4M/KQQyg2QYpSwJyA2rcQnmID2zmLSWIyDCEK2L9XAWzB+iWFF/YLDhRUUULDN
	 foIeKVmJxEP/jSCoTwpEdBoWbpgzxC+CnT0Bqatb47tV9C3pQEmvCz+0cVu1tMRvhg
	 MhJB3Cau5pVGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3134C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476035365.21229.17747331650111396169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a4c5a2b26d24916c93878a262c19a223d0481e08367a00b80795098459eb2b
Date: Tue, 27 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724760353
