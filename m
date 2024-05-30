Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F6F445026
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717090463; cv=none; b=B/r1GoglSVPaCYhuvT8emcihfDqMZHmbnYSl8qKE/qcepNes3d8M5PEiAZrqtAGBfx7xM9eybiEtNY0BJw7YWnzkyqeL6jcxPmAE9tjBjwz0+OntKRuVI12HGOxu9hWS979+8wdwQpucyIM1DFFyyvCZRsZ3U/xLTd0BmgB4o8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717090463; c=relaxed/simple;
	bh=0gLu0zVC8Q0UXTwUqU4cb9pDzHjfrzSPQIQ3IjlLBhQ=;
	h=To:Subject:From:Message-Id:Date; b=qt1y9UZzO+SxnRnji0cDgATuz0ZtQISAD3t03NLvwxeEedZe3OkSKLxhQawVfvdB+uY/HlIOcBumNNoiR1TelRSkEgLTqXreUevKCos4jFNyAmDs/WNyKdazSKgnOHP+xdwibCgnkkf2ReUkQvt83AJbFOFd4IA/KboV39uJolI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZblusjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZblusjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8503C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717090462;
	bh=0gLu0zVC8Q0UXTwUqU4cb9pDzHjfrzSPQIQ3IjlLBhQ=;
	h=To:Subject:From:Date:From;
	b=iZblusjz6kAaB0vM3NNBuqFED3IZtuLtzeoWFX6Tz/O2iPTYtm5mGcZ942qDiVngH
	 rN1yo4xlj3cGmYquhCY+fOYwVsi9Uct9omFQRP59JgYsIFFX2kx1exJLfB+T6BQAZE
	 mdIcXoHfA5n95UW1mC6yL0whaT1m6rIPM5vmod6nXPlI3yKPj9Skmk0XBskFoVzz5b
	 4PrS/r+LOo/ob/i6rOCllnadGbMJMKhyEWed9IZI9RLHvAWkZRlrxRFMx6YxZRGgly
	 SaALLTJRA/t64ytzWzRmh5u38Off0poT1MoB8kAqU2QvI4sMvbGLau8nFLeZas48qY
	 zfeEp2QcVSnPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D5EC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 17:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171709046284.14900.12402313132525003797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7433d9ceed1b8c6ae17fe1b105a907f962b35af5c58ee2a105d156503222cac4
Date: Thu, 30 May 2024 17:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717090462
