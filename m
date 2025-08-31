Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8331BC58
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756613994; cv=none; b=PQKaSHzp1e+m6E/HWKWDt58Rmh5y9kBb2QU80YRiO0TDdRMccFJzqxxLWfvJ7UxnVG3CEHjRL9f7uw3nOeGzHwu/8LdD4eXNMTbb9Z/WcOLgL0fCz16JPPZ2oAUMH6MwbIHoIdDIW/Rn/kSnsRTM05UTHPKO4lF1pqaCTiXnXUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756613994; c=relaxed/simple;
	bh=7FOuAl6egQ6+GgrbBL/gNeqlMjPgAzzbgKn8kGJclqc=;
	h=To:Subject:From:Message-Id:Date; b=tiAnZxuUHKKPzlJDiaV/lXTpwBonCYk+F9e3GSHf6ycrsdgLdqfPSbi44fWAdEOIhaTi210JQcdXJeWgJGEKiYP1EqnJjC9T+F45hO+cjQzYNsDa9iJY+8JYkPx/t6SV+V/a3g+2C3EgyQlOZLs1K3qMwd2swHHTc0wkxAqY9Ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/h5Tqgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/h5Tqgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA043C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756613993;
	bh=7FOuAl6egQ6+GgrbBL/gNeqlMjPgAzzbgKn8kGJclqc=;
	h=To:Subject:From:Date:From;
	b=u/h5TqgcqNlTS8PHM1vJGt+5Zil5s8iiQZllcQdqC3+SbqhhGthOSHDvX4etNTOth
	 6TduBrQixEVvpgo0leNR+cKt62A0I53QynpdR0HOfRVFRMMjJB/4X2E+u5+DLXCZNP
	 Pgn0okCpli7PI9jzJAd558j4l2zyXtWXOsQyC3HZqFlMBdgo+p1Fv03OnV+1tDzNho
	 t1tFU+1slZkJj/hdLo4M2oSQZqt3qh0BqexdXSbuF9HhuMv62UBH4wDAtN2n6v67fk
	 snl8VpKZzmRAqhkoM7PJqHnGeUgbJO+L1VfIeEZv6QMwlJMKntHUrcUGY0t5TzGnnl
	 6F0/ddLd1d55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A14F3CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661399363.4213.12730714933661795397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e765a1b1da1f09c50a41e571bddaf44d1af2172d5d15139db9a778735a79ff79
Date: Sun, 31 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756613993
