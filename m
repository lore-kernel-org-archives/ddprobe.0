Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5589B47DD5D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787071234; cv=none; b=AF2RunhuXxNTmLWgE8p1airtpkILQ90QMWVrFMgitlKA5gWoZFgLo7f0ojK4OLhodN/1O6Js1DvKB2+dbq721aKe//lVbop+egTDJYihB92F3j1L0wZp2WMub+phTaXHZ9wTfqUdJkAKM1IiAszuIO+DWeLd2sue1J6B/TckXDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787071234; c=relaxed/simple;
	bh=TNNIooteVH+v7hh3uvO8srxpdVQaJ6AKGcpeQcsv6f4=;
	h=To:Subject:From:Message-Id:Date; b=eNibA6mGza+JzLap5BacLlkTp9/H6dJ+aM51+R5Ic1FoBsgiEz/pxrJMQplpCr3GfZcY4cywIjBIuWP8qiPlrt9oj6EHaMORCLRbkKcNyGBPT5yGpAIwjbpZbq7L/KmC1CFj/noAJ8ie3fHfYnqNgoojR5fFxvyugGeIFTZRhjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aMghlqDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aMghlqDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE4BC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787071233;
	bh=TNNIooteVH+v7hh3uvO8srxpdVQaJ6AKGcpeQcsv6f4=;
	h=To:Subject:From:Date:From;
	b=aMghlqDJrcReo0dWVue/bie/l4PBTSYs5K/Z5bSNbEXln5RQmtHMcbaidBi5y0OMx
	 T4KN64ul1OvLu7+a5LE2OuwHBUrWpc107uFT8HVOG21NKPwlChyhzKpdgmt1CU+g3k
	 Wg612Dqw7nkQssvWkaVNshS6XeNqlZB8hAQsP1VLTVDmPeUzRfcIj6JYvGlOXHkWOM
	 YDOFn+pEzVI5uYQRCXMXqJmUYjfj4hXMejgzlOc1mKEWzep7H/QiAEJ9c5bgTRIVqL
	 sziIfU2dfP3OSh8gdgSgijbBo5hg2MbtcnNbfzVXO+pU0GLhTxVlfsz0/M8eVruNk3
	 SxZVOBKH6xmcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB69EC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178707123369.23754.4813886340212734776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9cbcdaef6f70fb958ce707d29aa35a8549fb890037fd4c98c83ab57658ca7a
Date: Tue, 18 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787071233
