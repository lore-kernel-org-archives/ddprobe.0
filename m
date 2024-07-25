Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B54C14A0A2
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721886954; cv=none; b=j1E5xZn9IhudQc9vUw/21Bf/a+OE1/NW+qRJuZRSMDJgSJA1mwoYPgn2WT+Yc+fKOSnS7Ba63AiiOGf+AOXXaZs3Ot0UMBbi5yVslIODKRZ+yZTfKJbtMnbAHeOT5eHg2Fa3ImM3wY8GxrbOiiRHSiJvUo/TAIMbzj8dSoXEh/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721886954; c=relaxed/simple;
	bh=lOwhFIdYrHhIQ3vc3de0a9MszmZG4XVn/4qDhDviyEw=;
	h=To:Subject:From:Message-Id:Date; b=m4/lwHV2m3vNFTOZIzt0aXkqZ3Mn4rgQwdvZcc0fpOjW447NB352XzWpb6/U7sLbihPnyfVbiab1oXcLDbdEY9Ffbz9flC8DuHsAHknv7taVmuPLZFaGz1iwLVx7KbsKFK5NbO9fXsjw/greJjkWkbvMYoCgaAYKbeevq14DY/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rnh3rqZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rnh3rqZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFCDC4AF0A
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721886953;
	bh=lOwhFIdYrHhIQ3vc3de0a9MszmZG4XVn/4qDhDviyEw=;
	h=To:Subject:From:Date:From;
	b=Rnh3rqZa9Mm4Io7yxwkdAYBbUIYGJNFppgb4giAnUGdIkcoPXvL+5atcCFYhKrwlv
	 4G93TdaNX1j54RMOs6ldKFxv0qnAwR9C7gOkzbIyYkHDqbGnRQfT7ldpLP8JFvALho
	 EZPLr9Rsbq05W1r3LDYONj8I/YQ4YZ6ZomlY4aVfWF1rX/ofwc223WAj8KuXg0//nL
	 8DrmPs7qnKQ3ZxPiEuwppyyb4Tfrwf0yfPOWxdp4LTreyrGZaI5cwOOrkldXdvRhVC
	 i/ESuHCzh4teHn/hMDsBdqtGmIu+NMAXy9rTpsbheBB9zj4rCl/OrUllA5R7lc5y9T
	 B+c2sNTbRLAZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605DC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172188695360.26998.13781130474729841695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e89afc3b8c6b2e83b4ef05b617fda063f25005efd0b817706a24d81cea2a3f
Date: Thu, 25 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721886953
