Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BCF2857DE
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749593395; cv=none; b=OSeTuLhKEJoZjs+16VSLH1D+PULvhFjney6f1mz/xRBfPuJsarSoQg1PViRJwmxgLPBjvbIvbP4s8gZkvkC2IgDoJU53oQuShwQW6A1dYuoe1TuPaypRZDIgsNzN4cT8FNYBajqJNq86cNj89G3XiGfjp8qVaUhlOlGkBROOhdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749593395; c=relaxed/simple;
	bh=CCFVC2HiSTQH3BJIMn1QnA73ByA2XH+uqn+/0HhenFM=;
	h=To:Subject:From:Message-Id:Date; b=o+qwDxBv/MY4DYVj946voslaj38EBhlhqeGXaM2FFWRdbIHUd051Ez6l71CKCYIjCeGJfws1X+TvWABIneQu2/+SUZeheP6VuslSN2F/09KiZRURWWHAhlStFAPTm7xcnseXJxeVZMAnt2EiOu9cet9WvpyYyCvpt9w2y1ne2Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a62bImdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a62bImdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3280C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749593393;
	bh=CCFVC2HiSTQH3BJIMn1QnA73ByA2XH+uqn+/0HhenFM=;
	h=To:Subject:From:Date:From;
	b=a62bImdWJWTyHdcn4oWUKjOONuQEytTiGlDCcLO+Bph9iWucxM76/2Urq/hMT4egx
	 NSCsJinxUOQHF56coyIF6sODavOhqqPyzflT+BAuHU8evc01abVGTOqVwjtVg85N8o
	 7MOXCdNOppbOSyIQZydd2jN1QWvaLJnP0mYkP7vENEWQuZTPeNhgnVpiJY3g0bbbc5
	 bvi3EmjVDtjcklIY0FISFoal4/tWzHCAEtw97HFQ7Y7m0JkkjR4QwLHf8b9t8mKpdp
	 U4n6XimHwxRzlEpIo/pyUfCpwAru6TRjcRfQbRgaGhYXANxPPisb8Y/EZ5tK5Ronp5
	 S8Epy9NCUIitw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F976C677C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959339358.2580.7744973118106239137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d689e727c154407e9cf9e3aa19741f9246dc0b35c76c78e4615aeecb8a19d56
Date: Tue, 10 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749593393
