Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151AF382F0D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780576474; cv=none; b=dIiPv/iZR5LCALP+djs+CiU2VJuG8HrZfHKGcYs19j6tjlPkza1ticy5LDyNCzuq2GBPVtirfPFUn4zcs2H0eQAuJLbgwhAEpzaOadXu1XkhyILqhzDSWta5+MYBP7wxF3bwBfo0GjPm8uJDcBPKGWjqjYuFJUkAmZcgnpPyZKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780576474; c=relaxed/simple;
	bh=cif2xRCKjpXGRBRNLFMxaAHbUdtU6b7joH27RADtNW0=;
	h=To:Subject:From:Message-Id:Date; b=QYkH+Tsvn+DwlDjDA/cevn4HsoZ6MfaCV5LCanOyKKH71aCUd1tpUZIULrFjvKIRJalYFrbEt+PepHyEH7Wue5C2SkBKgNKxu1Q3gDnChw5hewB9qh0e1l/M11Ij7zEo8TS69a3ozNrHurCMllB24XBWqDneUBmhhDtgSITgARE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYotuN32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYotuN32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B97C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780576473;
	bh=cif2xRCKjpXGRBRNLFMxaAHbUdtU6b7joH27RADtNW0=;
	h=To:Subject:From:Date:From;
	b=SYotuN32DNf/OZwbsw8EfrPtOpblSURakmSlZYKkxCssIDEbvwVJNbnSmTmXhJNg+
	 c2K0z+xzGQzS2WHGAeea95Tu8N9HNheCRUyLnq8HqysgCxrBLkefXK4eQBCQibjoQ3
	 7K2GEksy8aBKf1oytv0kFSbZ0Q4pBQsUfE2eI3xY6/2s4btfUNqGqlIs49R1JYt/vB
	 0hb0muXDs/nqW4bMCr55e+Qk2MFk3j5sWQVkCrWdcup6/Pb9X1SINn/Ix1+PBbMBCg
	 GTAs/wHl7sMN+YSbuHQY2JOkCcuppeEzZAMr6cwUVtP7O7++vaT5bXeDijdpWtvtB8
	 uNYORSrB53YNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA796CD6E6B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 12:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057647368.26036.13281163284742896804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2456b6a4500ef1e90cd23bfc73df9d2b7d5f639dd367e74981b5e3bbd8d1031a
Date: Thu, 04 Jun 2026 12:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780576473
