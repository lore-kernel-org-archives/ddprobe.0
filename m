Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369CF3B8D74
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765215174; cv=none; b=azE1K/OuhZIyiy5dakkkbd7WJv5o6xqVlGDPylQarcbar95EAgLhHnWLPGJToJ0/4QJt9dqOW1aE8eZJy1mcudFiyNJJ7sn8o3rMZXaw1n/QgC8ZQ085EAQ1RRO+1VjZ3eLoB/lNYQ1lXK8667W6eAptvMbYObBR9QZcjGOfRVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765215174; c=relaxed/simple;
	bh=N2+HlbCJkUBORpI+QVuxqBDK6sYm99vSt3nc6ULsmVY=;
	h=To:Subject:From:Message-Id:Date; b=rHS3H9R5XojvymMG1z8RF0/gj91GottzxTf3Q4FncdOT7+9j9O40FT34OzwLpdEmTcAbttofPTJjjCr0FvBbSAtq7pLL6JheociQM/Z+Jnwuzrlg3H0/UTwb8aqlKx2aWnSRNBR7/ver01YsPcNVxGvj5PIMJfSgVNwFmL6wTdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeugBAKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeugBAKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B949CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765215173;
	bh=N2+HlbCJkUBORpI+QVuxqBDK6sYm99vSt3nc6ULsmVY=;
	h=To:Subject:From:Date:From;
	b=DeugBAKEjzXZN9wGy/2BqIX1JGNjkBURpH8VCVPKh35L/VqXImd6V12V1I1R9KJ+S
	 dov2j15rhJoFNY1+LieID5fX1kP0KguLyBK7XkGrbvFHgMGDlhPdCdIOOI/hjEnPBb
	 rtFTi4p53XSBysBVKOS5sKMAwAt8WqFtrqM78cqj3ACIftAitqP3DBsHZa+y2FF3zJ
	 jMS/e9cO/cy1dNB752btxCLZJ4pLTgJt8cfc/V+v4ISsw9ZOb63Bt0s366z6s60emf
	 c9K7kAFW/ltft4Iu0odQQecXs4eLjcKmmX1eSGFbv9J5/LnA8Zd0VJK4DcFIKiZ77/
	 6c8ru38NAal+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3595D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 17:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521517362.14487.861757756539627034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b284e439d6aca9ae7c1b8410758989cc54dabc86e57e79cfdf8438e4b25969
Date: Mon, 08 Dec 2025 17:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765215173
