Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3DCF13FEE
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775364934; cv=none; b=djPPLkOw4YIMDBTjOnKKj2vt+r0ES6iP2vrjkOSDGHeHJRjMuAV1UwFWrBtXRX7A9DnrcAStW1xdMISjcEOTvws2t3+qilv7MvpRJDzqkv6FS0DhyJ9mxhPM8Z5rcqLS+4qhCA75xJqvMJY97PpvNiPlV0QmJmiqSJQI2Azjp7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775364934; c=relaxed/simple;
	bh=wmP4Ez90xgGoxyEZXkwsqFqehypHrabqnLsq6vQ2eQ0=;
	h=To:Subject:From:Message-Id:Date; b=XXgY9y/i9qwAT0Ja6b0FgHlJcfkK8eHQABNqxGJjrL+h6N71iazxkZ+mhb/nelVl6ATZRyuln4mQjh8cpmaYPSV0nsRMBZwVO/cUiqAsEmkY9dA6h2+D0pNFk40DKGyrSkBuVfKjDTtMEV1dqSXIbwelESZPWLKPmh9gmWJaa4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRqS8ics; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRqS8ics"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5462C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775364933;
	bh=wmP4Ez90xgGoxyEZXkwsqFqehypHrabqnLsq6vQ2eQ0=;
	h=To:Subject:From:Date:From;
	b=nRqS8icsgH+83kZRB1TS43Xh8ANoI8FRYcn1Ax44tziFQGj+1FItPRAPYizacqmRA
	 y+vbdZGsAlK2F2LG7cyEe8PtvettzoDsX/XMFqRjoDnqrDnPX42joohuWcyi2S4omZ
	 j7CMk7fozuRRI1IsSok2h9Xljc4HYMOhL7ET2ddBZymMxj+AfpdFgpPf0CDWLfyTa3
	 jhQwdZ1C5oTKuxIDRCd8Pc9+7Pk4CKz7bDidnGoSWo53I5yT0Um5ydKw0w//k6qayl
	 JO09ol540n05lOiQyfiwfjNn/2HWhhx2ScAYBq6faglNBb7l3UrfoDZXUwByAVE9mk
	 nY1Skun+o9YHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B147AE6400F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536493369.31425.871913544111285492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ccb75d90ef007f491b77c20ae465759433358843d37817f5b74fb82f91f2ce
Date: Sun, 05 Apr 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775364933
