Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536E3316199
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787675434; cv=none; b=T/e+cnoRzGuYAX5LFeVsT2/uRsOG6bvAg65G5D4Uufs5OP+BzNCeZ/8+w2L8BsiPZ5laM6uu5kxv2qrgSPTuszmuvF6lCXKOtM/PFD8loGhMU6u3zHyPwk6V+0k/+tuH2tQ8xwYzUDN3cGyGHVI7MOJja4ZZnEnIwC1gZ8iJBPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787675434; c=relaxed/simple;
	bh=uWdUjXJCi0c7OXRgdlybyAlWJxBrzPidLU6DSlDDYTU=;
	h=To:Subject:From:Message-Id:Date; b=AaXScvba69MWp13310970QF6E2qUN3siS3pM/JWY9qKPeD0CPuycSYYCfgUWSgws/CZfOrlT770cHmIYW0GNMm4XuqCgOmiJnRRt+GtnU04pEoKvkAHAerwL9pp1VpWIb4RBo4xA0w+e1IdiolxCjlckoMPM7ks/LxfAr7wqZKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTKPaxMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTKPaxMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5FCC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787675433;
	bh=uWdUjXJCi0c7OXRgdlybyAlWJxBrzPidLU6DSlDDYTU=;
	h=To:Subject:From:Date:From;
	b=RTKPaxMFoPWnx9wniNlg25slkP8CekJBbKxrH54fbqwmkvTTTrdwwBWuMYHRd/Z5B
	 CSnYrJ1w+hmN3DcFYtYwd5SM1+Ta+rxxSdC2C273lc8uoeI89QMrNuqK0Py6D8nO49
	 Y8iDobCnSIAnn+g2So7bIAvxvOIA5jQu6Tti85Kuaepg9PJFf7Jw+Z7MD3KU8fMnfL
	 ZeoUwah0qtQLeozbTxwvq9Nn3FoDvT6Acc1nuafM3BdghfuK/NJKVsuQbOWSIc/DAb
	 WOuqfGerHXKI273JeRBHdZBh29SW5CN4Q+4F1rW62C5gF5AUuuGeXOO4Coprc2BJsT
	 9RRx0lhVpwAhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB361C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767543369.10635.6132777169324363294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fdd418cc82f2772b0cf48ec4f0c99dba495fd5df4174a8a326b60ec50d18bed
Date: Tue, 25 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787675433
