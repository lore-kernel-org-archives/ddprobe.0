Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD842CA6
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747617594; cv=none; b=VLqBEcJ+rvtgkoQ5y6svRU99Z5TxOou/7DV9HN7FT0w+KDqNExvFrSexb1OJVpkRG4cPAhZsOplE9J/MpSb4S09lUOZDDxUN/oggkyzqWIQ1/FLZLNtOXSFrlBLRQPpZYznsJ2gDDxgUs3fgmWDOaTWlOOk5Cvy44cpv+Es3TXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747617594; c=relaxed/simple;
	bh=LV2HKEwF0XKZklLavslHptymAbUJ7zUKTggqFidOetw=;
	h=To:Subject:From:Message-Id:Date; b=u1VrPA6N5nVCno8vu5wAbmMRx5/sN/bLHznk3LvNEfOG8VgVOUbFB8HMEJVstX7V63LEDKzfEywYfwx/WA7PgKHKi2fVNqVk1letMMKEGmjgH3ySEwckKusqv8KomhGjYFx9EYm8gKVLSgxJN4iq+F1+pBjHyepmhcb/DW48bXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/YKpVmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/YKpVmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A797FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747617593;
	bh=LV2HKEwF0XKZklLavslHptymAbUJ7zUKTggqFidOetw=;
	h=To:Subject:From:Date:From;
	b=o/YKpVmrEiR6BH2MhFZKYxhQCFQSvETybCSzOa9mvveIaHgg6tppkViIhYA4YFcvZ
	 r/LeA/Cfc9B7lSPZhAHPsrjGwQAkvuU5gbsIsfiPkTmMNuA8+nHgfReQ4b2lhDUPLG
	 d0+2mvoHRKC35JjjeTsylKLj7VUYj1kHT+JlxuTxINFGdICOL/bkAIu5i3XKeublT4
	 an5qOKkZNXGcJQLjdbbPxMNorghJsv/H1D5xajYkgue6/+rNKY49wQ7MLe6MNjvKUK
	 c1lZ3XfycV1Bmiig70T8Hub9uX04kecQaWqgKaRrpISADWRHkfd5sE1egA3vfucHQd
	 L9Vzi7rcMty7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9484AC3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761759357.15719.5862410447638811866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a04667a9d6500605c405a0fca68fd3ac3c968606f5e7321dc245de76086f0f
Date: Mon, 19 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747617593
