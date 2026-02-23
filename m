Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190B53EBF22
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771827294; cv=none; b=R5PlWg55Lnql17pOIDCawFKWK1ipsFefH41Or4Mc9JDCtRViMMtxcz8CxftMOdRXTgqZYm9Gvyz6KqrRoY59/6zyspaxe4xlNufqfVobKyTXVtbf3LEQ6hfmsZ/qZ1MEfW/6wW0Bi7vSKWvAva25h+UMSIBAMYKYmP+cazKhW/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771827294; c=relaxed/simple;
	bh=N+kNrXSa8TOu8GSDu7Nh46Huf4KjB+kjoNaKun1SKl8=;
	h=To:Subject:From:Message-Id:Date; b=Ox65uU2v9qHDMQ4uZApbShKNPKgbw2aVEJQYIC52I6MxWEuV6SN6GOJGsH3MnWaGXoR6lmst4o9Mmfr7mjzvmV7SgVI1266hM6os2RCubWwRBW4FDyMebovsWh/RIekUIE6HesB4uve6pg0ZODVnuKCQIHkMXGElRVy+dvGP9G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiVPnXGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiVPnXGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE439C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771827293;
	bh=N+kNrXSa8TOu8GSDu7Nh46Huf4KjB+kjoNaKun1SKl8=;
	h=To:Subject:From:Date:From;
	b=kiVPnXGrVV50ctI6HSylx7volP41Apq3ZAcMAKullIHv5icue9nrzniNh6mAOXam4
	 GSwMk8QIkPxfgfCZdUlKvpbR1IhXuSP6osxfCLcxgGrtzDXNktoN5lrgPhNsfNt/e9
	 nqi2tgOFce8wp/n89Ng7Tfn7Hbi4WXMFZCxGvLnWdN4MxD0uPcqCnx2H7DC6RUBve4
	 6HUvuN95j1pi55tllwjrwwlpnAIqgULHbWKI+ZFvs6TQghXvWRYM0ZM+RLzEpftRVt
	 3TqxFvLeQEIuhZ0/8v3P/ueP2400gB6kIJEnKqM7XHGce0OnWnlqjcdj9V8mCcGJtY
	 zIfeiLF4QIOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986FCE98DE7
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177182729359.14627.3204280928562484715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d54341fcd4104ac3ff3534e550b3f2e1db088724ec13db521f6acfa48c6268
Date: Mon, 23 Feb 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771827293
