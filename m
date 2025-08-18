Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADF3322DA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755525594; cv=none; b=HFTPoc+23+LHKvI3VTAOlmMLBbnjV6s2HvD69j6oGYfWcLEcTfqOYlWdrD4Me1SS662/je9Cd8TfhT7aanA6KARYRRlvQ4yHtdYSxFGiwX8ZbWgI3tEElzo6iJpCQLbIoM06V9XE+x8sACAU0OAVaMcid0x/1pj0TfAnHdOk5Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755525594; c=relaxed/simple;
	bh=Fp7REkB8uPsDl2Wc6QWt17onasdXYIPo8xo4/nYZoMg=;
	h=To:Subject:From:Message-Id:Date; b=VtNyUdqYJRpu/ENiDPqLDSaMT9vtpRbLKybII6mFbGUk7xXO2y8He3GW+1WlMfMjdJarzTAlfmcd0QIkoR4t+g5PYZZNkS4Y3rx0351cUCUw6v3ma369D60r/NhcKERyi/XCAqtcuHnUK7BRzbv9bUKXrodawcAsw+YLt9fQw8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJkt0QP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJkt0QP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2A0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755525593;
	bh=Fp7REkB8uPsDl2Wc6QWt17onasdXYIPo8xo4/nYZoMg=;
	h=To:Subject:From:Date:From;
	b=JJkt0QP/kzSNOIc3HLMsaG3FLe8lurMKAMsCwr5FArdA46eeQCoXqYCTwaRmndkm5
	 ER55l5TBql6D1Jk7TJWJ7uDNemljNCbBBsLrG/ISp4/DrwQEpPKDwFafLvtg+8qQRU
	 6CG7w4nN4KMNwhCp1d8Ent/kpuxljSDs3mJggQfAn8WwlFiV1Czr6Zxef9ncEOOzzk
	 7bJkuSX6Cg7ug3X3QT2TUQPvXP5ZMxYvd9IX7KAxr33sut/Lj/VHfIQnsloGQ9QEj1
	 qKGwRtqYI+3BZqxyNamNR49Mbavoa37FTMau/YymovUBJL8JJVjEg5g/SzOfzWpO7h
	 ab52MMlNGaWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB59CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552559357.26072.14383176312470095725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f054450ab89a02b0fec4e4c19c7bc1b657e04663bacb74b993e738d707c896f0
Date: Mon, 18 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755525593
