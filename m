Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3A333B95E
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776853654; cv=none; b=lTJwWp0ECPC8uAGqDqUoMFNVFu3nyfCOFwRVLSv237pT0U7FvqhpYixXOvBi/2alhxY3wb7kVNCFZPWif1/roQWTvOQbsQI6D7xbOeqrvcS14qkPy0kG9adikGY/0wZYebyOgYkNfTAKzZE1Lv1Ib8RmFem8PNEPxe5NKnTI3rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776853654; c=relaxed/simple;
	bh=zkbOwMYoomA0eYPcD97nOIzZiKx29vxweqSLnrLUOgE=;
	h=To:Subject:From:Message-Id:Date; b=OWJtiMdcDTQB4B+GC6RAdbW7etGjqxLoisFBjUCwshprx4CPl7HWPlc177rwRgd1G1H4KIKZkHQWA/YLPJi0kOfkuN2UbK3iWGpzhGIkT/aHOPrqrBT6Y3wFUulHM13pLoHr4zlm9IpSVCOrBsjnlKqFY36RIcuQbXsR3f6zvVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSknA/Yz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSknA/Yz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB3B0C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776853653;
	bh=zkbOwMYoomA0eYPcD97nOIzZiKx29vxweqSLnrLUOgE=;
	h=To:Subject:From:Date:From;
	b=cSknA/Yz81CWpEMBE2AKYykRvX3cMiPoiGw15PlND9Xj9FRJ8SCftxyPP6gU2vvts
	 lqsTZcS0kQrxxiGiG+Ikjx+mBCl0QhaPPEF3fRXkFKwToyc2vi/SAtmJoHApIviJip
	 Sp5/KUatMdhcOtgYDhZfiF4euF051iEspiOw2x3fJUvtnIUQvCiqujFvh8a54TeLg6
	 SF5qzXZ96oNxTd7nX+MD2E9ffc5b3NweOJCRQRmEFCgWH9hcDydIr6UT6Ypy8nDHQu
	 Steh6eFa8ud68CDHK+YKG9qzS5A4OdI47sYHW0DlNjMGlxpjQ4DF2uhxxC7Fjmpj9I
	 INbwnqzPymWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9129F9B60B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685365368.24895.1641099653921623732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ffbfdf0b5ec0fa5443ce136f3e85ae4c7b70893d68a0fd0894d8d6e8ae710e
Date: Wed, 22 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776853653
