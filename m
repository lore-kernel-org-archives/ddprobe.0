Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE6338B
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748592595; cv=none; b=qdlXocV2wfWwpeZf0QzrEEr0hr9V5XUJsUcTF0NvjCaExh+hKb13quztZTYuhIAGhiU3PHssLLK8AMNT5+0SNZXOAQ2Ih7MGMHviOqu5H11ubSy7AlWdyVR7QQPxIiSlcjdDmX5pGwjsT9GBrvd54oqOXCkjmiPSR0rHtgygbwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748592595; c=relaxed/simple;
	bh=NGj+KGpJHuDk5PBxO2uLQqZXl0+kC12N5wdThht/3GE=;
	h=To:Subject:From:Message-Id:Date; b=of4IIdlZiMy16j/n57a2MpCn1EfcOdxX7qEzstOv9yhSQLSweML3HR+7Kh+HqslIkf1ACdgo+cocvkYmyDiwO2cEBJ6CFypHKrM21L1LHA6D+Ei5ZyUqdxmfFWoqKg1rpH05YH/57dAWpItxUI/utmF37dFpsEAblkJssDK7X8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GsF+XN94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GsF+XN94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3255C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748592593;
	bh=NGj+KGpJHuDk5PBxO2uLQqZXl0+kC12N5wdThht/3GE=;
	h=To:Subject:From:Date:From;
	b=GsF+XN94zJtP9M4SrRC9T4/eKiKCQHDMWEA8obhD3F8+TsTDVwqj+3rr7ShbvQEOW
	 vKHWZ2qjvVVhvj/AXYW+8i/0lQZKNMqHkFvxIe/gcsjJvXQllte/RwAWkYwIHD6vUv
	 7jcH6Szz7eEXOdC6lg0qzH/EU99ylmVx7N1UVFlQrgbICFmZAUiXeuqA5j23mysEFw
	 oWreNQekM4XSns+Lm0Omx1tOu/v8jGsS6gL6pTMxwDjQ2Fkz1bICWwe/jyEumUweXA
	 BrfBjyAqBfR6zBVoJ+c/Ekz0Wo4VyHWrKqtA+mPXiZfAAmLX7ReeHVJHF82A28KP4Q
	 PGfRKGGAF1uLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F305C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859259357.17205.235033560836520420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1957ed61b84a1b304e7397725f5c9145e94486c2b86c1d1e91631f6f8bb6b300
Date: Fri, 30 May 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748592593
