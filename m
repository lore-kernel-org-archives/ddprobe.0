Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1100A21CA00
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758111594; cv=none; b=hhY6v0ZFty+ald7fpxLIIvcGW7vmrjqIIs8Nddxhgf20a32wkRHTpbCqxRzkvr/OaIqW4Al6oWbCsZuZKphVrMs7y0D+SaYffTDgHh26NV3bkWpXqPmGpR2ZO3S1GtxXdP9/axpoUjHor0u+BPoRP2nZRcftGKtQ+6EFAg0ApJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758111594; c=relaxed/simple;
	bh=U99Awckov4ZaEmTDoBOv7VBGgMoPkvzJfLWe/oPFRnc=;
	h=To:Subject:From:Message-Id:Date; b=L6QEgu+IdhJuIIBWXiMKiDvCpkFNMLg4ALZUoRvOi02ewm54PUONLN2UMjyno4vpjQvNcBHpuB73oVqKTfMZOGiUAgSaEBSBNeH5YHQ7l/xnjmGY+wC/v2MR/Z4xQc1WeFsgvfAUAYmwBZp+M6e+Fd1zldiSGTp1QKAuPuTY1Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckz642+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckz642+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD4C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758111593;
	bh=U99Awckov4ZaEmTDoBOv7VBGgMoPkvzJfLWe/oPFRnc=;
	h=To:Subject:From:Date:From;
	b=ckz642+3aaWWqFCkKcUzk8Jbs2n0Ckm1ztTePKsa6n3GzGcJv1SCLcjpVq6kRP4na
	 cxy8qKDMidZCc7fGoN8uO3iHLb4hgOwTmRPYIW3CwqehCEO1oIkDPJO9jjSHCmScp/
	 YqKxiKbSn5v+du8DFDFpecYXOuXAsCk4MVAGnULCoVvIIHXcwK/qLQpQbHwuIzSYki
	 kUCcc+ojTRbjRyf7EtM/BLWpVy/WtkLknSxfLepf/bnfKY3ttgzWlq7udv+DvXlalO
	 rsd0Jxd4CcTzNwDBZeYLPqQMgyXXRLXxIOJvNz16DvhwKGK7SL2/+PNEaK8hoemOG9
	 1S2laKe40sqRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92275CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175811159357.8201.4112611808232724585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10fade1861421050c78041733d8ab7ef8417a49f1848aa1a2cc03720d100bbfc
Date: Wed, 17 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758111593
