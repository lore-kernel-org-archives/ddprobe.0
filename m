Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289791F2380
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778799634; cv=none; b=cHalGFyX02Ig9V0faY8xmM6+FxOnJdYCWwZHZ5axsTbPq2cwBU6Pz3RyP/OuDCgftbbIv83eeCqC7P229IWowxFdQDCuKVUpnRM8M4cq7Zwd6zXspNzSx9RxXdCH08BZ73bH9wwwg/YwiBmsvIRN0gWtva20hb2re4lD8nZ2kDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778799634; c=relaxed/simple;
	bh=3HYLCxxLIj+FNPduPyCVkM8Z0k9Y63591M1xn9enfWk=;
	h=To:Subject:From:Message-Id:Date; b=DvC4i8kbMplPCMjnC+dExXhPJcGm0WV9d2jRD7MHIkRAjyWbD3OJTeOSGIMp0ZJ3IXR+vF8jnYJkCC6ADjhVubh1NmfDHsiSleHIxcfSVP4vzWH+W2f66Wpyx23urWAX9pPnBITH+LXXk2r9wC50g6vDWSx1nrV7u0sy5bJc97Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/GX3GwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/GX3GwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C371DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778799633;
	bh=3HYLCxxLIj+FNPduPyCVkM8Z0k9Y63591M1xn9enfWk=;
	h=To:Subject:From:Date:From;
	b=W/GX3GwOeqFQzKtcV1RON3dEZ4khHzOI/eO4uDc3K7nfpiRykJWI0lfBGjCZlTfGK
	 lpmK4n02HB1g+1FxrAqyvR/UdGyL8tPdSSrLTllsImJTCAVXbTNiNjJV9DSA/e+JIx
	 ANBYvQhANcjHBY13uO429Gqn9q9h8ZsTYIMPiMaEutSv3I53yT03drRuADnW+4DgqV
	 AnVuefzbm6lriwvw0xpQFabVJFh0VMSvaaSyJBPMwTJDCaXfzXX86F4HUVaLa+kklG
	 eOFJWq6LcwyOTbhxN9zjaaHWWBaos6pkwejMPJDk5N0IDZ1Ve1DCG5l00cL4FtXS4/
	 eCgBSBgSgdOSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B232DCD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879963370.15160.9671688098023412489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 596f90b5e4cbcf2b2f96e61efb72de8f33efd6a41ac37aaaa5ca017867dfbb3b
Date: Thu, 14 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778799633
