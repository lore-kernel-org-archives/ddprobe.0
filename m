Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1806D2036E9
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758050994; cv=none; b=X5N9SGFoZ6i0x30kinPEa1xet1uOq4tYrnQrYCfNGZFudVDQIsCkjFl7dU5dIx9jhca9/8oMsOQ6N8adoTIn1xXp4MKswEZ0vvmu0wZcnTPeuHMa5XJYTmXm2aRYj0EhrvzH+2lk3SwByiKqWAOqU7e8DGEBmmJmj+PA+VGvjMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758050994; c=relaxed/simple;
	bh=eUvGcggJQgKk5XYj3jt9e9LHBHIfwhn5PWxkhOeARw4=;
	h=To:Subject:From:Message-Id:Date; b=poBPeJudcJKPLVBAu4nQWF5oEL8JfnS855Y5/Kpc7HIMcuaCxrpkwgXvXVvxM5x6McVX/cB21M+kqtykzzfWPGHKVP3k77KQHJHOoHP9sGV93o7Afh3SQih/Ly0nzdafutyvgR8XbtpXVgHfinOxeBMIxYnibWfJ5m8ZxOU1WOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTTsEnhs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTTsEnhs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1222C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758050993;
	bh=eUvGcggJQgKk5XYj3jt9e9LHBHIfwhn5PWxkhOeARw4=;
	h=To:Subject:From:Date:From;
	b=OTTsEnhslSsPy5pJ9g6WUnht16gXlbXOcz5tpTUXAXBUPgv/7Q+2O7twNtI57u/gr
	 a3ShymEIWBKOTEkAMWiM9g1vJVJRb/8QwZmqaX736jTrs8YuwA+idARSLAPQfM1tLk
	 Z3rN6BkzYJ8jEEHPlAA3Od8tqvtODwBRomieiKe0X3Ex4owzky66BxmHbRKLidwR9L
	 m6kKvKHmjAQi68UFHpjRvaWpv6JuTm34T5GJWlLsrAlBLGgD29UYolM19dHQ/kbdv9
	 Mfz4eLhmY2/BQtkJY9zPx8V7y0KHUbSTdDLutbtefgWMGXyQ9yOBbAi03BsRCJaLBf
	 V8cEODUpPYEsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A1ACAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805099358.8769.8589670266901431058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fb82e3b22748d627a96ea83862c9fe272aa37dc9cbebe1fdbdc844b57655af
Date: Tue, 16 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758050993
