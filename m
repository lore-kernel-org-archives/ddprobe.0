Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA7F1DA2F
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717562783; cv=none; b=Yyu7Du0HTxrXBAvh9MvnO23ecdS/njILnjjKzyGA/A0sa2LTprTvi+/BiRzsMuL3ir/cTocxp0WXGWNIdzFvqObbJSGaIwf3buPO45nEKovuL5beVOYg9CwbAeuX6aGA6nRbDaD+L542f9BRR3zgQqNHkL94kXV+DL5RRNq8YpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717562783; c=relaxed/simple;
	bh=DlnsRhE7hVuEudkFUmL0lTT+n61N5LSz89K2Z9NxDhA=;
	h=To:Subject:From:Message-Id:Date; b=Kj/jteduhWKCWihzj4q96eXuTL58WFHQ52wW6FE3tLli78N4COdSbsTP/M6kZhl4ed51WivT+mM6+cRIFhLagjt1KO32ArOQng8VjND6ieJJcIaa1ZJ3IX4zTBkuS+0DjSk3ZoJbVGIAA7i6SO1WTBYy+FkDFVe6iPfziQIb4KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ra/ISjeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ra/ISjeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2CDC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717562782;
	bh=DlnsRhE7hVuEudkFUmL0lTT+n61N5LSz89K2Z9NxDhA=;
	h=To:Subject:From:Date:From;
	b=ra/ISjePKPtdfDOxKPqDOrXlTawVISJlXx/LrPKkvAAIFY3kMymfxC9em+b8G7FSK
	 1BHBBPsoOfIcLPaT40sm9HbG2yamU9NG3QU68J6X46rinOuS9IB39Z2e/K5R+49Jsa
	 /STI4ol7tqDp430OTlhw6pNRC11bNiIi912Br3Zd/qhzfzpW2zALI/uBvl1/MAjHA9
	 7mepMnsKSPGv5DdHNPOMJ7ELj4cmavalwYBrCbrhEyuY31v0UyVKvXIDw/b4tp+onf
	 ND+dTdVf269g6JWVBJmtLwtgO0SByY8qepwRKgGF/L0+vRelq24o5XhTESE7+6/8Ki
	 H8h/W9KRkoKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDA0C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 04:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756278276.3136.158203784670524493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf870e0d9ffa8c2106514cec481637f6990fa15af214c2836f0e0205b708d9b0
Date: Wed, 05 Jun 2024 04:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717562782
