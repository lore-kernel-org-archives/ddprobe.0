Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC9F1C8605
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759975194; cv=none; b=J4ZjGBX7a1e3yBE+j3iYkql5hcpSl/a4gPnQUDIgRax99+zPV0flIRhd7nelTLqRbLW2DqfUOz8S1l6WUVQAO1Q2InsZEkalPF8xqqytR2IHwhOTP2fwuxy15LWb0cWU8YnasWTHnWGGed6WQsD6lxC3FQwVv9dLCnO2xBo6BFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759975194; c=relaxed/simple;
	bh=6kTgG5kQPeHV7XFjI5tpFgW1ZFYt4HPpRILzOQOUE/k=;
	h=To:Subject:From:Message-Id:Date; b=CmyY5B/HGEcl89gBfH537oyHCnoVKZ/ksfb72DmvmP8nBWZ4VXvqa9HTM3/RvvsbWTkfoFyT+Dt/seNjNymgyDna1wuouDcVnOTrJppWdeZYJl3Uhr+fueglM2/KYWVaZOm43YsP+tWZ/nJuwbj0lJAkPANu6IvyLO3mIcHtTVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4U6+Mei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4U6+Mei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9D3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759975193;
	bh=6kTgG5kQPeHV7XFjI5tpFgW1ZFYt4HPpRILzOQOUE/k=;
	h=To:Subject:From:Date:From;
	b=N4U6+Mei6fDnHMjTpj3jY2PtEfuinRIqfB7cbgiImNO1JojKLodpB/cJZG+pz3/bf
	 LZA24HeDy4BamL38b23XMVXzwJqrJqqu1xVuSWxfZbxWDZdyVybjw305Mx+QXYW+b5
	 yUaaIJOgnd/RAAQAzs9HjMbxXiNR8sepMJ30RgVmyabGAkxokUitTmS4T4o0J3UXed
	 MHHzraLWlj0ycZJmPisnA941DW1PuCPn+w5l4SgkRIoZpjrjcfiDy0uB4sofLLTwku
	 LuvOWgogm90h7SnKNt3toBCtZ9srkDTQiiAEB6Ywd0OcFjZqvzBwdOHGl1TArW3XAl
	 bGLcyn3kN5WkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A058CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997519362.4062.9044198054311416070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e312c7a6192bba41de77409d01047ab82abf5ef023a5b04d1fd68c27a0ce1d7
Date: Thu, 09 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759975193
