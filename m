Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C65D225F96B
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854893; cv=none; b=EKJsvl7oww8vmZuhz36gAU1Qck16j359HraDf6kdNeDQY6ETZbLvyhL0cFGqUxOaqs8VlH3v57hxTw+3bsbv8RwMdbnn83QYCA4TydxMI+Y+Ujnpp22BTlJ2koc7vaW6a1aNcWuGmWltaUPe8g/SWyKdW1C+fc3BTKutnwVYMHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854893; c=relaxed/simple;
	bh=9gt50F6v40Y7ZcsUDNbPf4HUUZcrHzrW/mUV71+F3aA=;
	h=To:Subject:From:Message-Id:Date; b=GrPVqi4V1Qj+mQwNV5v9kPUm8xc3QGI5bfnq2kKoAwCfSaLhLSveq58vsMH+HGID3gaPfS89n5BCsTUccj7HkcxlTrRJsf5pFr4X7kjvn8j4ISLuG5ovg+PUg5i/5dCLc5CbxXJ5NuYixG1HkIzhJ+mZc+dfwq5a4dCAPzespdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXvGIiK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXvGIiK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04F8C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771854893;
	bh=9gt50F6v40Y7ZcsUDNbPf4HUUZcrHzrW/mUV71+F3aA=;
	h=To:Subject:From:Date:From;
	b=AXvGIiK/KNIMezTmyL73aV0B31/5Aa2XCbxZQ1PoQB9I0vjrHSXh/lRuyPEbNkPuZ
	 bk19srsx5INmFKD9u0wFg0n77cNBF9hAhOvoi7mFGueUdh3/6KFXX4Xm739ViOZCZu
	 Zs/fRCHi+QmQLAZBNDMsI8tFtzqmG/nLBrH96Nr0Fobw3IFo+j5SkNr56s3CUUNEys
	 hWJWZzEbEq3w6gQA77yM0qWK/lucodwflQZoXzh+B756ojdsRIg2nUr8zT0hZgPyfQ
	 2L1HqHEvyIjDD8NodCD8oKxyY2SknaFhVoDhop0zd4k6/ePk27HNLGtjHIXxF+AwSh
	 YymbmDNtxTGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A0AEA4FC2
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185489358.12554.14545381880638272574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69434fea3f463ee1eac7ec06aa6f9e44d0fba82ed6a6378fc7cbef4a592ecc2
Date: Mon, 23 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771854893
