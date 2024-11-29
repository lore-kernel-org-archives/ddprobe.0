Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DE615D5B6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732916154; cv=none; b=g1LlKSa6vOvQShG1kHtiWVeS6U2uVrMnB8uQRTf6G4kX0OF8ZYfrq2oMJBdpoSPKu3vzfpDF+bf0T/8J+SMryle3KEEBebU7d5bArBx4eJcdYMuZt6507L/dmAu4LC+/+R+RADxr7jLunxQWmXXhott0HmFmJpCu2fko1pNkc2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732916154; c=relaxed/simple;
	bh=x7W3AgCBhi1mUDJQUhJKhA5rwRfnHtTxsCPX2tYbLVs=;
	h=To:Subject:From:Message-Id:Date; b=fkaZum67aHYFwv3qGgNQigXfuEnydn3slNBFn7CcbYPKbZTM+BNJYxcFFLawZIlNXHX6m0MUOPXhRQS1BWqGmFLqt8nuyLI5vJvXoFbk26HVpRYVGxNBKNbEXf0yzHAIIZ4evcnDm0YDuG5Qs0+5Qe+ehtm8f8HXX6Avr4fYPNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGIr8rQr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGIr8rQr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB0EC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732916153;
	bh=x7W3AgCBhi1mUDJQUhJKhA5rwRfnHtTxsCPX2tYbLVs=;
	h=To:Subject:From:Date:From;
	b=lGIr8rQrsKe+88Qwy4DB02o1U+p7QO9v5vqDEAdC9Y7bh4Sl1g5qAIcvObJRdV/f4
	 vu5TLXqa3fxdtAowwjCcBj5ocegN5mR+4qlIaX+9yjtPJal3dbf+dEZvof5eIADwwS
	 zMTqM+sph38DMDMGOvEcthR5oyC9+2Fylw81sWk7x6iO+A7bKyKL4sGKK1upIGK4Kn
	 sf7x/Fb8j/NmD99lUG8D8E3s7e/rqNwVQ9+Ju6pLgJaA0RkAe4kNW9ZgAvyZXMlcVb
	 tRsbZ0xZE8Xbwj6LFNqWPDOLvLbrxMas+MTNvENHoOhITZf21JiPi9bLukVw/emnOZ
	 Pac1OquxrrWkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B52DD72A1C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291615359.27999.16884092529585299039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a12aa5ae27ff79eecc35941d02e8aace60beda7d14a252e2110435979fc4d90
Date: Fri, 29 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732916153
