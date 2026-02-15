Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39834261393
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771184694; cv=none; b=kfBvcjcq58ODx0/sB2noLv0nd5qpURMsWMKbJg+tA1addOuwISLo/EVRCAiFV3DTlG+9VSRqC8tHEstBq0kZB3WeDeQjBVFqN+jPI/aUDQFbN4+d8u+Io2Z2sx6olk04HbeRqUtW2RXWVoWQBBTofDNY8+FNYgy81cxAVltYX48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771184694; c=relaxed/simple;
	bh=k15EPIxjYyY8C63iCQcogsUGTCY9U+2s451KFFvoClk=;
	h=To:Subject:From:Message-Id:Date; b=YmIJAMseCMUnPd9eIc3pkkyb8n6WnB+57T3YsEHdtFKpYpXsnmi/ZqZmU5CthxVjRwwKpFcXh4rzXDZH0Dn3XGCbqYe7dcXm6AteCGk50JizQKO79NV4XIMBltYFHVf3XD5IE4iWswmvl24OF8fiPris0jrGCgpurkdWbdh+oOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cy+XgOyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cy+XgOyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B39C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771184693;
	bh=k15EPIxjYyY8C63iCQcogsUGTCY9U+2s451KFFvoClk=;
	h=To:Subject:From:Date:From;
	b=Cy+XgOyu3GRFG86Zq6GsOWIFKdVs4uLjkSvUFSx15Ch+QUcdo0vFmq95v/mXHEqnG
	 IYefFt9UwDT6opG4iLb8X7jYHp5HXltvFVkToY//YXAkaBrKoCe9X7Gc9zP4Z6+aJd
	 ix/mLdsBSxUYeS5sbXZJxOpqy8OSXNP8Kh+oD52MTNV08r5fK51pxbqNtBpI4sc6bB
	 SZK3tHyZ6Cn7aTwx7LhWPS0VDjcQOxui+2T0RqrW0Q4eGYUoQuyE0uwuwI/gSzFFl1
	 HpirVaAAetgJ6BTxQG8vIkg8fx+U8yVgByO1ofpqsjyxKi3uhFMK8gIx20yzzpP1US
	 oFxqkk4bSHoIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991B2E63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118469360.18245.7168319651747261657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5194b16ffe4b02063dcbe4700c1f0107fa47995521e8c7b85dbcc741e62194b
Date: Sun, 15 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771184693
