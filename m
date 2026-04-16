Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8104B3932FE
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776343654; cv=none; b=KTk9C2gsrxbkui4bqsokMRLKDDZPqfOAoCO2VV8qlcf8cbGsVpDhuDtWQ4x5cIo5lQ5Cz9qeINTVppvXtJvXsN6szEaw5/RycD6lgklw5Dma6/e+r6+QvlX9j+ZsJX+1Oadhn6KvmTnaHEOPCzu1cY4/Ktw7RGCaKUM/4bkUOs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776343654; c=relaxed/simple;
	bh=8khActsWiriUCZ7c+WojzIiAR0SqXq/FYrd7b8wkbRc=;
	h=To:Subject:From:Message-Id:Date; b=YBchf+o5Rq5AdzPnqWGUpNbRduCUXc+IPQJWSsRuXa+5Ojfaa9bZsQybRUecqsCacimhWfqmRyktMZckgRhbLL2wA6tnteOESuv+uVDpIjterQeycFxheLH0I3xKBhslWCjXBAidFNo3PsKpZTcRBAPxBDx5rda6Nq+FGQ7/8Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCDmtQ8V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCDmtQ8V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3FFC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776343653;
	bh=8khActsWiriUCZ7c+WojzIiAR0SqXq/FYrd7b8wkbRc=;
	h=To:Subject:From:Date:From;
	b=MCDmtQ8Vn9wly4JwtWpvqIFg1wlP0lAdYM0W6fQ5qZokPN7DKEiCdDGWuM9DFB88E
	 XD3WHpPlwsKoLElJ4HTU/VAY+E4Fegs7mSTf4AlXWEafA5rwwyEZxIJLcLVVjhH8rr
	 cQ/tXda6gzwTVJyUVKNtmlq0VsrTCtjPrPYrNdmA0QHPtuqsGfTF5xWPxTg4HeD+ze
	 5CzmC2Q47B25JlydWaoXL0fDiBJmNlzOffSZQ3uW41drz8mBkuTNyAWFAWbDRxe7Cl
	 3o0tuQo/CElkMRrv9Iq8eoAC0Ck2B30lednXF/vcCM/DyU0HrGBbNH1rSbhetEGiW2
	 cXcKGeoj6mezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D43F8A16D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634365368.3837.13324897802578621442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac217e82c2c09d97e012bb60d96bf223ffb576f22635626e3c94c1efe42c9e1
Date: Thu, 16 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776343653
