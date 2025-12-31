Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237593101BB
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767182034; cv=none; b=u/yFu2JfOecXfAjtz73iby4vxYXuNNPX66IPAnVRT0X/jS9af08uQq+ui8TeFp9PDK4z93WsN9ZupTET3DRLiLwx/sYquBUBhh751G3P9GBn96c1wrV0CoERjQnWEIq7mpNEDzPp1Jx8ZN7SuzOoHu/lmDHqwjGm3LIleTQQCvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767182034; c=relaxed/simple;
	bh=YYhXv5UdDGP3Av22wyiE6ZjJkmf/7XkPfaB4fWzeROc=;
	h=To:Subject:From:Message-Id:Date; b=GBpTIac52bVz/wUR5XRiKNUT+KURIOPlOwaSehw3dRhqpoWW6RdkH8WPI9U0HkLq9jgskY5yFfi/9HFPWFtchgM5WW9RjYZG+/0Iorbyk5nhgAfK7fY00NCtYpR3CGlfEZKPiFvbU8OuPBGy1wH6/9v3h3st3jV9rE8Ykh/HraU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3bHvgSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3bHvgSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B1C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767182033;
	bh=YYhXv5UdDGP3Av22wyiE6ZjJkmf/7XkPfaB4fWzeROc=;
	h=To:Subject:From:Date:From;
	b=U3bHvgSLHmqCrCwKd7x6W5Spa/LFppuM8Yk42iaJDqoDFKRInwtkVBHY/wTCBud/Y
	 q2DJXrvZC7AxFVbfYF8LKTdk28CxkHLZmK1IAAGBKRbPdyhytIdJ6Dr87LGtZqbMkS
	 Gs8GTYIiCzDJvdGEkp8QIWSjNrqeLVASC5EW1tDU32BgcVUB91wgt2O5FnFKcpdu0I
	 sWDgKf+YlDbmgM3qH5+jbSc+TYpejGjGklSOm95j+otsoP/uZ4uMdMkMSbw1V0NvRO
	 EGz2ejz9xyFcPnOpT6PXxOujLeWDsm+dfiiT/sM1tN3CBvTUWPSRFKMBElB5FwC5AN
	 IXmi+FOPcqhqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C7EE642E
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176718203357.16747.8853359240721218373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9092beddf905b495f577a57a2c08f6f1c54a8194411c59b2bf7814623fbc297
Date: Wed, 31 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767182033
