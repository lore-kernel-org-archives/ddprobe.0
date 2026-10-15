Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796DF54144A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792081234; cv=none; b=lv6kJAzu5uz4MbsIt+L7OqD3PYFw6USRfMMqqodbgpsghDq0k2lHwijNNgI52/KRuQKPbWdgNoMEEPBcDox9kegswsBkpqr2Wm5iLczcjU+/tGl/dDxfVXDk8k89iSOs6o2zGhFGTUMEEbY39a6Grt4enJnygr4hkl8DgBPBffk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792081234; c=relaxed/simple;
	bh=jdcyy9hILK9cd9noyTrY25js8MkbY/D04d0R0KFi0uo=;
	h=To:Subject:From:Message-Id:Date; b=kEX5jjq5tE9MtCa1Hn31642ovdWLNOdkVliB/xHyp2qqMgCavTmyl4ao8p3fIFF/NwQXiqkd0ia7Nr90bgm9TG40kKNCxQ6lyS3Lj7qX2cZ9vI7blUcJsfiEIOQdCocApvyppSKFGALAKfGBx9G1v94EHG/mHf+JYU+U0hDXKXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju2QRbeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju2QRbeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82A4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792081233;
	bh=jdcyy9hILK9cd9noyTrY25js8MkbY/D04d0R0KFi0uo=;
	h=To:Subject:From:Date:From;
	b=ju2QRbeXUAPwvPx/my9Rhb+TjibL14yAJ0VhQHRfLMRmsforwAaZlLgGFi+GNeMD9
	 VA95y6gyJr/hvP2sSXS0Wf5CG6Zom3TH1DavsmcucOmXAku1IwykuAzsHMUk5Rf16+
	 SQ8kUvOiELDhXmgYA2KdQCVKQNqry2WCjiIUv0ZOFz8ch8KBsFjvaUA+pUaUpeO7q6
	 xcr3zSWBBxDObmqUIisX8DINTtXFWqEEVNkMnygi7PNJVjcIrE9EdRSgHq0IrcQtAS
	 CN5gSJiIEgY+Jy49ouXBRd9MO9gyE6pN69S/Uw4pRTXIsWBkJH9qVeZIpf4th5zEKl
	 B1hw8eHr5PN7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DD9CC6B3A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179208123372.874.6347225473896096949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 754b6655f1ff8d68fe89f68a6b3151e1c1f2bcc1f978f5eddfa4e9532348b99a
Date: Thu, 15 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792081233
