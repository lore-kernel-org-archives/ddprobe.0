Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179EF3398A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763268054; cv=none; b=ngwFmV7DyDjHj+4jNUjHJEvJceWcq8w6SjhjfzEUGGn3PDos5dTk1qnHEWTh1YtejVO5W3zyc02uXF5CsNe//OYyA5cp2wthwGVz9QSuCYoZCdWjCPVQovofScFFbqKk+SSyI0LWjr5MwZxdRQTSgaLxpB/4CwQ2fMzVvTIRsb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763268054; c=relaxed/simple;
	bh=lF4aFk1BLsd9TLzSIKE0vZP5lY6Dega/hKrtSn0hFKo=;
	h=To:Subject:From:Message-Id:Date; b=dYZOnQQYp7BVOBMwz3JkXbMfhuyYUfMDqLsxAcnt1e/fNdrJ3FNpcVmi6puGy5AQoySKNkirow5PMEpm/7s6kuzJ3emmtzALW6zG+2xh92NrtHlmwXsBJtvZ+EZvtbwiBdTpGl+/G0MAqss4B0CT9YsBlymBSsfp83M0XjHefpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8y517Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8y517Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC1C19422
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763268053;
	bh=lF4aFk1BLsd9TLzSIKE0vZP5lY6Dega/hKrtSn0hFKo=;
	h=To:Subject:From:Date:From;
	b=D8y517EiujY91UDF1MW+7yNHUpCi2yNB82B/T/4UcFaS+FqGje1WRoYbtlOCDz/L2
	 YmSWhWWmulLLi2FnGXAWqWHoSuS/tqcFCtYP9VQyZ2WHyhhWpE/6yHhAd+QugRNYcK
	 /C7THLbtG32bTKs7SfPHXpkPM+8ewtbL1EJ/IQnG5yGJgcazqrLbmOuKJM0ewTkItr
	 3MkegY8GYiACMlqKwKD+TF854HinPL4dsJ5M5iwrLUuw0nf/sqOb53rlG0xwjvtU7i
	 K6nDLicsU3zs8fpI3+urCCf47PoeeC7pfJZJwbZ2vhM5zwuVHlXogXwZP9xbXi3QOb
	 eB6ly69j4gGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942E7CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326805358.19039.11997068140418639066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1223771dad922e7fdda3f6d08389a248b3f5c29a6d32be00d168f1f83f3616fd
Date: Sun, 16 Nov 2025 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763268053
