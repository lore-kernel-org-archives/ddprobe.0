Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179A02F5B
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756606794; cv=none; b=g0Ib/l26LfEz1ejhQjI/oWO1BoAo3iCqotd04jiD9HEMLqVyyZ0Kq+H3NlBicSvNjlrVw4AsFWRng9MUIS1qLL33MLnhWeYfXHerjJdEBAT1e9D2/auk4wvgJdFGa9vRWgbtLpwMNvh3aRrM/oXPl0iRcenB7jfKtJS+XRgRGuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756606794; c=relaxed/simple;
	bh=UaaMnmUIvFcNYxuxAOsk+P88AmxkFlhtf5JBmfh4p4Q=;
	h=To:Subject:From:Message-Id:Date; b=eIYRj2HKS7DZJY6Tmq51TS47/5liNDZ+n4KTbr+8EMa0fPXPrMJFLX3q7yCIda3LHO3oFighsexUXwwHf2uTu0WdrvSXFpWDuWCIooBUFBj/RVtNSKr/5xDOPfHhokEL8B7nWkNhzyZdzD83o8XCclwbx7Zha4gcKohecejjpzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ia8zdmpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ia8zdmpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39DFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756606793;
	bh=UaaMnmUIvFcNYxuxAOsk+P88AmxkFlhtf5JBmfh4p4Q=;
	h=To:Subject:From:Date:From;
	b=ia8zdmpdTLqsTqHb30Eejqvk6MHjL9FYoacL9HGkANjDN20hXTppTt1BHoZTb/Yeu
	 9W0ahndjmDc3Fvnuwb6vgRzXpB3+Thx4cXFYSCuN48M7ivlFPobavx2XBuIQc0BCul
	 9xeJAxaGoe5DumRvczP77cKXdxiKHqvNQl0PRAYC3B8BkgH+V57P/XypEM4kij4mdq
	 6D4ZbSUvnhE7GEuThNDka+3FN2QwtLZkNkfc8S3zK6dtLN9hbtkVb9Tn6IopAcN0sO
	 WeOCR6EYz/9WZkRi1Wn+kW4DPDac+EeQm2QEZ09/3IAiL23hyfWpaY+IHnTeqwXn/x
	 Lo7veLPjs38Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A8CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660679357.11726.319113904530383569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8c8ef8000b443130068381751769f07d375e27bf33c9ee1ab19ae00425803b
Date: Sun, 31 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756606793
