Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504BA155344
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 14:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714746143; cv=none; b=QMPjZvVuFDCnwZlA6gAhFnN3/QIOvmS316gp1ud1bqG1RC+SE+iMUKpIIyQl2H2WNO7LpHXZ5dX+rzS6ve5PHUCmBgldLRLB/IeCsr56pQZWSdTwHU3q3sJGDvKuaOER3AQT+ybvClCMvgetZUmOMTg6z0JRyCeBtBvJHHMpbx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714746143; c=relaxed/simple;
	bh=gwZeR0akPFLkh2czrcsfm7YYPeuY04/HpMUo9v+nfq8=;
	h=To:Subject:From:Message-Id:Date; b=YkAk+WwksvtrhsJ0H5NI1fp3Wv1qoqebIWdW/2oDiFjk+6vOS6jUklPuZiYLvLPLcDYtiPjmLJzu6B+OIygUwDKNGpPbrvn4qN3etBpgP9Cv9oX8dW4hkYWMWRsXZNp7Mf9nNdTqHgMz0E8C+5uyEJBulfWJXpCD3A1VIB9riq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3QAsjW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3QAsjW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB785C4AF14
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 14:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714746142;
	bh=gwZeR0akPFLkh2czrcsfm7YYPeuY04/HpMUo9v+nfq8=;
	h=To:Subject:From:Date:From;
	b=W3QAsjW2OU+Z4KlNJvbFbA6ichgeFi+KxqKaNQg1rH8NoJxgMCKFzBfrxPvk72pTD
	 D5F9WJR6H07hT7R6sWoT0ETdnZp6uDLbPueUldM1tGR07O3U40AVOJYieb8trXs8zX
	 J+EFNLJcPJcb9pumDO5MDJGopyPrbK5eFYSIkXdc2KyK7VaupGhQHG4H2l08YRERwk
	 QehVyVG06XuaPkxMPmovHmnK4yx1YlXk+mDKfvoo2zf1oeaskgBs3707gRy44+yl9w
	 GpMJnwj1aG3KoF2W1hN00O+NrgQU3SipZn1suSEtx2exgGqogv8D15Qv/lgwPOqE4s
	 4+I67o6EhlLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C25DEC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 14:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171474614278.6223.10399547933470196939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b207392b51979143301888705bae2d4c10d05abae15e617cbac01f4374316a15
Date: Fri, 03 May 2024 14:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714746142
