Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F43723395D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782544714; cv=none; b=ZXzUt8Tj84YV/27BJBSJ217z8AiawRAJMZwNqFybEkihqsixsujKPC9RHVZayjBD5by7SKhhpp1l8gwMm6K8XRQ7vvQo/BD02w5qm8n4PMPuT2hCCmBU9bUPJ4Tnsi1Kzhc7tWYszna5h3Ng5aRaifR6PKWLEdZdfJZcbsInsOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782544714; c=relaxed/simple;
	bh=CsS6CLFCNEbR0z85SUwC1ttXrTLZXcrC39BgU6WwKL0=;
	h=To:Subject:From:Message-Id:Date; b=iDU4kLX5kDi6t+XOh+dsj5M7vf7DxhvLiiPsJOoaDleNbYETkoHi0zfXbulUUkUEfcSMRSwqiXumk2WIFAc3sfhW8UZ20ENLsLxzmg6cqP0u0BYW+YibkT5b7VUbuC4mvx92nfayAHRNB9k1rHVIihmpTaibBdHQgF2a7ER7KsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry9soZeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry9soZeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB43CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782544713;
	bh=CsS6CLFCNEbR0z85SUwC1ttXrTLZXcrC39BgU6WwKL0=;
	h=To:Subject:From:Date:From;
	b=ry9soZebBzkWSEQA33XUm1tiSjvf/PzBUnBqIzcrXDOMeh37ACZTvj+ZKq/NTVLfj
	 MiC9+NL+lC6sJoyfugUhL/w40PtGRCUxfrcPGyY2gcRlxlFJoSkwu6BYhhCvQ6Bjn2
	 uoeO/7P+crwotdRhTHUAeBdiDRf4kSOcU39aYZAuifJ6TaBssAZlAxwAtcYjBOYEsA
	 w8FQs5VcScbpk5cKMrKlsS/ijhb8d78+HmUCLRU4EMy5dmYqlLdMw5vPsyTZL/qpAX
	 TZCXHEGaJmKOLfh0p9oH+0yQi2BORuIy14oAr8dBg9Xt9PGTmDaNs8UuHVqaWXHve6
	 aZvO9e5UoYeWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA49AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254471368.28022.16162756701747980253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a69291ba8735734ecae1c03f4649a5100d4cd0f4fe0a92e5daada19e2596f16
Date: Sat, 27 Jun 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782544713
