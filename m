Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C75801
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757221794; cv=none; b=jVDYich6zeToJ/YR2mdWMmikFlxorEleKHKT12dr+g+BiCKOhZx2//Ydc9HcOOp8d0MjYws/scWQ0iX0HIFEIrjuRFKsUceESOKnlyVqEJDGbolOjfRMp5fZFeutZwPFZcxLeh8MEal/X56DCN3FW4mGFHQFnBSzC9pmg947xBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757221794; c=relaxed/simple;
	bh=lThZlYrs15tTzN0b3jF0TMsgy2b+L/xPzEefVONRCl4=;
	h=To:Subject:From:Message-Id:Date; b=qjp5Um01+BjeB+QBM9UlSbYfgUEp7trKKB4XFQxK/gPLj0XWnSnHG8mYMrq3ngfio0SkLwMSHRa8LYA1nh0r/Bb9BkSRlRn5upH+zswRX/lSvEcBdfuYLMJviSTfK92o7q5IDq0OqoBPApf/Rx4LNdiReYg/3Lmgnk9j1K434xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SK9AeO0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SK9AeO0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757221793;
	bh=lThZlYrs15tTzN0b3jF0TMsgy2b+L/xPzEefVONRCl4=;
	h=To:Subject:From:Date:From;
	b=SK9AeO0JaCkXK6w6XFR/YWs8EzCetFFcluyTzb1QeBtgOScCSNS/Uw9XBxVm6MU5f
	 h3QiQbx3D7+Jka79ucw5vDmzTAOYcyqZl2Y94lmVr6axtgB0o7pMWNprX4Ag4n8Eeq
	 WKaYBSprydBDLdCr64NGIakqVJARlDwi+i6IvarhH776RLSAi58efAFI71dRQWFj73
	 dsAn2B8LS2KpF4NcaVRMLpa/e1L8ViYh47xBd7Wf+kMz3Erv18H6iiq7t03W4PfjD3
	 cXVp4vhII69yxr84TINalMOIU83OGXqNZVmqZ9+zosthypLCXTd4HGMZshYp92afXQ
	 PKmGJyZSrXYdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D58CA1013
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722179357.26814.14416393571348184354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2716aa98eee6367387274ec5b762c56086c3e9ce9ad72814d4a22103fe4763d1
Date: Sun, 07 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757221793
