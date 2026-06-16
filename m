Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3FF3C3439
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781628394; cv=none; b=B3WGpHNbS8zAxfFOdEdMP7EvAI3TLbcAFXbbJaAzz1tf0ELIjiOFNgzZKO1scMvz7ma3yW5QbmJgdPHj9uMkW3ooZ+DfJcHgLRwQMzwYJLfjQiQ80FDwhfJYXnh6F0xGvFPRkSPhIIcKhMobbhvFMIIdM9LLaYFUVM8L5iiVYN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781628394; c=relaxed/simple;
	bh=U5FwzqE5qSq4MRHDYVw+FnPmjmPUf3m2uZ+/UTxsOkk=;
	h=To:Subject:From:Message-Id:Date; b=OHM/S3FusW1Wrcc0xWv+FcM8VObjZGOZWdgG4ZbBnt2jcBMW9tlN95HnyR+XvcHc22VaDXhbuJgTSoEhC5+sTYEon27bqLe5d5eYAyDfwdooUjSLp1wsQh4WMedjd30CLEDbstg8AjPcnkI/1LU5WaYqa0wTl7x9rHmBMkQdFFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVzFfxzG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVzFfxzG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7BFC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781628393;
	bh=U5FwzqE5qSq4MRHDYVw+FnPmjmPUf3m2uZ+/UTxsOkk=;
	h=To:Subject:From:Date:From;
	b=lVzFfxzGYrp0gDBOIrIsZVs4qNhxByN0XknrPwGm+PY+W2Xbrbhxu9Zn6OfA5suQe
	 IHwHH3C+v8C1s7r9jy0UngFvwBmhZc6UNDcqMD82lfHdF1VnUeOuDaiS/AdCpNLy2U
	 x3rfi53Wnj3tlCD9EaJAoX0x7K1LEx6S9LltbN85yNUd7D9w0aKul+ZEs3UokgCIgu
	 UNoyBFYNpzJjuz7Qk7jrerLhlLLB1R7YoJA3qUZuLX7wljNu0qOfPvl0yQ9P3hXhTU
	 pFET4aDyfk6rTOUqJrBmOVQSoQESnGOqtBkxEgyKKjIU2rfgjDKie696AcszgMMFir
	 aejebvd8kJ0lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B259CCD98E4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 16:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178162839371.30466.10163206878412754021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3374198d32f26e3a65c368672e26e1da0e59dfba5fc2619c7d4bb0556907cd6
Date: Tue, 16 Jun 2026 16:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781628393
