Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254B7330B3B
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776455254; cv=none; b=rSAu/GrnJkAoWBZ4iRHhT7ycb2EpsSPCPG1ctIAsV5M1kXL4dk6wTxnsiaoMS33Q1CpcRg9N6j6fJyXRa5xByKkIqh6hH7qPiFG8McSlsLVd4u1ZHRtYVR4zhGTiqldHL10S2LWRAbiwU8hHZd5joKjFOrl/lyoYK5yMIAR852M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776455254; c=relaxed/simple;
	bh=V6kvMHmCKRWrHEkq3QsjyEdtYGEkeXdaWgoid9dprLE=;
	h=To:Subject:From:Message-Id:Date; b=Tti6aUWkNP9x7bkQclhPl1JV0JZhRAB9BeeYciaXQcfrkzOwlYVrENX26nq5LT+ULxnUf1Tf31hDYIWW9BbQHISl7Qrt48QETsJqHfiRyHKW3DY+1CBjsXuaeMzY5dJ+vXz7zDmWmgDNzfJoLG+95IWCGETojCrFoNL0adbjMxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwMTgdOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwMTgdOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9873C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776455253;
	bh=V6kvMHmCKRWrHEkq3QsjyEdtYGEkeXdaWgoid9dprLE=;
	h=To:Subject:From:Date:From;
	b=iwMTgdOFmgDlRyj9OjLUa1W2Am3/WbgtT32EIAQ3xcfY9GrMkKFroICn8B3EXDEvJ
	 yx+C+bPqY15INmfhhsCmlEZ5bSK1X00oybi5eS4jSmBsS8r51s9YgVZPH98Bi7Ciwi
	 wxBQLx6H+wdTibTT3xnqLOk4hLYiM01fjbOoWXVF5mB+DLrk7w6g+2zRJT6G5gPkuM
	 pG1LDkG3cKre5n9+3SPoAAULxT5Zg92K7qRbw7XHeAHOOstrJJDGe2hsmcOVO1D7vE
	 0CdnvEZv14MrDrVSTioTM61GGCpDCA+ecSjU5Q62vfPKlagDqMHNb9Q153hHZBH/IJ
	 03hx47xnlrsdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA364F99C61
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645525368.17139.3134403435796544170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575be86efbbf6ed02459b47197e52b1e9e0cd8f06a12cbd49e6dcc352ae2b953
Date: Fri, 17 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776455253
