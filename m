Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27470DDC5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764808374; cv=none; b=IfwDf7yf4oL1nAEU1mMv2msCYlpmJTVyj5xjbonfWLVPCVzr8n5HTOPYQN9qRtLcp+DiqDp6JJ47iqnOeO0eDSN6DmJ3tCyEzeivm1kikwG0wpDyyehDtV9ag+WMBKTSwFutE/TbYXNMJGZXmo1TQsirhOZsMcXfSqTNBjfn9o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764808374; c=relaxed/simple;
	bh=QvZ5pyv3dr5dajCdEpG/7d1gBICdonNDP0L0ErLyhZo=;
	h=To:Subject:From:Message-Id:Date; b=e0jk2u2XRYxYQmzGPYpDL14KVsKwiecwRZANT+vLhHvIwaIKnxplQ2gVYdGTgfaai3a4uVs8PebTQC6yHBUMxVbBwXUz55PN2beWwy5+h11i2XsDa8AazEibo+H1M08BQAcpEJlO5Sw+Ok6iT2DoiWpnS+E+KM6oi2PVSL/qUlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sN5eLC2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sN5eLC2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BF6C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764808373;
	bh=QvZ5pyv3dr5dajCdEpG/7d1gBICdonNDP0L0ErLyhZo=;
	h=To:Subject:From:Date:From;
	b=sN5eLC2eAz/iDNLWoQmxVtJ9pXw2qgjTYvaOq+cUm3GxC73RL/gGYeeE6Qma4o74B
	 bFoxMDohhOBhTBnSpd/IrfmKZyqLmzbuq00iEgBkya1pwn4sJdpQxcjJSA4QPKto35
	 KNI76W+KsvGwSw9kCYY1rAIOpMNuX9cZj6oC5Q37qrdYQ+BMyGl2OUXJiatl96EWmb
	 L6vo1TogSyRNnM2I59GV+7GjLVkZar3J0JQYi7Lvl0MvPHqMvNlVVICSVtZFlbpREm
	 iO02/9dP6yhVI1Z8QyYcsgJHUBpdVHb+6S3NOBk7y67b/QchJLCiHbQJKBgbxSO3V4
	 R0hgc5hrKq60w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E623D1CDAB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 00:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480837361.9228.9328733884395794914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdb8e3d920600b08e450036d9a6b9f20cc37b9aa75863b7530cfc97126a832d
Date: Thu, 04 Dec 2025 00:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764808373
