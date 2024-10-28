Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D001DED7F
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730113554; cv=none; b=m+51Ofh521QgniyxUjzw/6ILoMOlrRVkbVamXNnRFxK47otWzQ81z6J6eLHwjkauUq+B6ej+skQrdTovhY8Gw/KMRa3VjUx7J+0giLmnfeMSerxrYPthCXQof/9UyyMqdjT7ByKr0P32/0fbgJVNaobAY4SOHq+32biMJmRpCYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730113554; c=relaxed/simple;
	bh=VnPzJOCoJTslTlRlRTmUdhvBSxuvKU4r3pbYB+VDwF8=;
	h=To:Subject:From:Message-Id:Date; b=hNrzCNmJWBQpaTE8blYFmqPfrkdSNnUftjjuO9+Xck7+Bx31JOx9oj41dbyHgZEWuFlVimoWlO+3isCiu5E4dornTuRVRWj7I4nMX6oObTmqtr4QLegt6x2QD7FcJ0uTOfvY/dhMe7Rq2JhwOSvxNirGv4hTeji3K7ZPnAYziZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHG+otGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHG+otGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE745C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730113553;
	bh=VnPzJOCoJTslTlRlRTmUdhvBSxuvKU4r3pbYB+VDwF8=;
	h=To:Subject:From:Date:From;
	b=oHG+otGk2PRONpdWVFYKEvX62MohABAzEo8LIbH+jFItNdI4L3rD5ulhS1qvEF+TB
	 sBpWRcZDDx7Z5bg0kUjahIUttt/Pe8gItEHi9GbwqreCyyCoN7oeYjoWC0bnAkmEJE
	 dhTffcoxS4eO2axpJsJjExV4qbZu92i/Y9LnOUczpq6oscPSKxXO3j23j4wPoim0j1
	 4MaP34kJE632xYR491BMJ3O1vk7hPr8ULUOBI9qqwoOuf/adK1Bm/K3OO7feJ+3cKZ
	 yaARYYykElTRTItf9y4ipaw4hPInQXjKdsCuALEkEE98DeRRYrpwtYctvAnw7qieSF
	 Vpd14PaOIOpLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDCCD13570
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173011355362.28862.3700248297786634661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5db9c79435cd84089dd44eab1b5a3b4c6941943aa117097f7c0dcff4de0037ba
Date: Mon, 28 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730113553
