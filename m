Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A709841A547
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784798974; cv=none; b=GGFPTef6bTKmyjALSmDJdB5qlgwym6frKuwcGQ46NlrT/ojTbDkxKeAeqnfdc7QRGRQEJJP4hBnMBWaVTFniJsqn3Ja1BKpogxIPsjbcmme5rVuqHLDgyUAE8A/ZQmMLoc3hf353dMxumv5xNMBsBh8O+LHTMKcYlniYOA+pimk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784798974; c=relaxed/simple;
	bh=leVC7LeCG66SUbEpCPWJSJUlE/W9IGWHvNTyGsFwd9k=;
	h=To:Subject:From:Message-Id:Date; b=BlRuBNdylW9iPueQEKmZL7zSOldsa3q4jIa69zfM0MpiXm4x5dCTu7vA6ajJCGcN43t7HqMDK0U9mooh+ffky0/nMPMoU5YThNZQvC0AvjX9bA3OYHvuTmkaLvY01LmlIjYCXwzkmjnS0+imWJrXOBnZ0oYPyzH7w95PBiiNmoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eh/Vis3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eh/Vis3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0DBC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784798973;
	bh=leVC7LeCG66SUbEpCPWJSJUlE/W9IGWHvNTyGsFwd9k=;
	h=To:Subject:From:Date:From;
	b=eh/Vis3YMqnn0dWTQwj5ZXuWrRSa108cR9QD8bbCqRymddjDXK5blhuh4vO6b1PkM
	 VZr5+SzRqyoAZdnty7lDyXDHqYCCYln2tkCxVzKm+RayRuvZFe7C2DQmf8xzZEM7Ii
	 +dGK/m989CiCZO3efy197GS3PEIZB/W0Y5x1JNYRMAZ5bxlyCgahtdadB/Y9CyLYDY
	 yW4uiRnIvIhUHoWZPluZQDNDRywbgD01AoA2xayMDdjBepvgY+iBds3ejNSj1bOAyB
	 VYS0NlSE+dDIYbPXeZdNMCiy5Emi+vfbqUFRbhYHPeB7BCPhoOgcHcS8dDg+PospEE
	 kNxUdjq30CT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF334C531CF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:29:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479897371.30811.9983915737935560807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2955ef65cc8273fdf38d05689a2a04e37634a150709da6379800002d997d5e9
Date: Thu, 23 Jul 2026 09:29:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784798973
