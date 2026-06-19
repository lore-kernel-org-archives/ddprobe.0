Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7118E3451CE
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781898994; cv=none; b=DqJEUN2xEzN/iYEJaAitXb3IKeL7Uixjlj4ir4XLIf3nWjcMGLZ/1yrTCytWxZ7i6A1dF4W6Mt1fTr7v/Savjq56OEmVVuTAMysRECRo0Sj+9b5mNrsxAl9e+Kplo5iFbvD1zfG3cy/Et3LmPFB7uIiBCETgQb2Mknwz2ykgihQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781898994; c=relaxed/simple;
	bh=rcQ6D2ZRDOfsUaSl1C+XW66G2h4QROvl+zaLpF8Be/c=;
	h=To:Subject:From:Message-Id:Date; b=Ud9m9TOebBU3/p2bbJitsW/dhX4lw/LovSRXVj45bSjScI7cu95IrzpUyL8kum8iv+ozaFB/14n5bGTy6IsI59yPNYuTqgFhkzStUNm7BOtHuYvkFdwdnFguzap4QnLXfrdHXVsXqo6qdHP2WK+x+Fr/lxQhWpeRcUvycdnSEVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DETPtm7a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DETPtm7a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F8BC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781898993;
	bh=rcQ6D2ZRDOfsUaSl1C+XW66G2h4QROvl+zaLpF8Be/c=;
	h=To:Subject:From:Date:From;
	b=DETPtm7a8g1qCVkAJ4y8f9OLv7H7kXWnYfDY21FS5rjUYpFYwagInehLdjIBNuZNK
	 y1zeLQnVypRkqjeLN5mfUtp6TiAcXzyFy1TsRYltS3MPGhfk9cIFSsKrZP5E6/pgX4
	 uOeC7jslVimlfb/zIDAqsDnsFgdD9BTa5BE/SfjVRw4/QiRVIABXfIFo+CE5atgjL7
	 TKWiksCfIs4Nc1luxs/XojsmdvaG8vyr/S/KTTOIcwlmZKj/ua2rk4Znx4CJvwzKP2
	 OqRkh+ZNESNzaqEVEJL7KUntr6pOusp4tNdcul3KLm6QK9NSH6N0U9glA0CdgPOeJc
	 mQRD6MIGL8eYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5D4CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189899370.15764.5627573885548050420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ec31102732a5b6256bab73fb7bdc9a92da7e2491d76634e6243962a62fab06b
Date: Fri, 19 Jun 2026 19:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781898993
