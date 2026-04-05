Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435C813C918
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775355334; cv=none; b=lIC+rZxI/PvhUs1+9laTLfQ3kGC+iDlu3hMtPcc9yKMGGU58lFleSVEVJz3Zmd1utzvytntnzBQOWksAbt3K5uakqmPygCj34nZhkQ0SPomPbvv75UCxVuMk+OBGTilZm2fSMmODonsUfF8h3QsSMK/G+BjIKjOIWRHlPZcUDvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775355334; c=relaxed/simple;
	bh=2WzKDllUuBXv2DSYvYCSZXG1tehzMz1i5+p+S0fCRE0=;
	h=To:Subject:From:Message-Id:Date; b=XHFZEDCI5FSc0sIeA0P6oq65sPQQM7m9x54aYj4wScddDpCyyLPPKGRJM+pr11ULkMDmbGzNjGKgKmaqUuXSP2gPHLUaHokvWz21vHAjMYdo7pO6kysTQMxJwGKn0VjVXHoovrZGtw/3ehVa3A2n9csbJpg5qCvY4OiT8ffzBkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAhH3Xk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAhH3Xk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE314C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775355333;
	bh=2WzKDllUuBXv2DSYvYCSZXG1tehzMz1i5+p+S0fCRE0=;
	h=To:Subject:From:Date:From;
	b=lAhH3Xk5eKxBnvp/wdg9FOa1bHCLN3Np+erLgLYd61QNrAwUjdWRPakbakdG8O0w6
	 ylIaojxsc+Jbtv+xUDOVJyx+PEyMpCNEGCbNMmzSguB7IRyc2a7lpMqF0LzxWJs11m
	 u0G5P+LI8dDqPKFxBQ0Vyyyjur4QytDBoWMgRrlzKqLFCM8eRdOiCHhAYjmW4bW7lX
	 bNN5T6mS7Y4nXrAjQhnWbrJjBO3gB3o3OUhCFU1MJdKH/MWf4FB+p/pZj+pkoBmuLU
	 ml8+8xS4NJgfH87WydJcpBVTTxsDWT4lenE5Zt/R6G4AttpSb1ynQAakOSpPkNte9h
	 lbLdZRz7r3X4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB3F1E63FE6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535533373.15572.9587840982781362783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288faae624ea4544f1df552c6e595178cfb4e641031b96c461365138d834fe99
Date: Sun, 05 Apr 2026 02:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775355333
