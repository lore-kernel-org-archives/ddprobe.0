Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F021A2F49EF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756267194; cv=none; b=IMMFDOgscRDpEnVum3qkPlqkzHoO/zE5DMRlRvSQxTONnc5Iudt8hs2joRcNkAqSR4kEZ+WBs1xwwIO5yPv3uokJZirvLsQkvaT2gG1ddzNNwyhUfpyPbSlqS8jLhEy+Hrrba8fOyS2krfGyJkxfg8az3hzyOLv3O7gqCWCyH1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756267194; c=relaxed/simple;
	bh=XB17kDNzJWCzjHCO3oSU4fUlI70xEvR4UFQvYrKICpE=;
	h=To:Subject:From:Message-Id:Date; b=TM4fSJ6Xh+7Bb4WJlwgJHdv9IEymBA2VpnddYY4FM3tz+4R2mRTEutDSVIRkuU1CdiESl1t8qxxUwNj+dCkaf9eYiNGbLyGq7RbXReaHd2VjlN0pE8399Ys2xJhhYVjzOu7zj3gT8L07a/7jUDzmWA8KUepj35VPaHKPwxLHDHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiLSRIG1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiLSRIG1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C332C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756267193;
	bh=XB17kDNzJWCzjHCO3oSU4fUlI70xEvR4UFQvYrKICpE=;
	h=To:Subject:From:Date:From;
	b=YiLSRIG1yDbejXauNxBrbxWBFR/g5hVE5rG7DF1vOfVd0bO1eyZo57cmWzLZxAKc0
	 fmPL5bNEjX+ZT2puNmH9xkuhXg43x4KkYGeqsVt2xIfPb3o9SCc+F2N4MZMDoTmwZR
	 2U7nCLoXKaJvlkhjXbxJ4tWdYR4wG0PgdGdWWgBL9YaZew1bTuIYBHjElZGEwTl8fM
	 IHA/PX9l02f7n4EvqwPfQw/n31DmDXvCJKlpavVRW/rkM4Obaqzgh1BBdcyOZitSeU
	 W73XYCT0Bn1aJ4D2KfOEsQ3+osVrZpRgoD7svYxg6KcWWvlEjbwtFXS4rpWJUfj+s/
	 UcIuWbpzJNHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E73EC8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626719357.27568.15496903268239579372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db8ff18433db232d03cce9c8fd5a4d7f2ae2c7791fd51f585ec1ab25f3336fb
Date: Wed, 27 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756267193
