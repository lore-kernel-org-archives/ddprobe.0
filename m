Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA31403EB6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780569874; cv=none; b=F3pEqFWdGr0K1x77juO5K1PcW+d5Pr9BbHrrhYtLn/Kdz81MVJ9502o13TDLA9L2Tz2y3xEN85NLHpMKq3jhyocizrhSMRtF/Exmfrgd6+88pXdxIHQCjp4LxBDueUymQBUo+36Az2vihMHWF5DC3FVBL8+Um5lsaW2WGT8/MlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780569874; c=relaxed/simple;
	bh=nRYH3FMXURhl2F8/Kx6RmAmv+dHP4q27peThxYskIRU=;
	h=To:Subject:From:Message-Id:Date; b=p0UsEi39IQZOTgipI17w/1ltwzZhfajPRAVVYE4Z4GZGOkPROzTkKh6lfEMvHsuMkeJ7FJPP0/+aEo+6Gn8FV1YtfGsPeXE2VS+eX8cUKrW+0eTI5JMWBB2OqAibS2XwVfV35rHb5eiy+HE5Gvul3aUCnUL7QarjmAHObsebrro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8HSW7Z7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8HSW7Z7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C38EEC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780569873;
	bh=nRYH3FMXURhl2F8/Kx6RmAmv+dHP4q27peThxYskIRU=;
	h=To:Subject:From:Date:From;
	b=G8HSW7Z7xC6NgSmnW7I33qLS/133DXx5xmWesdrchwLK+VdGT6XSMfOA8BskSvy3U
	 BtymrnW30G9wibKZ641kptgXFWUmdAgqKv12r5PRJFGhU6lr8Q45Ov71jWaWu5FKkL
	 j4Sy4G5NXUHjy3WOqN9d5kEUGm6A/lgQwA2r4h3EIGxuQMStwiAZwNaMEVSlfVn0pu
	 eMRDxtN4j0Aul6M3t1pM69ybNuLZgur23cLQCDpg7MnxrRDEgjFLqVxX7XS/d3qi4s
	 Xu8Jv26aBIMc8XTPrFpGQ2S2Ouo4ppGvsVlUlzY6etQS3b2vgASZEHXIy3nBTXiuKu
	 AFpPBbZTkdcEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC948CD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056987369.21133.5895438587821949741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8672b92f61301f97c950db3805e406aaa8eb4425ac499b694e0d1e66eb79b7b2
Date: Thu, 04 Jun 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780569873
