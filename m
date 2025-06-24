Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4AC2C325B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750780794; cv=none; b=mjlML8wuIb8HrLc1P7mSD9GTnFyBeDRd4R3X3cvTJ0MggeKci3wKhpsgOfbewl86zMeKgcmMSOoAjPiOh0VJ2fUg+V8/O/goAYqhPadIuglfSU3ZWybaI3oIiurNs+2jfWe+E2cbFYuA/cBAZD5M6irGdsW3fJgzaIaRMxD20QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750780794; c=relaxed/simple;
	bh=7SoCx4J/MzJdbDe1wL1SC5bt/0hcaM4POe1yxpClpXU=;
	h=To:Subject:From:Message-Id:Date; b=HlTxYte27YL718jHVIJ/K0Bl2/JHR82iqqLLhEaLU1onf/Fu9Gygrmi3q60llpB//kCNndVjYZK2h8zW9bx5zPR8hi1lh6buZQtiCMdQCoZwkD7CQRjkAgVqCdzQYhcubGVKL18B8+VhzR8DJwYbcyBsTESKXvdoVIjqzEGV3KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udiB9Na4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udiB9Na4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CBAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750780793;
	bh=7SoCx4J/MzJdbDe1wL1SC5bt/0hcaM4POe1yxpClpXU=;
	h=To:Subject:From:Date:From;
	b=udiB9Na4ewEkn1s7JrnRdkhv+7HtUUGEPMYJ+QDAaJt5ZC4+DgN3LL0Q9k0SCGN/4
	 yPkq9xq6vI1K546uZxWyNS3cmGsPhQC0q7+DR09BPPAMizeLvYaiOCqtYYykeuZ3yW
	 PT9PPeWR+ZHzcSk6cSLT9rUHtfArxavIs1wy7n2JI5H/SDfiaIXNRhEnzJoqx85t34
	 E0gRVxo80Cjf2amdECPZlg+8WnLm2N6tvCHGRQBpNoD/+7RnMhCP+yJipMe0PzbxCM
	 ZRSL/zPt/8eIRBP6x9na2wxAkZeDbwgDDZk4bUPtrlZw4vZ5/2v9X0lt8PSPRgoEJs
	 tjHKYFy6rPxpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E38C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175078079357.9491.9716941499468389687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4663aea0255ae1dd55bac6eeb7ab79513dcff4d77572261b0de43502f162fc
Date: Tue, 24 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750780793
