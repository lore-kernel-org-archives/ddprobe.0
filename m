Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D0139CEF
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 10:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713350363; cv=none; b=btW3lgGnYbRBunSxDnEXdrNG2H59eipqx2vSCSpn38GaK09k5fNSlgAUbHmuuDuSj3UtqTO+ofIb1e0KYpY6NqUyGxVQh30hqMf4jNNpZuqVio19V4J9g6q6KUwiZPTZswotrgYLduCNBN8pvBm4bfFh3eXwl4SW2znCV1KCl60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713350363; c=relaxed/simple;
	bh=aVqAGOgKC31GjmMpd324weNRCz8sCzy0/BHxODi69Cc=;
	h=To:Subject:From:Message-Id:Date; b=RroCGAC0+z709Rv/rNALo3qC2XZibyk2bbmcSL4E7/eUqTphC8tH1fXJDRGKpXXYWkgR+IC9B33zI01CgWkhUyEYmQWNcDdl/4fk8iKNDZ1bnzBVx8aDgg6nTPygS38OibPmYUFY7wxPcdzuhO7Jd5WcftlqT2NrHdPiQFC2Oo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4AJDA28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4AJDA28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1207C32786
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713350362;
	bh=aVqAGOgKC31GjmMpd324weNRCz8sCzy0/BHxODi69Cc=;
	h=To:Subject:From:Date:From;
	b=A4AJDA28Km2dpZmZhwL/uEXPIFK0sjPe3XL9b+Nb4piEyTZ/Djm7lduJorYLMf+Gh
	 wbFRuzdhJ0s4BYpYz+3leaqOgd/VgHPbLo+2uq5BSZ1j0seon1RpGEHnCiLeoCmeGd
	 vH4+wIWR1sY4NXOkgjb8vtMs4XhE0DSnM96DrwEu+3nkZXsQqgR7rJ5Nh5qJVpCUGZ
	 17O3nkq04Hg+24y7Eq7xTcNdDviMHnE2s+Pa2o3FLe3fbbUn4ZgYo+sP8TAcsmfm5z
	 0a/Z+fZ2ispx+tulDh1ADyCoYz2dw3azur7hz2vdP6qlpQTg8GehZzoF9taM1oCTsH
	 fh8QCA+3/2poQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE32AC4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 10:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171335036277.17223.18294904374760911020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01eecac113c8bbbd97c1944c09fda19470067d73c7eda735f74bb55762546e36
Date: Wed, 17 Apr 2024 10:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713350362
