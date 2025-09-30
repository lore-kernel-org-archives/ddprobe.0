Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6E6145B16
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759261794; cv=none; b=aKm8lKSbNhtvEXV/jfFlRAzGwFAY1T2zYEI9FLiZgiU5fivAfdl0SMeOleChxQcNbc3X+GDefl6LIjAlsC/M5vHDWDFDLD4ZiWwDD1EQsyZlj1cwfGCoy7vLfQlqdafXP112EILeAI2fN63oIoRcJraBDc7CY02mk5N+lchHILI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759261794; c=relaxed/simple;
	bh=QFXVoESFT1Xqs6b4tZeTxbxqIWv7FfizdN5UDYVEZ6Y=;
	h=To:Subject:From:Message-Id:Date; b=daYkxxQoIzqqn/p4SChv7djPz1ZsNyxMbokgvWaqS7ayiaPY8GPhEMYDpFuwKHIsuNF5J7qvM7RhV4JLhy5R6/gXhDO18b2HK2SCK/sUMgsOR0UBeyZRpl0bvBN0+SNx/SmXmqHRYLbIGHM9Ftb+2Ygl0xWFE0wkMe93SQHDMLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJhl0R7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJhl0R7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2137C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759261793;
	bh=QFXVoESFT1Xqs6b4tZeTxbxqIWv7FfizdN5UDYVEZ6Y=;
	h=To:Subject:From:Date:From;
	b=DJhl0R7F60b/Tu8gP+8HeOpWgMrE11bo5QkUgRDk5txd3MND5GWqpnf8GxbzlZ5Sx
	 8OshhHM3zJZ2OiXOUE4pszGKXWg0DaZlsZKrkLiBepyihHTOuIvf2rAksKIlooPJkw
	 COzheJxMt2U4pMhz5XcgOlnfeKUroTxEBTSwx8jzqNnRtOmfFXZ1ehrJRiHwHaZfKn
	 cunzZMq5Ah+YNJGYmInJw1HQdmLmc1qI2kmmxCkbNfPUSaipOnn7Fs5Zd4mqBvMTZt
	 2Ib6osWkLutH9rRWPbsI4wJ7LRwwvxiUfO7j8X1lt6hlXdFgJLa5dfZdprpQ1bzTbG
	 apf9TwD1QwjDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980FDCAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175926179359.32275.15580725194100525663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9a3b74bf0dac1cf396aed63025e590940d2c3843ab061816674265c2cfa185
Date: Tue, 30 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759261793
