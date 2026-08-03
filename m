Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEBD3B19AC
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785787834; cv=none; b=f6fVzXBDHuJdokmvIY+zCteYed9tlQSJphFiOLw1JwWU8vfQjzUWBQqB1Dr0EApc0Ew3T1jQwVMqpIUCOh6YzzH4bbBtLgZXGi4KshJ9Mo/rmZLJmi/zWK5cOrI/m6JAiTqV0iJt4bawJ2w86VznZvVfN0S0f0aLYqQKGZO4bUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785787834; c=relaxed/simple;
	bh=xWyeokgnkoe6VaLqgNkRCotkdTncD+id9t2Z3k4KVa0=;
	h=To:Subject:From:Message-Id:Date; b=fZ2vJTURnH//IMxRuijtjHTH7xh4yIYuaO+WKNHFPCa87/keFjd+WEermeqV3oWlNRdbmQ/EryUMXDkuD2+DRItTIcutgtbe8UjPIh8PXhar2IOHnr54jkT5QFsZ1a5UokHx3TLZK016UkTYZp3bpJ7c3m3A+9zJc7KAAqKR1VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al5wxN3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al5wxN3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BCFC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785787833;
	bh=xWyeokgnkoe6VaLqgNkRCotkdTncD+id9t2Z3k4KVa0=;
	h=To:Subject:From:Date:From;
	b=Al5wxN3rH5whBestr1kreHe4SZUi5/Y4V/Qs40mu8j0xI2TFmeLNYfdo5S3NL7Sm8
	 YBi7H7eCOFQwymjcKuKQuqFtLCzIleREta79Y9XfBLLPoz3GyiyywioJCRvGbRMj2T
	 K55X91gShJ01wMWm+cTic14t/S21uRezZp/Ler7TaosrzaWoaAYedX4mYa9IZy8ESe
	 dvdJhhZ0FKawkw1NzpSVtzSc7HhA/CSeQY8x6V3nGUFDtCoMlmM6233pdHdoD5bh/7
	 oIkOYvQrTivy4jpOwy4BoLET46m+9kTIFdZ9EFqCcKSl3sPPd3XcXMp0oR7y647ejG
	 HA0DaGHHjrLXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9C8C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578783370.11296.11506035042090667890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6065e6d2903d39dca6a3a9fa495193827b5a3d185f65238137064d9149cb48
Date: Mon, 03 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785787833
