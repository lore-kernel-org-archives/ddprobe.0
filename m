Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27227F9C0
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786667434; cv=none; b=kOmbvmSacHCrkd1KcX5p0ITpueS1ElXLVk9BmQ8QjKTsQeQ7kGWFZmnKEWwhC0LfsnRGz6nRyZDc5hKtiUb+2SkDDFTDEEy2UJjMi8yLK0B/UrIPzGEKhzWpfvNKW5o5kxM3Cz4l1tnKD/K9rA1UWKlLUyTd+3HpbKyt1PZ2vwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786667434; c=relaxed/simple;
	bh=s6LPNfeS8e+XnR4yUDu5rW7l/aDKV01YB0sPKdlxKTA=;
	h=To:Subject:From:Message-Id:Date; b=BnFsAHnwa9oSjMvLzPAoJYDWZdLSAZHy45lnm8MrpF9TliniP94ddx7pNUZ8MCzDsM5yaVokaHbXmwyd3DywpJsTJxCc0FxgtWYItQEKsEXWS+wVLLve7WUx34U6NiULltUMQc6v2XT7notzRY2GjsxT35oB9uP5MWlKQrsV8CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fey2wD8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fey2wD8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC83DC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786667433;
	bh=s6LPNfeS8e+XnR4yUDu5rW7l/aDKV01YB0sPKdlxKTA=;
	h=To:Subject:From:Date:From;
	b=Fey2wD8ziqodtkcwoixQcEeghBenUVXsU2uzYxBhGZz6ajnXInjUSHSqXANSgRvwy
	 i8ohzMzXyK0DRIhIXf16sB4KVAgFojUNxcWNydPRSgmos5tVFq7vf//AF1PCMQYBoI
	 m2DsFWeUFI2ixPTZ2yM0n9sgNlJksDLb1js3eyyqbdKBZyq509qJFu+rrjjgpm7YWZ
	 r9BRjT7/qiTLjQDALUEHgkPl3f07EWMSsYcvHS2uSvzb7oYkVWmfxu4c7p2vEfzZat
	 ZWoHJvvJKPmtE2/inwzdEUDibX74Sp8SixArihmi+fX+RgiXyCmCd1o9EOjsubLhO2
	 rvkhTUkwOhMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F0C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666743368.5332.12549356979438096497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989726780ce3579d8ccd57a7edd9f74dd7382ef8f037263378f65dbfb018cb59
Date: Fri, 14 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786667433
