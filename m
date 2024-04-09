Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E9254278
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712629697; cv=none; b=MddCbFLdM9G58cLRhMiiFgK6QsmGiujveeWVX7W6Mahi1g1XnO3VxOzBZGcmSFIhGndoW6j+ekwMpNR9GYE2vWpARNZLrYo6umUMpSLssf30IeqPG7zyBkXtT0BWVLv9V22GJPEKBvmsA4ToJGRspykWuHa5U9PpC0uRJBWUKis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712629697; c=relaxed/simple;
	bh=Ln+FgB5k52BXVjVtQeni9IYrzz4x9k9gA4bcOO8NCIY=;
	h=To:Subject:From:Message-Id:Date; b=g3gpe8/kpw1WnW8u74vlwOUV84C/MCw92xGDoHTMNOAPo/KMzyqpMF19tVd6vxLyEOS4s7uLwnr3i6wrS+JmbUrIyEextkyNkf8CIW1fwK4ju7qTEMzOh1ISXhXcdlKa9S1KN8C0bW24T/w3p8Cx/pWRuVX4picqYRFm/i+hctM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tWT+n8A2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tWT+n8A2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C6C4C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712629696;
	bh=Ln+FgB5k52BXVjVtQeni9IYrzz4x9k9gA4bcOO8NCIY=;
	h=To:Subject:From:Date:From;
	b=tWT+n8A2dfmXyF0Sb+h65r9kSf7kqgGWTywz0qA3L6KhbNxZoggi01SkZPH9t4HX2
	 rsYSDmcrA+6mF7Aw7gdx5CWASs0QJhekiNWD10iS8k8z9m7I2L1P7fSg+Rn30VK7ax
	 r0g7XcVR7QSaWaOsWd9JTyzS1qL0/ph8+98SkxTFhrihvivduBefBiUpJzDqeMhuFk
	 Pr3P8QmfwADi9djHhqlsiAgkGnIy57M377kZ6OjeHI3iXoj6pi+mA456+RQRdk2if/
	 JQ1ZJGo+QANXpWUasTvqwi+pJLtJu2fPkbktu836u7n0a0WBU/CpwBGpUbOgLU6F9L
	 c4TbJxmmJd1Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EBD7C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171262969639.30297.428909368048566999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b213d6b210507ed848d0fc61f4f7428bd6c115b233c2bc27dc07a664952eef
Date: Tue, 09 Apr 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712629696
