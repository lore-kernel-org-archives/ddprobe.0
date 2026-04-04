Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ACD3612D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775279734; cv=none; b=fAp4Ro+2X0wJhI1ixIs71L/DIyFujHOQrUPv9te7MbDdwt/8xf5kJHaWc5h5nEcN8uCrSSr+XWJ0r3xGzgcldUO351gCS+TDOosXEpHaUyBVxzD0Y+tOZJTDjVI156ssGWRCyQz2yPag+qk88fJOZal5DBuHeHMV2cyu2rA/MOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775279734; c=relaxed/simple;
	bh=SA9jkDLmdSBgZDYA7WYhtOdn/24hpbunYAQ3xLPf7Yw=;
	h=To:Subject:From:Message-Id:Date; b=vCR0ZMODilfhsO9MDVpMvD7Nue4Y9uDhGyfv+Y+ukifGC4I5qcIn48uxxKIYORufSKqvwUOJFC8YYu6Rcli37y/yIkIWQQIVgg0nR7gIhAKK0ivHCm9GC3AplnFzKxWK7rHmtNt4bmQc0cHQvJe+RqANsM9dlEFt6ev2NDlWkEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRMz8Dnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRMz8Dnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DD9C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775279733;
	bh=SA9jkDLmdSBgZDYA7WYhtOdn/24hpbunYAQ3xLPf7Yw=;
	h=To:Subject:From:Date:From;
	b=dRMz8Dnl4OouY2zQgXOrYfcPtKptlJ7lwHwl7WTyuBGbHeZHVSPV6cqh4ItYZuSKE
	 7XX9XMX8V0Yb3WU+LadMi7/cULhjcOjwf/jLy0cBMv3I9llQRC49zTmNbg756yFXkp
	 9bWTUTt2Ev8LLzTMKsyv+hOKTKPYNxXm9oVMaYXbgFrC92ITVzzp4iwgC41sral1dV
	 uYizkbWEkXVyK4iKo6Hshsm9WnjrzRIPQXkgUu9koMUdoccNgA19QJZ2H2PHJrayhZ
	 vMh0Ddfb3X3zNB0gbstm6yERxy/oGk9KOR9xR32rGzkZHa1D2uoPUERKe74fOm8Lmx
	 +vbY9xsxUHAhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD50BE88D70
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527973368.20417.9298679822172029879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a03ee59417569c66da9e11b2d68708c021124d57accb1e27133fd50d4d3c33
Date: Sat, 04 Apr 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775279733
