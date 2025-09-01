Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25464137C52
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756705194; cv=none; b=axw0LLs6yN0Kq1sGyxSA6kN3CAIlAgMGzLNgNwuOjv1oMRaIJ1vcnh2LmERNtehNd44XyhTP0cL1dp86JOU1ZWkbF9TusWqCeQIm5vNa/M/QBZHRmD4Sg1/YxCQzCFwde1f9Y2hwrmUMLdPtViyzYkLaaF8UTYApDsU2UjLQ/Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756705194; c=relaxed/simple;
	bh=r8DMUrWonWqNLfz8XEO8NLCo53zH2ivIAjuKde/COps=;
	h=To:Subject:From:Message-Id:Date; b=IU9k11gERyLRczGiYmsXbZqFYD+W/J+M8oecHux4Orm4K+sICCIVNIBZsDfaK7iT4v2hrIyWej1bp9LZ1x++VnT4ybt2YyOS2cuqUz6X7J3WvBn5rmSraiQiZOWHVSy2MXYqdww8gCsovFCOOfDdYrEP1g+TLpA9FyTRjqUxrcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppiJUt8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppiJUt8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA20AC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756705193;
	bh=r8DMUrWonWqNLfz8XEO8NLCo53zH2ivIAjuKde/COps=;
	h=To:Subject:From:Date:From;
	b=ppiJUt8S8LPzzcztxge3RtK2MAbw4zuwlNusJyoJZoSMzbqrSxpyx6Z3k3uDAmKeG
	 AWbrEaIK+cVwh59wN5ZceC6mW99xUv8eltcf+jsmXS+t/mgaBAIV/5fqV8Ig4VlHmh
	 TeAjILeklXaePeHjxPVasAd96+NvCLGmSVXsDfh96qhayoAabu4r0AeXAJttvAao8U
	 0MVPBXP3LbncGtd329vYfpk0WdVg/HB6B9846pI9VB+NJrNTmNvt75svAX6p9ylohz
	 cXM2XDzogMADpz5QJCsFbFgfnMvdOQexHsvZKwgoN5aMqxfKzKKxy5XDaF6ClC+vyf
	 A5D/ZN3Mvo+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90953CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175670519357.8693.2888730180255668928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d0ffc761ecbb329bd6fe6b48a8c1eadc8d5b332c675cb9c3012ec575d2256b
Date: Mon, 01 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756705193
