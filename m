Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513A21640B
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716818063; cv=none; b=SjYQgz3rI9rYP11oV2TTSXll9lCmb/EHizbVHpLs8UwJ+cGQ8Nd1JOZfoxIYnMpQGIazpB6vJOy1tND+mc8KlgX14e4n01J2HX+BY439ayRLXiLzWrGcFKgtp0k+LwcBuD0CfZFBSgBznwM9//EiAmHBtYANPVxlWI4RYPzQhlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716818063; c=relaxed/simple;
	bh=xYFfzNTCG9Pi2kqo/2Nf7+E7ay8rsDVClSgIDGSs3JE=;
	h=To:Subject:From:Message-Id:Date; b=DbBmBH2DGBD8Q0LmWtTgfpzROeApn1ngkq8HUF0ahq/Gue2Kr+6Jq0zPTtHWRpTmKurHkTNFkqonRO98RmvBANT17B5Tl+4NFS0naxFlEhhWV56hNi+zd98PW7CJndPkh4YLcrikAT3cizQFlPKMJgkX6zalWsHGmwObGi45dIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWNTM6oR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWNTM6oR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAFEC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716818062;
	bh=xYFfzNTCG9Pi2kqo/2Nf7+E7ay8rsDVClSgIDGSs3JE=;
	h=To:Subject:From:Date:From;
	b=VWNTM6oRb4nQrjvxNQ7O+0cXyTstTAXP3UPzo48ccFJfpHdNoDv8W4XVYK6v1atUX
	 d8Ewsb2SixkZGwJIFZ+v1L8rTeS3WWpsa3yBCcCegSOpeolvALWS8akJwlyReBkU0M
	 +kYlb9gjKNV1e2SGc/QZlsEfmYr3n1/WQnrVq0cUov+oC+n8F2+NKyMCnOavL5BFpD
	 uGsD/VUS+0Oep0vbi42MqgIcV45fhmGJ+ZY70Ou/sNpmARBSxfoAasHhGqbyq42ypZ
	 Y2m8Lv8V64zup2W6vryL9J1gu9vfiLFrQYEI7X2s/JJxbJ2Ok2fnCUHUVjviPBwj6e
	 vjub4VW0nfaKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE76DC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681806277.16135.1480134018144733957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba29a1d73eb63b03b93f3d9bcfc94e7f4b4c03e948e081f1b8174f682dfe19de
Date: Mon, 27 May 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716818062
