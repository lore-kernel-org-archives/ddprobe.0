Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C131DE3CA
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739111754; cv=none; b=nq1959JkNjgiKx6lAV1pwa8uDHNHgrMsC6Y+czg7pxl5NdJVBBKdgr/lfptkk5KRmfEaKlFY2d2WhZlzAYOvtex51AawJY4O7McojI1DHcHyQcb+s3vryThyjFe243P9+I1dTqtf6NuvzTpxPpk8wbApImrGDob/GqGtINxFZyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739111754; c=relaxed/simple;
	bh=s/yV41H5fVZ7jmaErH3AACbThh1Ss2z5RAkffcNH8TI=;
	h=To:Subject:From:Message-Id:Date; b=UjeALzCtaPMHTHal1GU6tgvU24ACvbzUcJppz56XuiDRrnbVstSgs/ieH67HoitoxZwwbtWpscuYkFgvV/OAAbi2rB7wysnYpaPCmN0IKdukl4qhUzdkICL4R7TjBlXbDK33jXmmdbMTtpjtBXRsAMdpBlkrc1KSKvd4K7yXIKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c18qfCCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c18qfCCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC7AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739111753;
	bh=s/yV41H5fVZ7jmaErH3AACbThh1Ss2z5RAkffcNH8TI=;
	h=To:Subject:From:Date:From;
	b=c18qfCCizAHjEv0qhPRCdx32VAq/xLmHQUaLbAnKCSSNdKIZaUiM4du8pbUz26HKd
	 X2Bnfr3KuxkDz4pxw+qUGsmmqy2j/EW4aGyqHKPLy3fDup6FIRwL2uGo/95UUBB5s8
	 mw1EzBBW5WLJD4xfhgcQZZTYp3ODv+9dK9Rh4gUZAN98Hs6wkdOoJ6MYLDUSoNtN8a
	 HxbtGIJbqzBz2AZF26QwLqhm6ebM02z8993iV2YPCwXbLRMwGla2ZvbP0Tpkupijr6
	 3JHr12HsHIcUv+g6LBfw1WWDEXfwFb2CgmQBSi1iQ2IAN7nHysrk4+5SuM5geG6AtB
	 Vfx9BXCAUmaUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F2AC02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173911175362.19238.1763411263535404002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567b0e73486825844eb6c2ebaa02b9c83ffdb6c9f6b1037f6130474c4216b266
Date: Sun, 09 Feb 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739111753
