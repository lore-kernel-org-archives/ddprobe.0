Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E3230E85C
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780129414; cv=none; b=AWeIjdNRTIZKFJtunY45W4lhJ+BYpzS5aXaBMpOU8RTiuaf+I6v7IKnPGEu+p0W+qLWKXm0Zqwow4B9E6nr9DuUBbfw1d0J4XY0d3Dpx4DY3eH36LCTBBNZPCL0ssNsKyCY52o6eOMGbGpSgXyrs0MIAgaRTF8Bpz9R0BhJ1WVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780129414; c=relaxed/simple;
	bh=dxCQLlDQC5jcwk8W42rvmpbko14sN70HmwrY1ZiKDCQ=;
	h=To:Subject:From:Message-Id:Date; b=G6JIXDK7aJKeFOKCQAoChAZUDnBsm9beZLhY9fNRztjaeyBxoWH3sQbpithjRjSuMcBhNOdBT2hMTWHAcCTSdHVNMsExPn6t7RoaZyrOT8fZ7l2kNy1+LWK1H45rI++nMYjLkxX3qTv/ayE42cGpKGgH9xspKEDezEPdAap01WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDOrNm5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDOrNm5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7923C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780129413;
	bh=dxCQLlDQC5jcwk8W42rvmpbko14sN70HmwrY1ZiKDCQ=;
	h=To:Subject:From:Date:From;
	b=hDOrNm5+8ehyH6a8Ppdv/25qSZF1F1mdnaLp1bWUX44PtXhjzfa+qRAUqlRQdrlrO
	 RMLW/E7r7a4TUz7Cs+REsUYVw0KLR3ku4HL1WlQTVjTy8sCqcwVT6joUifWrwTQcV2
	 GhoYuR8cOh40Lju/zve+fyC89yLrxswoZ9Ba5jZwIcpXEU17LPERN9HNarXW1hrNNP
	 bbuBaVWC0XRp7WRX7KXMbVaWpOgSuoTLIq4+FMVvVidbQ4c59sshbInlFJPHM7y29E
	 iJ7NSUSOynsXu64tCSnC7OvGtAGu7uapTfTAqK/leuY+qyZ2O7B4g38cuEGa/exWDc
	 Icz3i6p+Gzm1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF23CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012941368.14757.12524200038286505029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0a4673c9b2dc7426266121f002018277c770ef5df38c587ad7d815fd10d8f0
Date: Sat, 30 May 2026 08:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780129413
