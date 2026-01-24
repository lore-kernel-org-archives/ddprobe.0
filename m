Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F1CB665
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769283234; cv=none; b=IkiQJw8n28mvLDcWklaJw5yNEwxS6Y1gVyht51TxfbOl63zF8RlSHf/2shPOUkWMapKlDuzFzX3hEg8tfvGJp4Tj8Ogl4DtN2AjKcopxaym/xAc+4nnEBMYS42YGZDXxKRGsIC8Jln13keZEcpgUpKyE0zcCf0ABDNiTHGBqkgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769283234; c=relaxed/simple;
	bh=JHJVxtfZOxXtnnojlHuBpBIGN2kXj0RBpOSTTxwrvgM=;
	h=To:Subject:From:Message-Id:Date; b=XurolpwnSWMDyD8pdAU8WWj1H7kp8bIMy4jXhtjDTGEJnsTzsSCG+0iRQmLujvmjbIRMzASzSHBNWp188A/WOJMYKHmz7ocIzIMnSc6In1XWO56mK7igiM8LLVGN6n786Ounc75Qx/5FSn8n7OzpTID8mcQjF2wPm9K+ksUEPsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5uyTAbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5uyTAbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F5BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769283233;
	bh=JHJVxtfZOxXtnnojlHuBpBIGN2kXj0RBpOSTTxwrvgM=;
	h=To:Subject:From:Date:From;
	b=K5uyTAbiyy4sI7WSLx39hrBQCeFPcg20Okuw9lwtKih3x1AMdQMfpNXNfMI/f6iat
	 cOVgVkpXz0o3zbSAmT8coe+XDPuX9B8451aJz83PYKcOIiu0warOqBTzYtFxJ9alG8
	 fVFJRcNrCldEpuKeOxguv9dAlnaCKwRlPTvamG5d+aDZK/658d5y7svlWwOrQWV4aF
	 76qKk/S4R3avMnk3idl5S1tfvFkwu8EZQDF6n8KHKJSY9WDsonWo7ydLGux3dKE8m/
	 MB5PMfJuzxDtiGkeQQZgcEjpbcwzlb2BXl25ZwOqGq+lLX7IAeAjEopvRkdImLe8hw
	 vBYxkUxXrI4tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95523D715E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928323358.29680.8581902311097849043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758a14688c63327c625e19fb74cb253b1b98800dedcd33b8f682cecd868f2219
Date: Sat, 24 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769283233
