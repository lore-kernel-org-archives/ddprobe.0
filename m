Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EC42F1FE2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751249994; cv=none; b=HZDBri1Q2ZSq1QSdwnOlzMbRaArVD1Q21QzOVY1BlRzn1fM9CF0G3czsH7av6pyJ5mUi/o3cUe0FmEt1+ZfMHH6rdA1ExYAeMtRQhJoibvQPXBcGIk2O31MOMfUCn64pSPv0R/w8j4kyfakt1E6/u4drYfoY3abvD2sFjW9MLAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751249994; c=relaxed/simple;
	bh=U1L4gW7Yb1x3eCaU/46hmHiJsgg9kzaJhmDPj3A1Ia4=;
	h=To:Subject:From:Message-Id:Date; b=GqdTaVDyYTAO5zEWE+NiGKGV17nzh/z6Ye8bWlnPqqQRceOnCx34Rc7psPrh1yfjffhgVor6mwN9SZzIrX2pVi44PV1L8fU6Nn6FjjCb+iQaKFtclXCpftKnHjMtOmBAwyd1axJn5Qa+8rbzcTJvC4/HDnQLLE+rIKSS74FWE20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0iYHKg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0iYHKg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2745C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751249993;
	bh=U1L4gW7Yb1x3eCaU/46hmHiJsgg9kzaJhmDPj3A1Ia4=;
	h=To:Subject:From:Date:From;
	b=g0iYHKg8Z6/2/X872RHMejtGAecKVsAq9gFMkgn+s4QlEjkWg8QL9R0U3wsUy93p/
	 Wqdndu8eVl2MM9Swlfj07f+PnZpBVXLSf8syuYrh0qFFZF2K8oniNVHXUS5v+TTqK0
	 aquixUzDLhudlpqNSKqmFJLGTy0ctmgaFZpINBt8Qt4m3ro/WnAe4uLME3+L/wSibY
	 FNyhOAKFg0PBFPRGYZtdXHOJRlp+r+fL9dPmBb5q8nnBr6OqlDg0npjP+0EQf3i/Pv
	 SSdzQCWnW4eoFT7pzJ2wKiGFb+P0spt78KKoMf8zGZGqhBMf7cllWfgjh48FeMTXcH
	 UXhxArtr1DheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1BEC7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124999357.13554.5076578989331758496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e5939ba164601d2edfce770b1a6a1d987c0f10cd0c2873dcb51ed85d83db3c
Date: Mon, 30 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751249993
