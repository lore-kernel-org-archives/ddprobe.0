Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D05450FE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771648494; cv=none; b=Allg9bpsIxnajML3I1kylxcwdJTFs3f/+Fo2XShPYJ+idnPog07mQTfEeTm7YyG7YDggJDyPg1KmHU5EQoQt5hGkeuYlxUcgSHSlrMU5F5iv1gZ7hpmFsS1Vy31MxqyOiZokSExSwgmtLbyOOCYqKuaEwKLk8PIXqEmRYEbaWKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771648494; c=relaxed/simple;
	bh=Tdl0j1iHLcemLoiaawwku4HZ0QrfMIXeobPPY1MrgIQ=;
	h=To:Subject:From:Message-Id:Date; b=ZgT2G8JIhwAQUCgE2BY7INIW032FszcTOpBQPtfRoIy3DzaHo5SlVrSM6fQYTzRy5BxQWNB2CEoCpNJdEVcZRQJyxOuW5vSZcSjaLD4emHvftSW6J1BaysQvx3qV9LAykNNJSiGAJuYFMTT+Ad98SMuCJ3gjZX7UofEF8Y4s9Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2MDGI7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2MDGI7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3E02C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771648493;
	bh=Tdl0j1iHLcemLoiaawwku4HZ0QrfMIXeobPPY1MrgIQ=;
	h=To:Subject:From:Date:From;
	b=h2MDGI7ZizBIwEtVbN4Zti29vENBRHlRgNoitKC4oQOAbTQZQYxZBt+N18N9E+Qcf
	 YiyD3WIbTRFZRaCeBIHLMrkr3hSEHniGeLMMAcsyOIy0FCyxmTxDkC7u3AK2nTFtwW
	 NvgFqKf1kZK5uxzgNIeITcQ+5arCvJQKnvfGtsAcusEw5Z+nrqDXKcq+iDK/uMHv/l
	 0cI6t/jbZ5lJ5iwU8VYw6KxiYYUXDpzWDlwDMrALkBlS8uTIElkbvq39S4Javak1H/
	 tYyCQIwefKejnp9LWiJVZ98VJMj6JOrZLH58ElQK4rzZ2yck3/4D+m9LYO/iUnezOG
	 bIwJ+XVhkpG/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A02C5DF8B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164849362.368.6573038893744560163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d036f67d6b1adafb45b40c0355ffe3f85d2fbc248aa95845fbd8546dcb690a41
Date: Sat, 21 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771648493
