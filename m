Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21735290D81
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772159694; cv=none; b=FnvPI7DevrTKJNY6WLdTqAZwOhlvkWtROnhHuCkavb5RYe7BTxwDRtgPR+KHcHSbo4S6S80wtlUtloHby3jkMpdM6oJMA6Js3ZJa0ibwvAx+/qQEU/Pqr+vEkGxdRA9Xipp2RvofQUhNoCWjVczwePcMm24Y8KnfwlMlWtCp9jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772159694; c=relaxed/simple;
	bh=byjFnPaq6S81kfHHasj7+26CGorHvk5NDG0mq+XF+No=;
	h=To:Subject:From:Message-Id:Date; b=ACQ2bm/TTF5ouZKoN2FMxyGDYhLbFksQTosFNZccuuw2UMsOYBHwwEsrgqX2Aoqm7CwZem4hq/LNNlFlmdWNlwNB1VwKzJ4yVGJhA9jGeGRYpFeT1Wfj/2yT7Tto7Jnw+OAiw3A2a8jmIIc6AtaRCMz4RpXSoUA2+djNjYVDKX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=st3SclMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="st3SclMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A408EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772159693;
	bh=byjFnPaq6S81kfHHasj7+26CGorHvk5NDG0mq+XF+No=;
	h=To:Subject:From:Date:From;
	b=st3SclMUWt5NIgoZHr6kBC3S0kA7zKxWgwOIihv4VPkqpKZ3fGFaseVwOuP2URnNf
	 eiECb27ue3vsB285tpBYwiI+MNpmFUBQoqGq5TnZWTdHfhbuHVAPxB1u5xAQlZj4iq
	 xJ/RAr4Zuwh86HHX76yj6Uozh/FdQfQhqc0pOlXdSfx45N48i3cRQ8kJd4Yd36FVaG
	 YxuUCHhsrmDJIDGW1SXKNFPkn8t4tsYxMPBT3PpXrAUjf4D32H5otSAdcljwFWFtTP
	 GF9oJPsE+ONdqcbD5gpR5/YlSptXiUykX9hceM2ZXY2Srx6v4MdOfSg43Ar6pHT9cJ
	 ttHoaFQQ+cPKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AA0FD9E30
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215969358.29369.8162080019687032222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda7758d9c4f534131c2fe37e68df60b79f036b758f8426c4229e3f6f636dff5
Date: Fri, 27 Feb 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772159693
