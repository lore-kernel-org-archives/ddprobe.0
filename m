Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F1828B7EA
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764627174; cv=none; b=fwfaHAKyHQ8+XMOev6JfU2NWi8JSlTy3mm0bR1j3OgPhOkxkWL3t/dlqvATLtgmtICy0WrfmqvbUlg1XW7aQ2AtbMB2hxCg6mU8xPDbKA1KoYEkr6SQUZ5AgLIUzzqcmaRijTXn01Urox7pgVKJHaU4LBAzp6tEdGyaTXMdBtJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764627174; c=relaxed/simple;
	bh=sn4MqKzqslqlERiBow1a9t+RDrHmz8azFkiz9X4bVsA=;
	h=To:Subject:From:Message-Id:Date; b=iYgkP3MFxihiFWrVdmUT2xhSRWPBMcC1kp1Aprfg92BA8FDmoWs89LEQZ4BD3l34CcKHvWo6QJyVZveZA64KOHxCjQ1/+3OgCnW2mXy+sy+9nmxMe+Ci+owXoVjVc7EESEfeFtg9mZeQB5z/VLxhtkqC7f4p8Byk3rYRzGpWzDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjqQkxuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjqQkxuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1ADC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764627173;
	bh=sn4MqKzqslqlERiBow1a9t+RDrHmz8azFkiz9X4bVsA=;
	h=To:Subject:From:Date:From;
	b=gjqQkxuIvWCloQu9p2X1DBPiTpj4iQ13TkQUbiyXyylpvuk4F+MI6kWdQVMUAJy55
	 gTQXh6OP1my77G/R4kJHyKeYKoyyz8lh/WfCLAAQW8eABLcKSoKtqgLaCDtCbr2aqQ
	 qKwR+ycUIqKqTj3sIRh40QbHJRKtj0ebNeA0AvPZJ6LybkTHgzJF7Et59eK76/+kZ1
	 3IGyi3XVAW28PBSh8N5lM4ddLPhMaJ8WLV4q1MTnb/GYvAPRlFUCrOxo8s5Jcb21M7
	 eKbERgSYLgAE4RGzllGjl32DzhhhyZIiuvmiNmQGu50Cz+BuKc0HtuHRzCqOVrCwbi
	 xYEhTLEto5L1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A494D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462717360.15444.1912984277086233912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34266bcba0ff8eefcbcd2ecf9422f3481d6167fea0ab2048ec353fdcbc117317
Date: Mon, 01 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764627173
