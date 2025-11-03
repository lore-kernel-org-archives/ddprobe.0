Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B931313E1E
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762186194; cv=none; b=MS1C9euuwBi+gMDop1hhxkxVAx/zA1bLF6tY25gdlSnJcbWN1pKaQHe3rK4+unsmLr47JxaziSpHAB4Lo8Gc+6P1qbXI8G3pCWQRwAYmejeP2LqWzirtWoEAneNaGPXFhlF54Rlz9+jJX0A0t0eHMnI86yjhvzBAOmvtaFAEJBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762186194; c=relaxed/simple;
	bh=ayqOiDTAGO1t+9qLTaCZDBHqSQS2J+Z+Kv9u9aZIuuE=;
	h=To:Subject:From:Message-Id:Date; b=Vfa4vBbSN0vWzLTrVZebCcj9bXIAgVGzhyMRkmjRO13rBm6Yhy3LdbxZeJAvY5HO/SudwsBRumiXKblbInf7p+QaXQV+075OibLucOJYo+BFW6ZrKRwtqLVR2eCwn0leU+cCMiQuIoosDWEHj9yR6/8xabmVgkJvA3HriePohyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMECYRiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMECYRiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7C5C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762186193;
	bh=ayqOiDTAGO1t+9qLTaCZDBHqSQS2J+Z+Kv9u9aZIuuE=;
	h=To:Subject:From:Date:From;
	b=pMECYRiRnN0pQPH0bYr7zit9WhYlA9bnYLx35NfpSBWyDsEh7NBr9lpjw/XJgrNhC
	 xpgPN/x7Z3/CEAkuDzUwupV4/KrM33y9rneOB8DJ8fCmyV2e12I2U8ac8ChDWdFUdc
	 Pb8gjyIRR4ED1ge2PrJHZ/gGkgdLon7VAXhitP1bPOSz5lPzPumBRIyKTqsswfrzWv
	 FWcFjzWrdmDdHTBCwwgW6QUOKxEQkaBLxwutqBzXDxvOj2UBbW1XKlGaMRH6YFEsNa
	 En0ruxb8hBJ3Upe1wi8D0TtoYnGXLEQzcq4mj+SI43Wv3FxnP/xT3uYT8/vRy/IKhW
	 nl99UckHJDBgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F57BCCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218619357.19540.9826310159432819489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1873bcd72b1c0387df22b8e50bcce96d1eb810340836df7a6fe08b80e2024337
Date: Mon, 03 Nov 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762186193
