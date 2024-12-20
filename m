Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFC91C3F3B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734699954; cv=none; b=brdYDzNLPpQW9hPOQZeNO/k1Lh7FglvlkRGFG9rITwNhPfkgexfllhsPXLUQegEtNLa9hj80MUDYiXghVOFWeWYwY0OhRILBuF6TOiPJBEP76Dx4eEbzau9rUPMPFo/ACzb/wPxeAyzJratBNFcUUZh1dBGQo1P9AcwM/zxkrU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734699954; c=relaxed/simple;
	bh=Dd1mHSavl8e0ISwUDWOr0hmw6RYjcbtb9jryos8tXcY=;
	h=To:Subject:From:Message-Id:Date; b=e2uXm9UOlfRhMBmYnOix0u+MACwZ0QSceVKoCp+8JzbjmayRnc6CcouC34WCD4+Scv8+1zHCO2lO7JzD/7eE6EuJjaVNxqkE3YXbCwxeC05z1F0AmFPpEH9CChzaFFOUlglEJCLIbbqLRRdc3J4bwKjvAIq2UyLFvBIcQm1yX2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPN8Ipv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPN8Ipv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A957AC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734699953;
	bh=Dd1mHSavl8e0ISwUDWOr0hmw6RYjcbtb9jryos8tXcY=;
	h=To:Subject:From:Date:From;
	b=NPN8Ipv+/03TDsxZjkGbXPjdXzXiejSYngfx6lxcf/Wu7Ymw0RlwiXAauE41g1I5t
	 yIANm2XtOftNbYslTXSWjIdPq86aFNRCWoAfF/dv994uKHCpJBRdqyCsnsolH92eSI
	 xsLDj7uGzgV6xrJy7JimCrvTLQd1LRPYsSRRakBfb1gYTINj3EdlVp62TIrUSB44Yo
	 srFztgHEk72F7PJo5GFKzsLKYf3UQbKr2lgL9RNyi0pGuiigoZ1VRLU0OfiyD5cEPD
	 jJ6zBY3tnE0c4tCD68rEi7EvK4hdiUt7HRZa0DDlpeEOGLDgoJW2NKGOIRZeScJx0r
	 2QA//Ptg6oLsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B6E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469995360.27152.12013416719907830238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a451b6aeb7f35c60bf6aa643e0bc027c0497fee61d60527a0e6646017317d5
Date: Fri, 20 Dec 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734699953
