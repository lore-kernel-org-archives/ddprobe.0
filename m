Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3610D3C1FD4
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769038434; cv=none; b=oV9qRcXgLl6T+CjffniUKsK85gURGdSpaTBhHobYJKpzmLMPJPlmIKX67Sfi1VSXXfLK5GBoW40KHQ6aFbTwiUNV85dIFATfV90eFV0rrUbwY1BaKg+lkcoi9q7zOPiJXrg54YIzygNoZESyTsSJ7VyQZaaXrx29o7+crCiwbzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769038434; c=relaxed/simple;
	bh=wp8GFQTYMw1cst0p1+VmUS1Zg17I96d4JXHxHJwbkLA=;
	h=To:Subject:From:Message-Id:Date; b=tt0l8IgfrHECtFbJbTOx3MD4rwMSWtQ1y03hfDpwFzcqw4gzaOmcURXfJPWrrbZrdYJSR7qfG4Q5bDtxRjjFZm8eBzxJCao38/Cc/a/arVY6PD4S8N9xycAxpP2sI+vDOj0JEXFZVNqNOAgWSBeV2U9kwjT/cl7UhO5Mw1r3Gzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/xtW/OD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/xtW/OD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11A7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769038433;
	bh=wp8GFQTYMw1cst0p1+VmUS1Zg17I96d4JXHxHJwbkLA=;
	h=To:Subject:From:Date:From;
	b=P/xtW/ODjF2yM2Qb88AB0fTd8CDLghXs/8ICdEDvvQuHLKXHx7NsqDsl7kHOay7kP
	 LdPBdz9rtXL2vFENHD8bbNvfd4bm+Jg9eEWVGMz2qqwYE2w04UX+SUC8fIpGqYMPBJ
	 +y/rDwdkIQRyl4OPvUDuTdJQwu3q+/DGorVUOcVPDi2CyNmTOg6y4+h2zo3iGpYNbJ
	 U6hcKVcIt8zr65zYrFdK3K6yhp/fjB/4WBjWvCLg6u/Vxies6ZrOoizPMe2pK5siHm
	 2D7PD1YQ5zHaCB3tXP/VvaazxeUwVwZNJb4iPD36/EjwecNataaACuy/W0XZgLIQTQ
	 5g+KlAlabT0iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9466DC44508
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903843359.30676.6837216904569902356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70af29521720852efb27f76e0bc2ff9c1beafa1c4284d5394b58e4d156f2636
Date: Wed, 21 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769038433
