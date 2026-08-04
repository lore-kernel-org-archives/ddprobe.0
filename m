Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1D837EFF1
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785804034; cv=none; b=GvzCNhRlaYcWq/8LH6RpbGnJ/FlCPjzA3Mz+Und+sU5A6KrtbUd6utGinBXvlsVif4BBmSNc2rVsE5GCWeADWWCoqhgI347PyQCpbM+3U9FUdqQgzIiJZVhF8j1NHsNDzAA1bztYMvgrzO4PhmguW7FC6ieiFm1iKWHy9eBtbLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785804034; c=relaxed/simple;
	bh=Jqy2fL+WqTHWQR85GvkxoC7AgAmskQdd9getjnuFdps=;
	h=To:Subject:From:Message-Id:Date; b=NMbZ+omQMKF/MOHxIe//IYKdI6KhBcBFGSV800LpVjlIw0pZWt/q9th+JSqiUqi7S1MqhPHEMJaB832+wcRAi3oHnixkfFseBHM7m9ROe/nHymikxgHXs+/Rf27CfJJkedCSZKsvCL9J2doF/honnyrQ2SXbJOTRLhi5pJavSeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUonXjSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUonXjSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0720C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785804033;
	bh=Jqy2fL+WqTHWQR85GvkxoC7AgAmskQdd9getjnuFdps=;
	h=To:Subject:From:Date:From;
	b=JUonXjSLkVMdEvpX2khgTw7RKqL2CyIii7s75u1e5tBr3UeGsRd4UpfiObTlfMyUz
	 7F7sMAT+2JSStrKXcqql/45+PtYLl8y21p7/CkZTkGZvXwss8zf+GhrfKDjB6x/ka9
	 eS1c5JUrBBzqR8BXEiNnrR6rp4Nlb5/OOlLTdZE24W66jY02w1dnI6psGa42h3WcaD
	 KVowUvGs+enhfDEvltSfaCEpAoV4XF/Tq6ouJ2wcLj6DvBfi5UDMH1RSNAnd7l+WNr
	 l8GxWl03vUfcLiHb4g3FtY1Gn4ZBYiKYvjvLLH+6PIWvI7Mx5oOsFkqaLS/pQ/A7ha
	 yRjYPOBHHLsZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC844C55182
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580403369.24545.13818793567806010387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6ee85173857c8d3315e2ebca37db2dba693573c9e1e9e9de084e80daae64d8
Date: Tue, 04 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785804033
