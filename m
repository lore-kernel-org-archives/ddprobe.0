Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7AE51A23A6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775192734; cv=none; b=BdOjw6r/kCFyUSm5TYNnq08dbrUpsWWpmGsnFT0tjlUh2D0UmiTjQ2yqqzMz8V5ZCUVKxfdBJ2IbTW7+dnb+TSKNEHCdzXrVJ+Myf2st6BN2HSAWSXZpBsRTCNlKe1Is8EsBIpnNS069b8ymPYhKsg9uzYs8DlfyWjvC6/mqSbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775192734; c=relaxed/simple;
	bh=LyejX84JDnJSVJAi0OJqQlzxViC0CjjkBZKeHIgR6K8=;
	h=To:Subject:From:Message-Id:Date; b=PEeUbm+3fiUQeTJhaWj/tvFLeN8eyxWpbSmsBt4DqeHrkWpCBZUs3RiPSlY6q9P4H6wndysjbcpv9WwR6oaT9azDhHIwVgPrtbRLvGmdeeyJaPyORxBauWlqA8kz1/e74PIht+d6XPU470aUf6+T2MQPH/+4bR2B5tT+fqIfaCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPvA+bPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPvA+bPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1527C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775192733;
	bh=LyejX84JDnJSVJAi0OJqQlzxViC0CjjkBZKeHIgR6K8=;
	h=To:Subject:From:Date:From;
	b=vPvA+bPwWMHHn6g+aFfeqea/TU+7LL5lITRRulxBufy2oxYfQ/oMW2m2LadqspsBB
	 SvTiSJAqDV8wKuALBH8lgEAaOHgfj9qZhxUyxIEByIxBXMnQrKBF1VBjiI0x5TJ/9b
	 YxWV+0e1c1u7BJ8KyJKG8dHP4lBy5CslBTRs/D9d4D4VdxDPYAv34y1eGCAVKw7In/
	 DzDkoTQ0LO1bQn2pZK9OMGEfLqne7UBdB6o2gTTYFXLSNG/ut8U0NsKZhWIDDDygIK
	 sBfkexExXxnXnvjY13sIXjWdFsQTkh0l8niwzpJV8/NIGZZB70FDr9zpPeOf04CVsW
	 MBjdcNIfz862g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1479D7309D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519273368.24810.14500679827514546114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd19c64feb18fedcbfe8ba17bcf7decf26fb52c0e40eaae9037d20aeeab10a7
Date: Fri, 03 Apr 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775192733
