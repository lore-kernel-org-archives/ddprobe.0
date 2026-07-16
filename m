Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02ED1410D30
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784200115; cv=none; b=OCBVqyKTQcaeKf9QEtNJoKReucggp2qQ8RwJcrP7Ldq3EzTWSPOHhsmptgFsi80Pf5RIpJwPtO8uxWSN1gwi/QYg68Ge/dq4UBsQdoPkHAr0/Ihlxcgip/3wVTKKHWiAA+KuckxIloGkfc1RrneV2cRdUnitHJaRe8JCXJKLUVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784200115; c=relaxed/simple;
	bh=CbKTMvH4DhFnDNQ4DD+i+eGOFZ+03zoIUlPOaz5adzo=;
	h=To:Subject:From:Message-Id:Date; b=VU8ku7y+jV4yccGuB1+xDTqhULYUZbVCRLbac1WJQWhlJ2XbMMvA6PHduTnmG9925rR3rcoFasMofqat9Kzx1SMZnQ2XUQUnK3vT0VwRowo2o2/BfFrZSwnYpXsg4GycPE0Rq59QdTZby/JX45gcR+lgUWwNL1Q6HwslDnG6ihc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAr4gdbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAr4gdbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E99C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784200113;
	bh=CbKTMvH4DhFnDNQ4DD+i+eGOFZ+03zoIUlPOaz5adzo=;
	h=To:Subject:From:Date:From;
	b=aAr4gdbOHTxjhHQXgMwZBHBfzvjEAAEraEEeLLpiI1E+eFSGzMspgCoeYfQpw4Dh8
	 XKGx9Gyk7aDocZHljIZybkmvfIQhn5+PpAFI7ap24ak5xkjgim1tCSI5C11TZnH0Gm
	 ZpaLEXSZ/32LYl1KmtHvLwo07QaVPlWU5ZN4D3pvQCM6zyA3kPJEsfT6h3Ta4SUOOr
	 vhGQozmD9ep/flUji7/ySwnbifdwhb0qT4M+32ARxsH48nWZETfPDjO+r12I4u1ovq
	 fI0TJQjis+Qg+KfWhLzMbT7GPCZDTVCUpZcoxAp5Tsqj5jZyzuwi91aU0dfdYrZB4N
	 9QUCIIAryZENw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8479C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178420011368.6506.14858143471525830322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9beb89e022f96eb497ebcbd50e727c1828a68425a3459c79756d05dd809cb4
Date: Thu, 16 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784200113
