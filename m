Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAEA2628C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757810995; cv=none; b=Mc5M47/nz4oczA4+KsdJGaM7Z5iIK3byeVUaxFTnZkI+9Kv5kypo/ko2oT7r85+uuqOIDYH23ok1rvLSqYtIENSzWbP8vJiu6Y6WJRljtc3Rivn2lcx4GnNkZhDxu6Os9bd5mcd9aB42kR440LdafZES5U4ZMbHpw3mUQt6MlHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757810995; c=relaxed/simple;
	bh=5Ev20REEa3FDG7e6iNn1zLwXO58IrNdak1jZ9CjiS64=;
	h=To:Subject:From:Message-Id:Date; b=nTJPRkC8+dvowTrnSQU47BRKyp/s/bvmeyxC+RvVIIn6dOrIj9bFuxcdE9pQvAnKXElRYFmL/tXuO90baY3EGtEi4X58Ry52w/3OzNctUnMgt9Pdc5ngndN/doabQVi8k/5eomMCCvW8ZlfTTkaOSgHTMg3mSfQ4zpm/kvq1EtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZLlHCI3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZLlHCI3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5658C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757810993;
	bh=5Ev20REEa3FDG7e6iNn1zLwXO58IrNdak1jZ9CjiS64=;
	h=To:Subject:From:Date:From;
	b=MZLlHCI3JdUhzR/L44dyDkAU7ZMaK6cV9HzMtE7L6374ASV1CbGkGlqTYP7TWyUr8
	 MY5tR3Cn1KYSNFDpFbNAsVSYn84P+Y5mLSH6nUbIb8jvNFbnwZ/K3bXvo7QsmcS+Ns
	 UcvKYYCnzkCPc/91NflTyLSnWcmVf9gIZ+WVGc9y7H1Py1kGWwssu8WNgaTv5F+r41
	 CtiCEJfzo3WErkVZ/aGJbEgvZvHhvb9s8vAqidlecpxV/nw0KJIPZ1whKUdRYI937g
	 /glb4WIa1V04AS2ZxnLGlzlAF7330Vow4zE0EUFNBCspyv1swQCGuHYZfFSHGZohoB
	 KzlADZ3SD9HqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9260ACAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781099357.31287.6238155513010941932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246d0bf8c63418356ae57aca5ebe83efc1d301871bae03691462bad0d6e2ad50
Date: Sun, 14 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757810993
