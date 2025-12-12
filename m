Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0950E315D28
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765534374; cv=none; b=hWibFDsN6xUcG+Xj1ijDHKB6yW/J81Pz7aO5kGa0tzQGqebK1aI1VjCg6N4Yio/6w9djhwUzSeIQaPuyYzdwXpZosoXvNwfjg4y96ixI5srZlvwNO5j1ojslGQbDFjDhcj7e0/KT2TCcvjUOhonhwp47RPWRlbXZN5uqqqDbdeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765534374; c=relaxed/simple;
	bh=KytzKFq9QNrRCG/c4ioUxYoJ+4QY0/qWoaXOP7moNYs=;
	h=To:Subject:From:Message-Id:Date; b=sN85Gim1+lOCQEG28VyXEzSB533HS5+OMQAtE1s5KHHveVUw6w9l+kyRgBHoD5XJDf3js56rJK5zXIQsEyz3ttxxBl9A0zmE7ExZZqgiUnBXsPw7gKMsZyPPg7FJlAKEzYuuKI3ZXYfYaNsYnG7O7JfUmqHygrkoM+lPE/13rtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pr+eBWyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pr+eBWyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0492C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765534373;
	bh=KytzKFq9QNrRCG/c4ioUxYoJ+4QY0/qWoaXOP7moNYs=;
	h=To:Subject:From:Date:From;
	b=Pr+eBWypFT4nec2EJO5eHTgMt8w7bEwxMJpXckgU+oyowMs2pOmrssBWfplf/XDSr
	 5MtDDFoP34v1x1br1Nu9rBJ1iajlq/GhAjT062jT0PtiDm9VTa31nGk6PZskleZRD0
	 B/IB5rXBiWTAJQVkmsT1kbQii9fWBJg8grU/pFODY3KKjcoI5p3Bivd2UURx28pwrz
	 BxhQsKnIpmq2a0hV4TNxuFUFrl0R3kNOuiuNg/0/5G4c2ksX+dP2wVtRPv223I0mMa
	 KmOX4LJ8OmSYdeyF2t3CUMHkDItg3QaQ3K5ZQJigNTcjbCQD7Wj/dO+IQ6wj56H/jk
	 UxRhDbaeNzvOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC9D4415F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553437358.31162.4859449365782890891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3f5cbe77e96f22b6df1da97c8e737024714c799db9d2f367aeae0cdc8fe798
Date: Fri, 12 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765534373
