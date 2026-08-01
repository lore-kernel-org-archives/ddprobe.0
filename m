Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404652D3A75
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785591635; cv=none; b=mkji6LPkYJDu8GStXzAmvgZxHUK2Z2xAo2CW0PwhXyXJeuhKq6B1YFIVvhbwODeCALYW4OsAJGN3Zw1nyhK7iEfgNv6eyQnPO/0zNEj5nMLu7hxf9abF02F3wyWVYEQBaBULW6D2Yy2PPKwQBAOGYQb4+XRyKWmaQyEYLpEthwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785591635; c=relaxed/simple;
	bh=x94sYDVmys86jJqFuNJWIlslX9/KIDCoyaAPBMZ0A4w=;
	h=To:Subject:From:Message-Id:Date; b=AZ2CwFOC+hOT4SGrjyEbbAnQ+fvBwY22YdthLwhnQMnlXVf+4dYpoB0G7VmNKBRr8Ebsxb41pVt2Mzg6RVVMofvJIPMec/+pwHLIJzH/1MBAGvfctQtwnKXbs1OqdKA9pzL2GQYyqaTst5HohGMv5JYU8B6rljqaN59xzeQafx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmzhN9E0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmzhN9E0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C07C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785591633;
	bh=x94sYDVmys86jJqFuNJWIlslX9/KIDCoyaAPBMZ0A4w=;
	h=To:Subject:From:Date:From;
	b=SmzhN9E0+elWNRC0N/PYm1/ykFKBbk3tE5VV8r/xtq2ubVJYVP+yM0B/HeXmo7Hvr
	 SNYdT0urO32X8EJvYl8J7d4oKaO2soWvYbr3YDWRO4aBP9WZbM7pxKQJiHhP0/j4JZ
	 O7CRLARnhNr5u1r9gJhGPgA2F6oJ46i77DNBNJPjaWL0iw2/NbQtN0bJAuHbuQjNB6
	 QahpXIp+GyD5fJA/UkbuNxK9mLuMXiQk/7Rb+6oC6zeNKNYMIcGzWR1Wr6GHVRQe/j
	 6g1U2fWsvT+KWMcppw/Dzw7DhvL2sxXiUZPUq8ChWLmjH6E6TR107x9c0msQois7BG
	 WFRSvwkovsOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5CFC55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559163368.13585.11142109302560357174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3def5b37b3a5394b5d68dfa5a7d6eed9d18e24f686d6bfb3d4bd678bd13ed86
Date: Sat, 01 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785591633
