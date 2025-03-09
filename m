Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479161DDA2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741544934; cv=none; b=FXLVApcup1+w6dYYtGp14P4+RF7R4PIOvZb4gKQ0Ox/E/KbLLoDmoNCuaeTc1lkwQqN6Urq61/VA1gjQZioe45VArj2AYJJLXk/EqwCY8sSWM7NhBbkkO4GmR42mwSKJuKSs+OZ0Uq58rh9v5UY1NFXA4M5+4EB9CggcdeiMcX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741544934; c=relaxed/simple;
	bh=dhUNT2FmaON/cgjkxmffIQ9Dc4ydmvt0w5toQb91zE4=;
	h=To:Subject:From:Message-Id:Date; b=auZ+PgKYNtgFfZYbDjxO6kiitivoQzdhH39Na9Q6cZljCHjce+lCJy2+UkcZncZrZeq4fXOxL54baq5gUSbSSHNUmaoQadab43UJstIBFvszLXLr9WSbKxX7BSaBTvmp5BYZ18rRc4mkbSMmI3OwHK1iy0bTuHvr93w/D9frd3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMEKXtNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMEKXtNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD26EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741544933;
	bh=dhUNT2FmaON/cgjkxmffIQ9Dc4ydmvt0w5toQb91zE4=;
	h=To:Subject:From:Date:From;
	b=AMEKXtNzK/CuOACtDHtmTlJChywhufu81oKxdNgfi4uMB9YCixXWNj5rxofN4V2g5
	 OGA8q5DEWRVT1tCMhIYEjvhoXk8PXWM4SAWovt1x9ezR/xtVcgk4lIHSMzvSeWUx2p
	 vJs2aHnS1K1qaQCPD5gxe80opr6C/DuedImxdo16x15KwzRy+ctPoFxMi2Mi97A40o
	 grS6nYyFZgqhlEdiDlq24g3FJSXuQkOrEnXoVUhPAVNbDSfPT/i/7fRkEcEoEwwkRe
	 PW9/DBnsvNGvcS/KOMl54gLQakRF3uZb9ilC5WUCGSoQ2qhyaPjYh4eDLL04F/iNJr
	 gcoqlK/mmAo9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96201C28B28
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154493359.21200.521576443194413997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c882ac81e968c84d2fdc9cd6311309ff97958031c3c28c17d02d4c5a494ad65
Date: Sun, 09 Mar 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741544933
