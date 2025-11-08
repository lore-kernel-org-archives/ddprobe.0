Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087BB1EDA03
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762633194; cv=none; b=JTFC66XK5D3qsdSk2YOtXXx+vu9IAY/9Vfpjv2D7ImR/egQH7e+pZegaNgFB1CueZYEhUHaAfsPKY+M8CFeU/N6L2EcEtMH03yvmnxtHmydRh7ihnl3m+9AvfNX9ZOObmRddphh8ddWUoXEXvEGGdk29/BOHdcl797nmyQWwxBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762633194; c=relaxed/simple;
	bh=wYi/Kls1jHGx5OuXmnAWAGi+fwAU+u1XRix3T9jPXIU=;
	h=To:Subject:From:Message-Id:Date; b=PWRsoXEjchyruwqANWX/EQ2BtQKIj03bfSwqwhnOiP9P0DgSUOWAquEHIccTZAjKlSgnAbxyEZasGCG17Qm7DYjdlGNONXjU//Q8E2DknX5xxhkxvBPsrMnlV59KK+NAiHOCI8sH56+0x4GlD+DqUd5mTEL3lhGvV+8vXhfUeZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F28auoK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F28auoK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA6CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762633193;
	bh=wYi/Kls1jHGx5OuXmnAWAGi+fwAU+u1XRix3T9jPXIU=;
	h=To:Subject:From:Date:From;
	b=F28auoK/Q1pW7eCihrQRv1TRwCEaav4aENIMJ7W8wM63AdBQVinIqhjyBlmTSEJMZ
	 KIbmHZaP28UFPVRnrzyX9NAEah++52MLKmKm+YQ5pzKDETCp2Bb61CGdkM95XE9VMv
	 +PTDMlaDNpbSwiZfkxRk7FAYMSyjDK6nLInQRCl56WOF9rDGj9GNDtZQj25BWdiPSM
	 kJ98rqTW6bT6yc94BAt/Wdbv9z4Iw1p3mfF4zauRzl5+rAuLTaNP2iKfheeZfFxbkJ
	 FlFnl0Vycg9XzsDggPITJd2PhtsrWYWg+9XBZ6WEzNYrrk81aegrW9eS6PC0eoW+Al
	 hrl/J9H4ui4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92305CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263319359.11942.10370978438049131019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30fb8b42e9ac4a9bf371c57ad0eaa073513548860d0e473ac424029af7485db
Date: Sat, 08 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762633193
