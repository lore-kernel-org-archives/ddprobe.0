Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212AE13AA26
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721330754; cv=none; b=G82uKo+GWdSQaAzGruyfO9AjyX07xTYsCRGCatS2w7SRQfBc75vYhKfJPAMEuhDCNonFbR1JJQEmcFqWWJ//6S1FF1xNBZ8e3pG8NuVD3HkC9RKUhXMUwRkCG4NqVujzpcFy0kFfEldiCOwXv9vihHmy77VR1IHVJEQaCo3gz/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721330754; c=relaxed/simple;
	bh=o+UGY85rumTRi54WUzMNEaClG0ra2LMUvp1njqvYUCA=;
	h=To:Subject:From:Message-Id:Date; b=hJ329JtudB22uF8GFQr+BJ9b10I4jnFoH02iP2Ui7vWuRfNQcruRbC46HYgEanVc0oc4toN1jfDDA364YRFs+Jnnnl68J0x3aISNxb6ndrPu+ZFmOHA9EdjsvfS+MKZpueGVUteWerg3f+Lrii1ro6fIjrkmGjD8H94AAdrv1uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V38Om/z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V38Om/z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C3DC4AF11
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721330753;
	bh=o+UGY85rumTRi54WUzMNEaClG0ra2LMUvp1njqvYUCA=;
	h=To:Subject:From:Date:From;
	b=V38Om/z8jrjt1Yrfs7l7mVqi9VUkmR5g4yDqIpPveAcB4faM/96iXReZxeatuPpbS
	 Ap/eotemktF6HvYANngIkgP8K1YEufZk3hTTXe/oS9OqOmeMltK1QipNYKYR6eKiwR
	 6ULuwnMtke9gHwwwoeDgRKTTdk9ncFZcenVz9JuS+IbpNq0tU5iR5g5JakTpsQ/gsQ
	 QWIDUPOJstuU47kjBH48AFmPcjFVm6mIAAXsJbzgLbpyNOgqvaxy73kj4SmiUq75QT
	 aSeYgjw0Zdc1Nhyi2GYJg5dP1nRNFEwlzhUZagIMYv/eX80gaVdvOsXPTjbr+7sQJG
	 xk9XGn7V2cDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920DEC3DA61
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172133075359.961.6019117423121987765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823e389178901d830075f03c6b3cfa8f5628e6002fe4e03d5429f291460a241e
Date: Thu, 18 Jul 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721330753
