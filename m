Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491273CE0B4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780782274; cv=none; b=B/KFD2VOffReEg0x2Q3qU5wESYIsjqEMCMHbaq2vzyujjaAgpJs5v62ti1keijTXEMhu3LRZiumVUqwD2WHmGO1Z3wtUEoQebnbtl9ouJd46b4rohQawC/I743J3ZPR+252i+TK7NXjI3uZve9U0cE7j2CSonM0WX00OEHBrmco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780782274; c=relaxed/simple;
	bh=avBsyW5X5fKtApLTr2D+BMBTkPB7nG5UCgQ140CyrRg=;
	h=To:Subject:From:Message-Id:Date; b=e/t4et9q2PT+Lm55qZ2am7kYuyQmG3mm3EeQpHkOa95Tcjtdd2BkwXj9taBm9cA6IogV3/AyTYXW/tAKDxMO/Btjy1nbDepxLM4ZvFOE6yoBZYDTiYPYLyV+y5lA8lG2niiKm97+ABGfT5fAlR5INrKHaPJJouhlsqVlmBvas4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqOtXlkg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqOtXlkg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD76DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780782273;
	bh=avBsyW5X5fKtApLTr2D+BMBTkPB7nG5UCgQ140CyrRg=;
	h=To:Subject:From:Date:From;
	b=rqOtXlkg0+AGQbvESxLmVaZ+8wbK/zML8EocmQZ1egESck19HZ0GBRo0lSyhNBsjp
	 kxNhhR1qIVvUYAS9QJTNiIImmldPF38mgBXi0IsMd1LGzEwUsuVMDEFqfCREnWmowc
	 27mfSmezlzROoBwZYiL43VZcq1rAYZ81NzyFYyPnlt87NhrZsd88s8fmhbSzDKd3wh
	 Rbmmu0RiKZGl7rHMPFLnRcWOhbwq01lk/N/+t60Zd4A2rjUw+IjCUUqCCmDCCIQfx+
	 1qoj1JA9QjWF3bmLnq4LRU6MfYacg3mR7nj/NZgvY/8Zv3n4RKbV8U1ZdxV8CL5cX/
	 umClZKs9XLC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09E0CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078227371.30775.13542646088973444721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f20ac86713c98df1a25cdacffbffcc7250053ab681744e001fec8f2d4ab262
Date: Sat, 06 Jun 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780782273
