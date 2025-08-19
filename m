Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD20B30EF96
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755632993; cv=none; b=js+AonJC4SDZJfyLF+AsJB8suIfZdBgC2cdn9/En5ey32qo66hshIpDPjf2pllmrSy2B8w4XBbGSy5M3a++LN126I+Ha2EGRrO5Mazjb83JFE8py7134xcVaJWIK6fiZyTpEe8MM/ArhZyycwDC3wM88ME1SqZchDbbk8PCbXc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755632993; c=relaxed/simple;
	bh=My3z9Z9xbUtGO/fP2e+N4XP3BvR7xcEd+yBRuHGnl9s=;
	h=To:Subject:From:Message-Id:Date; b=Ze2NxeKOEO10PvqwUZ8Cdc//pbxHE6jPJoS1EVjZS4YTnw+xGYw0BckRTj4oLtk0ZYvybBjwp1dZMGA4DqZoLBaJXodynjgTtfzQC4f0V1jECfD0PDKTvAapttmfjzPf3wPVfLn1rgqne0EPdjC8bLkPLLVWI9GMhQekA1MCpPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UieDO+UZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UieDO+UZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3CAC113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755632993;
	bh=My3z9Z9xbUtGO/fP2e+N4XP3BvR7xcEd+yBRuHGnl9s=;
	h=To:Subject:From:Date:From;
	b=UieDO+UZi+vdeqB3qkUSaXT1pYxE2k59PrljWiyHOHl7N460Bzg7xZF+GQdcae/c8
	 t3UAxlKZMyWocYhjzxsVF5U4PXnGoJ4bXqHL2OIO1FO9sFTOK4nYiSrbtfY5EufCVz
	 Ug6BhHInfX1/Ae/ZlSG8+Y19RoZ+HogsRdjIpoIKL/uvTYj0GIvJx/eAzfUUobzcOj
	 skr6puZ9iKsKEPtYQJ7+OJTV+7YDMK6VP5T4CwK9JDrIw4770Xl0mnuGX6qfRC8HxZ
	 8qajgkX9GFHSjZyTtennOPv5ki2bP/2j2W0N97B3QFlVbRSXCOnhjCBQfoXwN7ZC4P
	 trVa/QjRDFQPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E774CA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563299357.13994.16955452781203582194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e47b90038165b80b9585a4f0e1617c2bf0babd713a85e79826a74af2e8ad3b1
Date: Tue, 19 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755632993
