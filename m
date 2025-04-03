Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A68622CBC9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743665995; cv=none; b=jTa4QegMRBkdkK50yvYcBz07LzOvjEXkhXFJWLM975+k7KxxL9E4TnOKfrZVS6yrqoI5p6hKYlrAI5t90hPDFQ0IQLwdCz1ofKNVAW85zkI4BEv8a6RQ8JTD4SOLXRNIMIb12/0RSMoNP1Pvj+wO/W8CAgU1GZ2Jx52+Braf7P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743665995; c=relaxed/simple;
	bh=RYsMM1m6u2SEo6LbtbfrFT1mJPLa8KpiDDNgE/GFHQU=;
	h=To:Subject:From:Message-Id:Date; b=JI9y1J5SQz2O3rhXbOMTWx3w1VCPL1FoYRvcFnPD3i0YWCQCXuPI8Rh5lRr9gQI2/5JiieHd7o7iuIbx3rTYj0E2cSna1ynTZzKxBrNZFC7j2oQVrkpB4w2E7S0uF2KNmx4to1YwmfEGmNO+mpqMeSTI7CTsJhQHyZTAOrZw7F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg/vrhKt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg/vrhKt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28F6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743665993;
	bh=RYsMM1m6u2SEo6LbtbfrFT1mJPLa8KpiDDNgE/GFHQU=;
	h=To:Subject:From:Date:From;
	b=tg/vrhKtzrcqDip/pfFJRegaGUNGSzC+c4aa39rDHwnp9xuCr0kDTSVCPBbutoFJC
	 ruugxB+ePhX4SSLL6I/RrPwosfpNdb1PPSTKvtzVUrwPsOAKn7boZj0UVhpZ72dnEK
	 DuyvqaZnuCm7BrT18QppNxgSf2oEMuGPmvSa8LjkchMjWEAnpYLafi9sn4+UzODwuu
	 mC4lPWW8QcmGBzcuSaD+KmgKx7hHfbmsoLSTwtRDLvkOu9/ydPAP3PbHtFR8jt40Jp
	 q4P4EJZ8WEVj+KCYKd04uN4TvAr7Dr2PeVLnMAD3EUHPAbWWx/O+Pb8zI5qHlNyr96
	 82UUnzBeAMbTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A16BC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366599362.14117.12974751894273325076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb41eb33a9bf1f2a69ee49a6e77ef15274334eb92370fe2d26eb54c8f833c6ca
Date: Thu, 03 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743665993
