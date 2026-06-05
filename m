Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6393F44D9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780653874; cv=none; b=YMiVY4T02BHeydUyY6rZGuTsjD3sljy8yWlmpdbMKlKDA5KCI+/KCXHU8whu1eFwlPyI2eoDRx+fHTCvW6uRNj6FPEfNOytRVwCw/MapRBUlOgYVV0ztNBhovsVQTh9Q2EkvmR7Aw8T3wbqREkPCQ+6ija/bLfFUPvJqXfZE8nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780653874; c=relaxed/simple;
	bh=uMtIB6EsbbnRdFMcp99Aax4q3cqGcfCLCHmdCPeysWc=;
	h=To:Subject:From:Message-Id:Date; b=oDenBV9M7jmQbi2aGyUdRrhAwvlVwy9lFk5l3KfygJrJ9qJ0A+VF61oaLoml5Ic7cPrhmkDDhSKVeuDdlI+kPWD+wVraOS87fvXv3r0BLCCkghhdQqUk3QmX184As8DJ2IN8IINIQvEo1h4hRtgrr2YoPHBCPHvL2W9BYZSnZ0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9JkonxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9JkonxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB92C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780653873;
	bh=uMtIB6EsbbnRdFMcp99Aax4q3cqGcfCLCHmdCPeysWc=;
	h=To:Subject:From:Date:From;
	b=D9JkonxURRnoNuUDtppMULxcrtEx9oXaw3mmqVfSfr+BhlL60aZZioJKNjObBuvCi
	 H6GYIaiybFrk5ehQfRpbNvQYb9xVr9hdXqmoWFwFFEGHsuXlk9U69yQn9t72DzDkHZ
	 KPdNB+bBI7ZRUCPFdnVdcTjnt0s1W38VauyfCJdGfKyKu+xuXSnqWHSJWlruTp53sW
	 tT/x3V6ITytajQt1kWpCWyxU+Qjr6wMXuACPsY+AWGBPjcfcx+hb8RXnljOzIexStP
	 RLaZgl6UJw3t+COXW/R7iCoQeq0Rba5/nG2wRgJP0Lan4JwuawBlAGTk/prJr3OSVu
	 NALpHMzxchMtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93DDCD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065387368.22685.13826338614661466505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6676ae0d7a791d69916d36d5e27c548ba4bcbad8cb2c9c38be7b8872067edf
Date: Fri, 05 Jun 2026 10:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780653873
