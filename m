Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49551CD2C
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778474434; cv=none; b=RclyvTT/Gx1NS059QXl3q2+Z9SI6OICsa3fS+MHyEKSMuuSZwDib3DXE/OBUZKAPQZaRDCfiogmSdeGjjDTY9v56+/ftV0rjOHPs2KLbPh13By+OM79For8s77SViLKa1C+roa7h+H9s8ip5n5+ghWwg7xLWbMroXHN6xbpalSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778474434; c=relaxed/simple;
	bh=L4OPlOzUS6FUSNIay1wJ38dwa2NJa53rTND7PG2hb8w=;
	h=To:Subject:From:Message-Id:Date; b=kORnwZl9PJGD/P7bjRwKoo48+rHb88FOeWyY0oKy3cCGReCLRElVPQBSUHSj0NRdxYePy2a2oYsangvGYcY4BCz73D9EQJCE1wAyssWlKl8H5IkkJM0S0FlMjfxfJBIL/i6sKpgVyQ9/+d2SS3rHdWOegN6tl+j37pD/6tkpNTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhGeh78S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhGeh78S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDA6C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778474433;
	bh=L4OPlOzUS6FUSNIay1wJ38dwa2NJa53rTND7PG2hb8w=;
	h=To:Subject:From:Date:From;
	b=WhGeh78SFfIxD4QvLKancWfSWzjg7797Qr9KF9PCaVZ0iA/MJ5xrKDRJ5inuRbcDH
	 CjBazfzdLMP8rN3ISA5vJooa5ED25/VMFDjsqvaCIff29qNFhjq2tPc5DRRk7YUxyM
	 DSya1Qol99u/igOPkaVmiWUGaU299ZCFcZ7HNOuFlaUVqZYa43+uh86L57BjgMfX/H
	 CuwZ36dtlftWLHRyXDvLISA0zSgomqJezDRlvkl8m0OK1ngIZwlnL37LbXbbhQQ06D
	 sLDQ3amT3Mf3tFGd+ivi7TwkXpa+QSXIBtEZFz/zTEmogKY4kla/jpwNbImEf228/J
	 aaQ5wq9ilwLaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6BACD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847443370.31295.3973195903996852247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c4898d098a872d0b4da120a31b11667f660dbc954e4c90d34e6e7d47f4a003
Date: Mon, 11 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778474433
