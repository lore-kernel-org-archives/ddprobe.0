Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DF33E478
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716918863; cv=none; b=TxnPVNoxTdNsZAlaYOorm91iKGSd4NREcnnyzacToqGUH/wZAQwxxxgY8EC1RGoMSFUg+TOCcSMLNKqugy4LyFSmrAWALO4BUQDXDomcjlrvCpePEWW09Ct00SoaJneSCoLnYv6aohP9tBjIBBRBy/niGe+UEaOj9JEmxhPYPrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716918863; c=relaxed/simple;
	bh=f6WXSHPhkkcsqTuZ1PQXuRImgW5Gt3niMus5c1kXh5g=;
	h=To:Subject:From:Message-Id:Date; b=I3llVR4NVvGwMwFdTFNMsWgJhNlRkl1QlqdGVpUxo6upkGTUnxzNXpHk2l9L0aE3EurwwpZ7qRuq/B44ofi7ogH5pRhdOUyTzVDs67G2OQOSGT3n/Hk7MfFpQe4MwjzT/z+/7aZl9K0wGlPhVCSfUC0g2tBWa06LeEff/uQ3/aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jeim3GXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jeim3GXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEC7C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716918862;
	bh=f6WXSHPhkkcsqTuZ1PQXuRImgW5Gt3niMus5c1kXh5g=;
	h=To:Subject:From:Date:From;
	b=Jeim3GXXuDTcgQcTq/egucExtm2tZ1Q9Pd+FpAreYrms0mrMjZ/yA8vq5wdJ+ovb3
	 rtOKj+wIcXwuzB+AKCDgWqMH57KVs18o24WmOdOIbhO+8PpJ+qWmzhCK8ZjoA69UYQ
	 ipUGM4+UzGRn1GtY0kKk35cYt7bfVJn2tY3ku6mXfeC4BYpEsZ+IivMkqnanHrK7Qc
	 RigudVImOrf9tjqvehVQU5onaAgUOgIQEHIHWMpwuJnbQ53dJk0oA/KD7dut9HVtx2
	 UpE11dVEd80b73p9K2DVG9DQQuIRjLxZBrnIEDyrenIN8QdIlBiVK67muGiUxvNLyT
	 oMSXfVPP0KuqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC751C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 17:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691886276.10896.7138772175454613849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb7c54657607ed2a4f5183740b90a76b6806b015fcd93239ef2e55ede086b23d
Date: Tue, 28 May 2024 17:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716918862
