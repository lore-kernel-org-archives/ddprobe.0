Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B558041D204
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791023434; cv=none; b=rcIU8AXmNu1Kas6s1cpB3mX/OaimPudlmslZq6v1vbpH/3u0thNgKjkhbIxzwXEaBonocFz5ZIp7N4UGootw4vPYNPZWTgNiMQKHwW5VD1JouI7lL4vWeKOdxVOFMFS31FXK30i/xmEFDnz2IxfjTDlVYxSwAR4vA73iPoX9L94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791023434; c=relaxed/simple;
	bh=IswbraeEFsC6Ui7KlkEyUy4uSt88DLNnrYF5G5usJkI=;
	h=To:Subject:From:Message-Id:Date; b=RY4QGGa9z5yMcDORV87jHcLOv42lqEpI0UJZAN7i6HTqprlqEku1h1Lq2ER1/ssS6hSUiGj1GxcspSeR3oR4l/Hcq4fdJsINXjhW89o7gGZZm/TcTT2w0Obfm31kJWcY+qKnxPowyAyoKzZMzorwjJ3YVx2YKmKkokwvk7Up0WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JNZ9U6wR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JNZ9U6wR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB21C4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791023433;
	bh=IswbraeEFsC6Ui7KlkEyUy4uSt88DLNnrYF5G5usJkI=;
	h=To:Subject:From:Date:From;
	b=JNZ9U6wR7W/a5DjTe4noK5Y2+tyY4BKVp/h6TsfKMSDx7qAJTSZPU/GbxTpC3IrRC
	 kTR2eieTeA8xtUro/GnvP4PLDPQj3KAwbC45SAo6nskIhyM7OGyKuRdPabY8rYSrX8
	 v06t4yBJcgSV4NoFSKCGjugfStebi6gaZMHc8gAQYnjknxlsLLH7Q0tbVBnwir5r+T
	 l3uVV1SWooNzjFArauJX3LVRxSS6Vkh9JJfwHCZEKeB7ucDhpEWLbQNGk6/rBE8jYK
	 805lv+T9mFx6oXfJdTSYxlbaYL/QBQ7Y6bsW1iwScZLDsb7IGsJjSifqUJ51Xpv0PK
	 PDci1t/Hhw3uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9704CA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102343368.2435.12211523320200230640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacec9e3e933a9651e52dc5ca03be113d025552db96efd8753b600b0279f4947
Date: Sat, 03 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791023433
