Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A6893B389E
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785393034; cv=none; b=lv826RCWwQcg4o4eU3T9TfIEe/8cxHSX795+/YZ/TxH0fA6RK+nMfPahX+Qv/0MkQusdBkBlzgJR1kUNvH5BBfgFc+KYHy5Yj42+sJsM5UAI26Fzrj8Ixw2dhIohRD/EnQlvczP62vyJoBYWlU91/t2xUwGhu5jUgjqM4AzLV0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785393034; c=relaxed/simple;
	bh=doU3DfGDdZ66LYCGdkA2FK7zAdSHIHo8QF+zfxAocMQ=;
	h=To:Subject:From:Message-Id:Date; b=ndPIlnHRDwf/J6sAVM9gQnxe8N7nmVNaifAhDRWqpoYEQGyVDrktFsTqocYRIg2SdD8klVNLzvjqW2UMYuKGXZBA3kAaVTrRgh1BQ8PTz8hVOJVrPlWB3Kj2Ej+PtMyOORY/PjfHcACadQ4YVBayp7ry5Tax+ToIBD31I+q3toA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rbtf+d5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rbtf+d5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E230C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785393034;
	bh=doU3DfGDdZ66LYCGdkA2FK7zAdSHIHo8QF+zfxAocMQ=;
	h=To:Subject:From:Date:From;
	b=Rbtf+d5LPg1sX0m3BQTKTGPZ8T61rw0LjN1DBwEOy+IJzGP6pXkhu/S6ifcWM8XNX
	 vdXJXu1TFKptiugDCVcrWNh4jP/+TxP+AxtT8SV6Tme8hT90pmv/j1bym5iwcXRxsF
	 DMb7yK6gVwwUboJfU5o3PZK5HPw0o1UwMvouHMc2HCHn7xLex8eiCOSQBzj9QRDayp
	 QPTPKacBMJXw7Yx4BnTiQN0qE1hBjfhlAU+7NtvJnDXi57b0JWXUFkiIEDHW3m9D0J
	 zZXscEA8VAbVnAt72PxpwIA011FC1lmX0+oPPI32a0CNkx8ZZ2vOB8U2hIkpYmPPi4
	 gRyshqevcKJAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9752C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539303374.2238.16406961446371881701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9775af71983de413e6c5fdac5395e456bf819170d19f559480273d8d2b12caf
Date: Thu, 30 Jul 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785393033
