Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F6522089
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721909154; cv=none; b=gvp3w43SCx7savZ7CxgXsC93jNcEyxm+BOiaAYmLE6aS35leJML/52+V13pt6pa+7FW8Ucl89SYeFpjBe6OWy18FUCokrcHC4Ay2NfW4Tf9Wn/mIxjmN/X1gwM7tVBbKrD5g/7jWJmslg3iSeB5GMVDU7fX8cdqYeXMoQvDguyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721909154; c=relaxed/simple;
	bh=t3rt1CAFEEB9lc6Q2u7NXr5vsvpJ9J2l2TpRGndqupc=;
	h=To:Subject:From:Message-Id:Date; b=lDnuDSIwlVIqhmdPkiyU9VhyyU8sSwIqr7DxCSryGbdO/UdniaPhYFCVLv3PEuAYarG6U26CkrlCSciFAel3Q6njsducaZNBfYPTnu/mfveRpUqzi6xfWWFfTbvPsqIPyXEuz4FsxxLjfEADjgsarHEfUW4J+pYo/68rkp0Beyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJGuk4Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJGuk4Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBE7C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721909153;
	bh=t3rt1CAFEEB9lc6Q2u7NXr5vsvpJ9J2l2TpRGndqupc=;
	h=To:Subject:From:Date:From;
	b=kJGuk4Ua5B57S5xd0hk19ogOgYhBzDs3sHiiRamioxpvDR4Ixjc7O3Pg83lb3xVUI
	 I0yypyhkBElFWPDCQtlKb6GaBvZJNvOGGr6FWbBEwDsT44AZFnpHshzywgwScsshqu
	 x19Xy4LA1OfQ5vptZxxO9eBG5UbKXFX/W//mCapy8CvL63SZk1ENaHeDtZBGNLtlWC
	 yTnEviY1Zz6k//iFp0RZndHFqM4YW+srjH+Kyum+gFloDsTYc0+P+vuiRgaGo4OkNS
	 S0Qn6a8a304z/7bnCOpvqTviBjTs1W4RVJtmQkwpg08GGm6ZOkkQUj+ZVA1WeG6uXB
	 rwl8mbLrNkJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965A7C3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172190915360.6557.15388817142742732328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10fad0c7f675e1e3e501323501a89fb452ee18a07e305dac2327caee92132a66
Date: Thu, 25 Jul 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721909153
