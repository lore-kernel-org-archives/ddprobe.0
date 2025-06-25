Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BADA2D191F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750844394; cv=none; b=TnF0lnqyU8/DQHWssKd8c7wxKMiJL5ESFD8vXY1byb4MmS7OA6tyzSXj6bIOu6ZJxiaScDqwmwYatU6l/YHahqAtLJv3OY8n5IBdaoPWB8xHWENeQb6TswPhGSmvt2bOW3+FvlTRaDDiqShbSB2gnikEXVJ0+HmacY764IqPnTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750844394; c=relaxed/simple;
	bh=OH6mb8yr00y44e3j6uFiUyPIhiiZiVCU9KODNWF3Enw=;
	h=To:Subject:From:Message-Id:Date; b=bJnQ4Qs4tzVoPHTMwr4XESJlWIG9ebWDGvAeir/yomEOzhX+hYhEuLBEjW7myKLGEouF0g4bDWJsJY1o7Ln1tqcqcX2Qx/+m+8J9w3KkstSLof3tKDjl3YZYpe5j2oy+9aD/loyqwrEYNyNtrcNHn4MMYZsPly+GhAdiZM9JfnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHIRL2qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHIRL2qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA85C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750844393;
	bh=OH6mb8yr00y44e3j6uFiUyPIhiiZiVCU9KODNWF3Enw=;
	h=To:Subject:From:Date:From;
	b=KHIRL2qkob3dND8uATzthqDe8FBw0GQE/DFmxeHuXFxRDwK2PAqLHwBTfwfw6FRzJ
	 7e894kNTHBuyrNAG//Q4wY1Y36SN/IDeo6MDfXPgBZRf+Ywi/AGhxJU1cvV5UiHXBJ
	 cEXD9176kyJ7VyT1jKwLXaRicMvn/HLjLHfCpCTo7s3VLoIq8GVrGVTonmgcYZlSjg
	 GXiJRzxror9HiT6/ALP17bWEj9QAL5ttVkq2QCz5ZEoO6N+k6lEPXxE6DjbiuZsp/6
	 WFrUx5lK5orvD9qPT0tsINCzGi6qRlQma3x2RL716y7DyYFHW3LTXUb3qurefPlj/m
	 60yrZKoY3lI9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F3C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084439357.21877.8549875401366656875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3492afec1e33373ef8f9cf32ad9549382bcaf860110a7a6e1fccee7bda873e3
Date: Wed, 25 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750844393
