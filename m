Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CF01DF97C
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769261634; cv=none; b=Z0mxwyQ71FwjVdbo6V89DNOVLHL/O+BmmvlMCb4ojYJGz/VPwL0179iMeLH2ikOra1nnZ8yOrIpj8Ub70WvzIh/T4SWfsI7bSUFwlkLg0SVY9F1+0sLB7R8lQIv6LFD7v+dCs5A198SaAe0dAM+qvimwGZHoS61ixU2eYCqnnTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769261634; c=relaxed/simple;
	bh=hnGseptCO4k5feGC/rWc3iIut+saSJ+CJbJTdYdMBNg=;
	h=To:Subject:From:Message-Id:Date; b=F8VaLaeGWAWFuDViHM5cU/COs5MCyunB/Ub9iZE+4CsgOLVGTOYTIY33md5Cur6sIOQA74yIqnL5xg0bE75HH6zE35+fgco9qS98jG/LaDNVEM2FCcXE90vMxBmhfMTya+8FvKo+623+pXJoWrlfT2eqHiVqEgogqwhkJky+xQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nd36YSzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nd36YSzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6527C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769261633;
	bh=hnGseptCO4k5feGC/rWc3iIut+saSJ+CJbJTdYdMBNg=;
	h=To:Subject:From:Date:From;
	b=nd36YSzuYdDMcBxc9WF0e/sm8d2ELR1dy5hmDtmRcPEdF2eZ6s4iAvS5cUucOoKe9
	 5rDBW41lnQ+abf6NicQ5UbKIFXDChUYsvMmfhQRfGca0WGGK9HUoPHiImiFByVIttF
	 gfbA2gcDeS+4phJimxRlv+mRJdHOwxHMbyYLwQzgIx9nhq1w/0qROYnRiJBYwcn6ej
	 +WksBSU7yXFIILbO0w+8qi9Ep4HPeI1caWXRcMwN1+oJAH43wPv9XszZ9o/J9CYnH7
	 KwpsStstfZ4mVs6YPmEq9GZ6LKOyLn5Q/qKsWqPNrJ5E7i5cStnQhVYE2SvXhhT8EN
	 En/jtQ0KkvJiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B7D715E5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926163357.1497.15980552848795353185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0413a152c9ddb0d6180e3aacfe9feebf178616b8fca128af0889cb62d26b0f1
Date: Sat, 24 Jan 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769261633
