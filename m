Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3719A1E8353
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743428394; cv=none; b=ZgHgUIKlcRExaejftUkgBufBPAgtL3J8WMK/iU/ZvF49F746ZznAyjIkFCst7K9KX4iHUL5NyRssIJeDYtoLJ9UkZt0Mst8YoKze9bZvHsI9D3yNzdm4rOfrHVHUkLCOQt7qYHJ/fz8z4w+OstOSqkeUcuMPpNJ6cWEsGiF4Ey0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743428394; c=relaxed/simple;
	bh=PD1V3FOXg15bV43189+w2KBbpz6PjFGUeFkTvGQ5HRg=;
	h=To:Subject:From:Message-Id:Date; b=SH6VD9TLlVkLNMyo4Yicnmu+gQm0Nmh1vz9sY1GEa/Hg8zFyGn6bZ+drN+kyuvpkKiIOUniV48EgIc9qz89yPGUQ4AtbvtBp3wCgG7ZgjNZc3SeOhgN7Cg+0TJGDl9uKUY/0WXgEvoJY/r595puA2jWTxPUyyvvobPUkMBFT5Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSDHIVpa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSDHIVpa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0047C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743428393;
	bh=PD1V3FOXg15bV43189+w2KBbpz6PjFGUeFkTvGQ5HRg=;
	h=To:Subject:From:Date:From;
	b=FSDHIVpa1NTavPXpEk0Pb9IJ5l2ybruQXJP+kbLINGXE5fsW5f5PueRe86TBbdP32
	 8ywneAh7/JN+CaV+d8tim0BHbbOYJNXXeO7LxkUaiNLpDFZbyFANd0HRUAOxPU4ab+
	 D6baycxIQDvCP7kLr3BxEAceUpiUmEs9WfwFDwRc1USYY92+2IDOP/XKFjSA4gg7ex
	 hcIjjhV0YjYJvY+ET80iqP/wUSIWZsAB5IgDfhPx/x+PVpzozQbacLBsx0BAQyUI0B
	 +368r3WoIRyTDsOWgdXKxvCNm07zokhZ7sc4LybMwlBwuKhzemdPzyr559rh/lrgN1
	 0oZEQZ35Z17eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BAC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342839358.23981.15428532925770121577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89bced9ee028b1f50395a3711dcc1f2a94bb79a9bf4cc8e1dbb32aa55467b847
Date: Mon, 31 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743428393
