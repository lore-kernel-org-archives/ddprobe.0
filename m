Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF5E33CE85
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757421593; cv=none; b=faf0CE4DNLu8GYno83HFrgTOcHCdLL4EKNYb65CSYZWCvdFsES2SHcBHuTHkDpQUIgBCK7+H56+xcfk0PEb9ktcf3TwD5KgzO0BuC5uFWW7p625LxetN97gouO7X6uQsT8CCfoZxqP3JaHfu49Dok4K7w8E2rwfWPuMUQt/5ed0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757421593; c=relaxed/simple;
	bh=YLa5b8axdd6YlAx+qqE3VfRsua57awdVts8MGnr2S5w=;
	h=To:Subject:From:Message-Id:Date; b=Fltt4n94B7yPKiBHkRQjnohXRCUanPc5w+jpqavFuNt0Eyn/3mwRKb+wTqR/UEQNjwzTfYSbaf7cwB8QEeXq5iZphGLz1cBQSadr1H98BBgOSiHRw9h6TG9f6DgZd6QjJgLlmR3QmyoQFBQLqQqi8hE1XqsN4jaB1B9eczQ7KLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9VEUMD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9VEUMD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B39C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757421593;
	bh=YLa5b8axdd6YlAx+qqE3VfRsua57awdVts8MGnr2S5w=;
	h=To:Subject:From:Date:From;
	b=T9VEUMD+t7/01zPkCli2LNf/7qi176V0h66L1261EyOI8IRIKyQ6YEfR4R+97pX5a
	 ZawSwnBE5xQ3JPv+pB2ivm/hDFvG1Lc5qe33Rx/Wef/Ou3N43BSN7jUHMNVwwRgBHq
	 B3PhG4xPvcy2yQu+uYBARS2ngf9SfRUSsMHQlhuLUvViRZpxzHRa1z7L09Fl452gpw
	 VisxRMQ8gQnkQwOBxlt+61r2t0DT+Ohds0MaH1ptGCI6ZobO5ki3iuFwbA5i+ti/SA
	 5UmQAJHgdJFW2XIRrlicxkpLGHZxOPPryXTeU33kZOXJowjpi64QYOc1pwYnGjCzhL
	 K7zm69/q5uekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969F9CAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742159360.26524.9027356902656215135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5f14ec48370a7b78cb7a15fa027dd300652e46435df0876b2fb8848bde94e2
Date: Tue, 09 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757421593
