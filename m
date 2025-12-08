Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED9B28695
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765174374; cv=none; b=ezYtacTsddJB2itrwx0ouSC6Jpu8jtJx5eJsiqwnMiYDZtBgo2uRUsjJuKUvrSc8d7nc6DM9QmSR5+uyOKt5F8YqkqGfGkhQie3wtb/OhHpdoBUfy8A1VZHaafcEw42oIzUVdSdpmmjOk3OH0aIGwgxSYHF/kVQNyesf3aaFA0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765174374; c=relaxed/simple;
	bh=EkZ7qB/OP8tk47JSPHN0KUfsfCDfbfKmcrK/FB+JjqQ=;
	h=To:Subject:From:Message-Id:Date; b=EXBeyKA+nSJaDGRA8lS2iBRA/mvaAIBWpubnkr/kNw6jeQGV9oCaSiWP1Tq28tNa9yKetHZ/mMSxXlFoq6q9OGzlbwzkYZ8wyUUSBmv/dY3cvZ4gl8WvXVOfKIOJCqQNgs2fcs/2sxbp8/3sayn5ZakZyQy5n41lVinLYUKIEac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epw+4a5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epw+4a5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A241EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765174373;
	bh=EkZ7qB/OP8tk47JSPHN0KUfsfCDfbfKmcrK/FB+JjqQ=;
	h=To:Subject:From:Date:From;
	b=epw+4a5kQ7MH0wO8QA9+Ou2ASP3lmwJQccmLkPZjWG1vijfZvOuqe5iJu8HKZLC4H
	 pYjXlGCvCqwkLxmjXsaS8N0bccBAVsnhF55n3T2OENOV2gA7zjFzbbbZWEktRdcjDO
	 FiG7leaLam5zY7zEy+D7cjey9Cow0cyFtZ56/0f3Gm9Fl2JIAyx27UQOySjTdX3b0q
	 PDzfOeHR9iiYAc/iVFsXsRHmXZjkW+dT58oGpM0n+kG0EC+lo2+c/SKGANUiv457Be
	 tb6BLF4g5q8RmEj8jYs4RGxOmPZ+if8t4ZuEvhYsIxDy4PgF7WGF+kP2haTjxEOQhn
	 8xaR8sl8fMcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095CD3ABEF
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176517437358.3360.15460126135125634195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df871a59cef68900aaf7fd7feb8cd7ddde97b9e3f81201b3fa4dbc89e64643d
Date: Mon, 08 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765174373
