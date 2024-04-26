Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4F83613E
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714167743; cv=none; b=ZEHeU3UCLhB/WTbLzCGh9K9OrM+xQwFHgOfGNJibIlnGGYYco1Kq/46pBCKsHU7f3TXMzr7X64nl2Amgac8daGUTR6jIIA69L4RMcHKPisiCK5ABxGhEofBxI9GyKcRpPlnO6f+OO+FWCFYj0p6oN5mNki2oceddL+Rt514Unl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714167743; c=relaxed/simple;
	bh=O4hpgJDq1wriJDVMBSBfenUoLtCViF7y1g0+J1Yl7Ck=;
	h=To:Subject:From:Message-Id:Date; b=JfTrIG6qyrz/94u7cQy5sKEtV7aUPYoP1X+7b/e8vp3Pe0ufJVIp7mmpqcOGgobi/qcEhhQvt062zuVr7Ygfkuma4mVGvQoCzT9X0ahKHCUwNDbxLITpMqqG9OfJO6ZRqEc/hQM+IWCbyuEcGaRKnnjiqapnmQEa+kVFLcHvLIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfDAZ27Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfDAZ27Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E0AC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714167742;
	bh=O4hpgJDq1wriJDVMBSBfenUoLtCViF7y1g0+J1Yl7Ck=;
	h=To:Subject:From:Date:From;
	b=sfDAZ27YQE9Q+TyjNySiwC0bNtTvPqoz1C+5pwRt0LKh08SNtcq4f0uugJI28JARt
	 q6JR+zRCT4LrAboAv2Tf/JVaQ2Yp+lOCA1dQ5n/b7YRGhvbYXgWG3Bx9+hHGBrgkSx
	 4PqESGvvi+iOPWSqI/OuG15ycZM/YBLkqJumA6PXSHw6CdJywTa0bRj3+HdZt2Mz5l
	 SO0hNfqvKww58hlnBWpEO2kgYRcyW+kD13S2HtsVndL4XOJ18XcQblMqT2wJK9zNac
	 UgDgfMID/YA3e5Qn4CwNM00r944F/5O7lJkbqS4K37/FNeYjNasywvRHmZTYjnuPl7
	 MY6bKxJpm8qSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDD2C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171416774277.6085.1309042783799982603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae167bb561f897bd6b1d91cdb0a4736b90e28bef2d5828fb3ca6f279a0765393
Date: Fri, 26 Apr 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714167742
