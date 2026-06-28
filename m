Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7281DC985
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782688114; cv=none; b=L00VA7h8RSIhiyz1lbkvegYz32Uc3cW6jShV6it94djRi5xtB85cTry8DYFuXOHgUj+Oz0jjDdvi5DJF5OfxIUwi7ORYjOdhG575n9ihaXXHdHmWYstq0KwG+/9QcN068cCufCBAfPbB9G5mDE9ofLtVPA8STqz+qBKKkzi3o90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782688114; c=relaxed/simple;
	bh=HrehFlkZBXZgANIehXhfORz50b9XkkRkDU4Ft6JO+xo=;
	h=To:Subject:From:Message-Id:Date; b=rmlUCcGXIUS85G6FDWAGB+K2yd4svFWKsqCXYrMJGR8rq1Y01B1J4X4pJlt7v8w5J5Bhid1raFEHMVkEHDBhsoJCRZWfEsXgGc8jxKMu7D3w44xRa/gkVIcvD4roosBZOK3nUJ9791RHG4Eq2MjMMiLmh7AQiHSzAyzNrQnBxw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8GE5+V5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8GE5+V5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0C4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782688113;
	bh=HrehFlkZBXZgANIehXhfORz50b9XkkRkDU4Ft6JO+xo=;
	h=To:Subject:From:Date:From;
	b=R8GE5+V5evIxH89oF+HRUIh4RcJ2MIYhIdoAWE24qYB6TBDFAPyUVLXEljeJeeQ5L
	 sfCfNsXLC/wA6pQ/nBWrSocadsZOLFk+GRr+OBTMASLjpSmfvom9uFeDHcGSdIEyeJ
	 KM9/KR9Ses1DoPz4gde550YaIYBL8rETVUkXU/3NZRwKldTX4PHK555uuzvrkLMyMw
	 fPQ0pMD1MqmtR/O6FdzVzaAoGic1rfN/P2NSiLPmrc9AHx3kjJK26mb4KRs4+oA6tq
	 0+hqMOcRqBAw50of+5gpZuTiFdyAxTWB7qISrGrBaJmUdv8vVCeZg0mTL4YAhfStz3
	 z9zBh6MkTxvQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD8C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268811368.24362.9108329365123973093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 882ed13b7e090860c40178559259f3571ead3fc001baa5b8a154718ce253fdc3
Date: Sun, 28 Jun 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782688113
