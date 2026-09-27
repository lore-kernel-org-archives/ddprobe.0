Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51473349CDD
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790532034; cv=none; b=V4Qn2DFpPSpzexVkx1dKNhuNZBJuD40YyB+/u4sTTTM7sH47mr2J7qOsKO627f+BID95Lzw94IqyckORIuhCpMGWheMN5kVShl2g8TF0CwAjKv+3k+f/rYbyP0Z2zDm9AIUfLcNWdIJnHFnpRkZEazCJXcvjba4jcUeX0rU66Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790532034; c=relaxed/simple;
	bh=d3al6CQKIvwDIGxiJhGKKDo8OHSixkfXvQmVow7AasA=;
	h=To:Subject:From:Message-Id:Date; b=s8tyGVd5nGpznYgpsncqau9PsgHTuvIwiEJy76hFZVd0m7JZbx67yz2vwK+K4GFXxFef6E9cAV46IAMYTKPDYqb7XujpHCgxp9lN2URcYqfRHHHvIeqZIwLE8Vs7hNZ4vPyazpmZaRsYtb7I/ysm0XjfZB91ZBycgOnFzyFWvXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bs/AYf+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bs/AYf+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA290C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790532033;
	bh=d3al6CQKIvwDIGxiJhGKKDo8OHSixkfXvQmVow7AasA=;
	h=To:Subject:From:Date:From;
	b=Bs/AYf+QPo8SVoCyS2qyEDlv+Y+CB1/IgK0xkuUvQwtfeo2iIbGpgkOxOSDL+IYtz
	 LcxWpL+i9pnfzelIXlEybsKR0kLuxw+NKS2I8sF4iPbTs1S2xEhYpGAXend2FOSs+I
	 17etvcNkRwbo7vj1YNl8WJb5gFzITrM8NN+ZNAcA1YPoksCAL5ffrzrNPWjA7oS8O7
	 /p/JAZl+6KJVvSSJmNCg6eW42hBLJyUOj1GdV8PWwFJCH3Ai+ZCJjHI/BSVCrYoR8I
	 7OFk5F5DmUL2RlV8ZhX9rqPtRxfHgRMVxB5WGIIVjstbXpD/4g4t4ny4T5dopueo8S
	 xwQ+7Lz/ghXUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AF3C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053203370.6078.13005439296689610647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb973f01b2c00731c9f703b6c7fe6c1d9f966ecdeb546f1cee22ede6c81cd6c
Date: Sun, 27 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790532033
