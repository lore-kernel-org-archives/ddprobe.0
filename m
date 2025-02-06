Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CA141AAC
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738810554; cv=none; b=IT7jN5/DPX3sOmRVy79dSHfy2ZQfAZsoGC9iWfaAe2R5aCHavhNXGunObihQIxWW/reqcjOkJA37mhHYqdmpcuEVBXVIAUkSTQWwBlOQHG0k9GE6sNdG7eHXNgplDT94RGIs4v37u+1dDe32gITmdViOov8Jj+/L7nGy4T9A9Sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738810554; c=relaxed/simple;
	bh=2TxYlWxRhKcwkfLLOr2KruzSlGgAYEUWOn3+OK3yUV0=;
	h=To:Subject:From:Message-Id:Date; b=CxySWVTZrxYvvoRUWIG4Z8/CyhiLn6PdafgW0ZXxaEkkMLyy0JIicKp7N664dMIAoc1qa55SxnXac3ByO55zckDdZrr3Vb/oNcmKCYPN/EqGrD3VnxngsY9xJD+8vLaCJxpWAefOHV0p/PiVfNSXJv0TTrusk6wjCj3ay1APRb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4m7l5xU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4m7l5xU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C450EC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738810553;
	bh=2TxYlWxRhKcwkfLLOr2KruzSlGgAYEUWOn3+OK3yUV0=;
	h=To:Subject:From:Date:From;
	b=G4m7l5xUk9kU5AS3b0mhtbcxgok5BTW5aRXLKOeaJ3XRfr+5W3HXJHMGwUyb1PJSC
	 zOcC2a95+cxEKbbGG6ABi44vHj+mL64cKh76TbO563y+R+0ugHCojb59U2hg/T6YOJ
	 qBdgIA1KRHzW+eHuKZyKM8ZLUTS9W6JrpDuM6RPyzgf1WICmGhMn18cju8voMiazCd
	 pNKOrW87vOsKIJ0DMq9gwh7CROyA252Q5Yyjl9ynK4SJKCK/33hfVQYDlDEls55DE1
	 F4zvCP/EYqLpXPgG2Zq0bHBxz8Qe1FCe1JKGBcuoT2u3uG7UIl82i7wfdA0UWre5tx
	 9wim6cvCLAOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22FDC02192
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881055368.20015.2438138746260927494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70697d7716847fd905b22ff57e68c8ae939e493d59c9e6a88afae0eec255123f
Date: Thu, 06 Feb 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738810553
