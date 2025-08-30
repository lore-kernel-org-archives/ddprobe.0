Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE31265CC0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756537194; cv=none; b=eBTZl/cjG6lwBJ8GpsGS8ql30nN5u6mlN/GLnXeAdQSOFcq9K7neWpnV72HtcQYDmQ03OGhD0F3DPhOgglGBRaE2p5/+tOzIV9LwCHMHO8G/UHdROFd6mXnN4uuEIFKGENPiuLC+MjjPH6gwHYHR8vQYgdb4XXjId7gfZviV2q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756537194; c=relaxed/simple;
	bh=uJJdB4H/XUyYKq8yxZPxPX+qs22KG2BTVDhrmAlwzQU=;
	h=To:Subject:From:Message-Id:Date; b=FXIPey9FTbMljKn6HM/tEDKXGz1IMMwIqEodjkfoJj31353IRCrmNA1vUUzYbGx/sAicx99dNAaU+DVlFJeFK4N6wh/5nE1hNXprYJx8PkiCek3Z7XwxmKr1f1S7y2jQhFrZorvhlQsDHIt7uUMmkfdaDiBDsUH/SAtxzzjOLEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fI/Gu38U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fI/Gu38U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423EC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756537193;
	bh=uJJdB4H/XUyYKq8yxZPxPX+qs22KG2BTVDhrmAlwzQU=;
	h=To:Subject:From:Date:From;
	b=fI/Gu38US23QOSavhcuZlAKvl3tqOC6hnu44eHdoK+Q2ag0iI21RupSf+qmtk8i2M
	 Ylfav7FXTFfOjtwyE0P9SIaLIys7gS4ii0vDmbKZwtdlzIs7D3FfIqZp/1DHYra++v
	 08kuEnU0awIo2GQ8z31dOfymNdUvxAYBM+WOK6kZDE6Lv0rGUPMqgAWKMp/o4bsZZY
	 CSESKwuagVf5/jYYQ9LARqpS+Zz3MUhWzJTPsLSeH2EgpYqGXlLyaWgFCepBpqyifF
	 MNkSYto+LbYmFAb/jIb9vQfMEdpHkwyGqxXlLWBLfG1xuSSR/RYb4KK5pBZu/od93a
	 H2nCw5NlM7UAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A48CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653719357.26094.421299434968361866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc4ebc4b37175aab00cb0cd77c69f72bb3b35739c96c4d9fb26689780151888
Date: Sat, 30 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756537193
