Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB365695
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762674594; cv=none; b=eJ/E0UNDsIfrh6YyTUyk/2+cXnZwZieKQkjUtGiIQ1abTuONPl309Bpev3FDHvYnKebglwZBsfiaq37o36TSeopIc21Gi7eNWBLt61Wft3HlkHkzvwTghto/TlrJKhwM2OHkgkGCco51bztlZldIOHRewJRPJyS0jiTsROd/lJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762674594; c=relaxed/simple;
	bh=gL4P8D9DFXtba8xLDeN/QmRCbrVL9gD5LHHTNFrgwvI=;
	h=To:Subject:From:Message-Id:Date; b=bGRWUVMXhgTFJbgBOT7J41GbP6FnEYGRQ+IRFMCiIIeScLAdYF3ZFm746cqkdJFWQx8Q1eYpYsp63KI7lmu3lKJ+ao4GV+LKxWix0MGUuQ2B/1WDv5836pVvsyINlyCvLpUimMwHMj5+yukkcNErmD/6HbXXjoWzVhttABcwDoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLCDDFVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLCDDFVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33AEC2BC86
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762674593;
	bh=gL4P8D9DFXtba8xLDeN/QmRCbrVL9gD5LHHTNFrgwvI=;
	h=To:Subject:From:Date:From;
	b=TLCDDFVpmDCxme1S9BWMgBaRc5z7Jc0wHazc83IPrDhO/sVFyZMgOesvpGCZD9Qyd
	 ueqsWuhaKo27ryKbXO3OnpL4KbvSb8FToLnIoA7dKwuLV0MyBAdaPGcxd5LI0i+f+/
	 UPibVrqUF+mpOBUWxnYqi8gVEjYBkIgoPqisFZvxVT5N2yz4Tu+s7bUrpWxWm51aD+
	 nowQ1iJQDFFNfwD7wxWDD3mVmIJnDfFpZrLu/v3th0xXHG13TwXiUqEl13ozw81JfH
	 qagEmoEyPWFDcvUT7Z2v8qEL1TcxObNgYiuUZ8pHf68ggscY6GqspH/oR31B2WiFPl
	 fRjlsTtWc2jBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A96CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267459357.23420.281013008833544382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f885932ce600392c792d48061995a7373be97bf1f46abd4e02d9fe689b53845
Date: Sun, 09 Nov 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762674593
