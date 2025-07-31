Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3C915533F
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753991395; cv=none; b=VnPNMKfLS94EiA/b1SSvs6XHWzZMID84TX1SP0zqeQB4x+ILBT8Hx3RZ20/w6LW3nKb1zvbzfGYqhOp9brI0KMSC6/uCxWdsdUg5hEUGnAyqnOHuoFBm6Unyl2N9hg5EaCTEGDhfQ8T2M49Xr5SGPxLGivaUoikuxDymidbKWPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753991395; c=relaxed/simple;
	bh=eBnLQgLHRrLl2ZzcrNkfmuLy7xwmeqrkkRwqM4gSn40=;
	h=To:Subject:From:Message-Id:Date; b=vA+WNnqBibZc2DlckiL/2XU8+csgafY0AArA9ATBmn/hFipaG0pBN9DKMBs+79KHx+f2ZCGrOgJYqpmHdrgvGaQ4DcmrGCgQXg83ZbQI/9lFdjLfPmbs+PMMaC6OybELYVVLUwQGClYY6QoCkrxTVrVm9M6rC0AnJAXB1D+yCyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TH48Nsvc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TH48Nsvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30BFC4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753991393;
	bh=eBnLQgLHRrLl2ZzcrNkfmuLy7xwmeqrkkRwqM4gSn40=;
	h=To:Subject:From:Date:From;
	b=TH48NsvcB5RcewRPA+ceDMKOLDJw4g+WwulqZtIWTnVXd1/YHvl9rKwB8I12Fs/14
	 rWC1Y6F61PtdlvtanDbM0FmHvKLCWSTLivWmolM5S4ZW3Ji/Wzy5ypZMeP86PE056+
	 WWxjOpwbVaZFO70xmT2Ib0dKFMxRw7/GSTdrThBtMZje6Q9MGL/rUx55ThCA5naeef
	 m52ajpyb/Ax63donPiG8QMWK2WlHA00UQMLfa09Ub89qe3oVHiuKypSHi4TKZkeH1x
	 EKhT1NinLwoI/m3h6rFaLFwiDhU9+iaGW/KdZYv/T7QegFFMvz34mmUJkXD9ON2l99
	 En6YFhaZETG/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBD3C87FCC
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175399139362.2210.7607744770919540467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f036e0f0968f783777a8b65dd82d84c926d058daa70cc8b6bea78a690b8bad3
Date: Thu, 31 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753991393
