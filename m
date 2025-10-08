Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAE31A9F8D
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759891794; cv=none; b=Tbd+nRoDDRAJEGzI4st/hRxWQ8L0pW1MSZqXM7twyhCGGKHyQoaWkKlAXHTyTL/m1SoYO4f7D9YJ8A/L9/MgyipJBfL/lga8O1mUDdVKXIcjkdPIcawpMCbxb7j+W5naD1uI6CWIHfKK0MafSYLx6atELZFawuAia/g6EYKs7mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759891794; c=relaxed/simple;
	bh=otKIHTQobgirwTR6fsg3QlPg5YCoAIlEZeXWFVDMKOs=;
	h=To:Subject:From:Message-Id:Date; b=GALtaTfL2YzLI3+coNSVf/Vd9xQfk4Q4QgLakv5THG8qzsCTdA4FGAuS7HXDyHfSku6AAWUGTcqZHGfcPsHbrrJf//NAYvk5Yq9CXwS8l+PF/sk5F7+rJadHvvEYdXfmSh3khX7blIqJCUnOImWAVDH3DD6r7hwBPQeOIPcGG6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOidwux/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOidwux/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A7C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759891793;
	bh=otKIHTQobgirwTR6fsg3QlPg5YCoAIlEZeXWFVDMKOs=;
	h=To:Subject:From:Date:From;
	b=IOidwux/vPFF7yQt2r2SLrTB+w5sXpILxXKpCa6tHBtyhrBk0nUfg1VTJAcYuZXtX
	 scWY7UG0/E/MYZs/PozAsgcPQsEJeIwe96+8FlJo2vVy7TNkeiiVrv5TOpCGbz2m7b
	 bxYe9N+fnYHDQtJVcOrR4zdL+V0l+1GJk3lOl/mLn2akEuO/E6zsZbQ1IJSRLLJDC5
	 qbMiGZG8yBn++02+D9nrW4WZtvl8zuRcNFKHbFOPvJUolT4BaFzmTVPV5VVvM8bzKp
	 BvAlp2uOLGnKzkgPPb8O+ESSo2BVlIh89IafjP50GLLijvwYsmxs5osRMc2igwt088
	 FMWKcuEvcYv/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967F2CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989179358.15984.14603034440336144835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13013ca01ec939f4f526a2e0873ae992e768465c3c122bffa7e2fd6ec0b413b5
Date: Wed, 08 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759891793
