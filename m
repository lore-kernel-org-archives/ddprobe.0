Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60EB3209F5C
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738598154; cv=none; b=sxrHiZE/1BSt9BIzlZw7rlVf7Ln8mg2L+joHVnWOgb9g8brSk3HesY3f04uZfdTlfmNykXOWMxWP/sgY/1FalZPm/c1yk5bbgHlDEeYrwEj7Q6z7gQUnlzUoH7kvWURlrvvMn0mLRU2GZtSHTXqnVtuonkOHfR5GrUuXz9f5TU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738598154; c=relaxed/simple;
	bh=NCB+ATmJ3IXwra5Hcu9gm1Y14H5nLm810S7oJ/VW+Wg=;
	h=To:Subject:From:Message-Id:Date; b=UCQmuzD3bcHZFhIs88LKAHOIEHS9vhi78+BuS2rGsBnOc4jNkhT/v2FnxaNsfV+7xpS7E69tAV8L7de52PXXvbxafaBdoDUKH2AqedRivm9bM0ekks9N76o86EoHJFvKSsFydWf63wwqEqfe9ZLUlmqZboIrkQCV/BzR7SXGHkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir50s6wy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir50s6wy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F04C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738598153;
	bh=NCB+ATmJ3IXwra5Hcu9gm1Y14H5nLm810S7oJ/VW+Wg=;
	h=To:Subject:From:Date:From;
	b=ir50s6wyjDOL4DpeEjHAOgLTyy4klh6AePNCvxDW6/wjzkdpJN5uHdwaW0AQyEkRE
	 Q376oxkndYzFlgOrco7p9UOFeMNuHf/Odgtm0UIUKqM0phehRgPTPcG56DekO2RDkc
	 a7Wz1UMCHBmOnpWL1thC2JUKutCuiSJQfJd9dwyUxeIq5qzxag3ygyVzLjLXupgBdX
	 V6PSbntsODoJCDhoA/Tp7VKmDOiUY8wbqhsJGjOuRk6xbTLaCcazL76HLTcpShRtTw
	 ITPnGwKoTtei3ur8ccwKpZKjrXilRTiWthDgfhxo8MZ7Fp0LqTsr6aQQ6SirgyW3x+
	 +3yPFPIak5A+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA2BC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173859815364.12823.1645851966051533140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8aa49cf88277c988922420cc3e6b0b56071666527d8324e58c46835ea1b56d
Date: Mon, 03 Feb 2025 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738598153
