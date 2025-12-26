Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D0C21D5AA
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766715234; cv=none; b=bS74mmoqOdsxOUZyjQOqeerR00NQrkBi31QR7MYaKOexUzJw2bnYNu9yro4/ujmhV7jX9lHEzK+keXWwTqLiyQF4idTxG9T2WZlbjtYDF4EaWflKSbNhM6TIKnlLAvNtcZeUC1i5/e+kR9OVpi1sKcngN8/ebiNnjY2q/yNov/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766715234; c=relaxed/simple;
	bh=dBAvh5G/NV/AjBL6sAnShqDWLhPoCjBngg7m7cj1W5U=;
	h=To:Subject:From:Message-Id:Date; b=cy0RHv3TWdx9ZmnPFdKCkIKtFw7CKlz32byb42nRaEwSBnjF6wR9UgqelZXHBxk5Y4ayYqQDSRKr+OTdnVbMy6Cs9TcV8b+9QgKdNZRR+Xv2orSEPJL/H94uCCL0N4cwYGacknX7+RDfdBKaodUVvvGs2qSA6BMmNejrCsemE6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMacztAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMacztAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D3CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766715233;
	bh=dBAvh5G/NV/AjBL6sAnShqDWLhPoCjBngg7m7cj1W5U=;
	h=To:Subject:From:Date:From;
	b=hMacztArb6kHnMUhbXTe5L4H3MxDeqcRoQ0Y/TZzjjaGvP6eIm81kQ90255yVJa/v
	 3GlKOeJTSFgrNHoOXGJI1mEHP9jN1cbk7Qx9POtOa2oPmWwvYoelclGvfOWZaCS6Dd
	 HxnYUm+EgIJJ55+n6k1/OeS7KVJF4ZC4gBnKXCyGKj2/w3JJY2Gr0k5f7IEnEcnAbl
	 iW96apNT5YAi4ozFu1lDU1hhwqqNqUwZg+V06P6oT3iadESYJTb33ySq8B8dWa1v2i
	 STei58UB9vLUqgR0T976mc+L2Zh6jklDl9I5DfImgxpzVOdKB5Xg1RKNSoRIKSstED
	 QSz+SFQKpYOZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F7E7AD79
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176671523359.4601.3954941702381831910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ebf24701894a2e88d0380cc5f1659b311c95c53771d2ca1198f91fde5887b0
Date: Fri, 26 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766715233
