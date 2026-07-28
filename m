Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460652EA749
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785205234; cv=none; b=cA5t7+lKBCFB4jSchGhuzgNyrd8Pv0CJQvV/TPwu8hlbYSc1fX+nqkMwh2juFsK1LR2FIZLzPilXbnK1N45tIuNGKa7NYqTK+b2CIA/04OijDyYaxDbN5eQtRrDSExNVvaq3NsrLvXnbl+0Ar1NMkUWmbwOJs03N31BIDb+P8cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785205234; c=relaxed/simple;
	bh=LIs+NWuo+BVXXFv1QC0+AHZS3TESo5s9oz5H3kAQy/g=;
	h=To:Subject:From:Message-Id:Date; b=ZVbsmo6FOQyOMp7Q0Vl5B9kzbNKWfIfLykBL20MnR1ymzRZw+RV7YLksqkK05UEqYQ9X/4euM98V09EordcdjwKKiBcxccSwx9Ngfo7mDkBbyXlwFReOllTUTiPXJMmqi6j8+m6MnIvTGDCjP1Hcd1Tp3T0TxKoyx2a299NX3Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjTioN9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjTioN9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D580CC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785205233;
	bh=LIs+NWuo+BVXXFv1QC0+AHZS3TESo5s9oz5H3kAQy/g=;
	h=To:Subject:From:Date:From;
	b=DjTioN9hGAAmQPwa2Z8SOCXb5DJqs4OKkOIB332BNUaFD3H7/lrtD5A1O9y9fVVEw
	 BTbrsyRojNLG08SwMlte3if5mKFHn0TTLdhr2QDgI56QBhgi0ve9cUhrH3o4Wt6Ua3
	 I/eupuYRaOheJ+oEy5dnH5ijFKitbscXOPEcS+pFCWmK9rTjWTvJQzBJNSAL76fPlY
	 4rSBRk3fLsRLw0z8rXMnq4HpY5jje4hOJ0ZtuCGdNzYb3TvoQdrzF4wh9zpLRzPPFT
	 trrmHw7meXS1TkPrSV5ACRlza7dvjT2ZeDLK9V3xATgz0V/E4Ue4EaSv1SzySjGY15
	 w56oMxB2AN87g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB305C531D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178520523369.31052.3797070798884966858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326d6ed89dd86b4d2f7b8e2cda12c4dc679ad446a969200716b1e2d240d774be
Date: Tue, 28 Jul 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785205233
