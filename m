Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0953594A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782223594; cv=none; b=fkPkF7szW6GAseaAFYm0HmnDudAu9Sb/I1AwIJSV6qAvSIwRFApRBv+yvZS8cE1x4RkFh3nOD0kqb0eEhEcFCZpaAGP4qCkD4dKZ9UZ9dtmXn0CTOLRvbnsSBjw7jk94HCBD/As7kXPMPLalBt5awvJlISruVXBEsF0sipomdok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782223594; c=relaxed/simple;
	bh=o22oUuaPib0HKgMdGzHYIDMn2QpBTd/B11JTjxHquTM=;
	h=To:Subject:From:Message-Id:Date; b=m/AHFuVf0J2/aHXdYJFTJFJVexVUNKk8mMivWNOeyVHO0xWXm6/Xf+c2Lrsr9EBu57mCQHkd79E1xe8u/QAekvbrLUbeqHlPJxGJl43LfGN/ZnMXFFis36X0KIdqQyUGDhlkTujFAsPTTwyfLtQhM/guv1Puy3EVdvws8ow2sBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzGH0sxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzGH0sxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E8DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782223593;
	bh=o22oUuaPib0HKgMdGzHYIDMn2QpBTd/B11JTjxHquTM=;
	h=To:Subject:From:Date:From;
	b=QzGH0sxbybCc1Imj+BTY83hSgsxZLpt0Q2mXTqWfY8ZJtqI9I2QoA/fO/YR9+e1Ek
	 +RzojLdsHcWi3jWvSx2c4pVyt1orwCSi0sUqsE1jObs2jokeLiFrz4uxTIpPL4Cd9R
	 oo+tTB8Zsmhkc/kejH5B1NUTnJC3w3fJgfo3cNdmBdYrEBL8ew3fIoMFd+18uL6Nez
	 t2HqhBVT+Xt1FULbnNKZ0FBG2efnv7WEPvHkPyYVlYoASHPpeouBeWNNbQsl64/Dz+
	 asZfNp3YLfSKAIP2bb+FWInGb6EiQV8/sp6xBH9/ob4rF8r3AhOb0Bgy+GUnKEC+MU
	 FpbR2QcAy2LWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CCFCD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 14:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222359368.1209.7388960291080723206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8567a268895968b5abd1131b66c82cc766eca13f7403ad543888c34ff8478c5
Date: Tue, 23 Jun 2026 14:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782223593
