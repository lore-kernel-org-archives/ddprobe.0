Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1731A23774
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726003554; cv=none; b=XrhdaawDUupI5eDe87oFJnTO5e6m87aUgrq9bbdYlJwuukfGDa8xcSQMhSxRmx9nvX704JtYWWK4GlYF24WJH8zihVjl+WzNJsqPz7hP9wb9pw86fBUvqQMM/BJ3ag+hdbgKVgt5wZLa4T+RLybzslrMyjT6wN7m2ynhS0Rk8Ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726003554; c=relaxed/simple;
	bh=1ckWA5/w8OETiYJbmhXnGfu+mlxtSUskmvEVg4lpIbk=;
	h=To:Subject:From:Message-Id:Date; b=GGTwuwYd3vrr1aROgX7Ofss/YkBjaRCVgO4LkzoKciEiCowYQbhWUHHA0b0YI1uGsalkr2AY7dPINtDMgpFAb/W0tozLGUy+vC6DxjA+eb0bRE7UIB2azkAVC86WeCsqbmCbXaVXEIXWP6U2mzfkUHU+s8FHdHTAzmzMqdHnbwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBrR5AVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBrR5AVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FCC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726003553;
	bh=1ckWA5/w8OETiYJbmhXnGfu+mlxtSUskmvEVg4lpIbk=;
	h=To:Subject:From:Date:From;
	b=kBrR5AVCk6HC2LnQQBsnEp/OPIwYh+LM4oO70+tDwtBRXTuPt6SliICYMq/QNeJ4i
	 Lm0T1ZDCzsSArFylGRfhEG+sXYq61LSS4OjL+SiMyPWRouIJEAqsyTZleUmsucorLr
	 C9BkDHbkLpspP0tF14iAMsKo2CQBH+xYncb4v9sKGOROd91N8Fx3WyGTcWEVptMYgG
	 HjtLoAMbxEf1Y7DS23d44vfSS/9hIUANu8W6YEhcDUYAs2P/VDZuhad+cf/A0c+sWb
	 1ZEXrQWFwZnAHMyMtSJr9XJkXYSSAdbp1A3JUHXyyIWWY7LbN3bN0ite77swKik4kO
	 wXrXVm0eVmRBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E30EDE9BF
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172600355358.13052.16256403179380222386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76d1d9702f763ee867f54133d9254d28e38a39fd93a15893fb8804584f3190e
Date: Tue, 10 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726003553
