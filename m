Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F0534FF4E
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766422434; cv=none; b=OfQCkfRGF4EeQzycVx95oItrAvBJYGZN0nIHq+wqFeJ37reI8Lva2qDS00khaBWWcnHuo+2nbOLv3D4EXmstbQFHgJOsWJkAQH+Hid0nZFR35JXCaavTYsH/Jb9AGGF+plUlYLCMxvSwaPZSe0HqSaicq4k1h71Df6cxyAMIIug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766422434; c=relaxed/simple;
	bh=W2McM7uFUMv4qQ+BAQMUX1ayTaWSIjcGRcSZBqA+ag0=;
	h=To:Subject:From:Message-Id:Date; b=U0IwxAEjRxdwrmRjlG/RktT79DUH8hnzRz3pEwmwa+4sde7f2k4j4Ucs7m4fvRIBOiA4d07Os4k2DDVIreGdu4PSviLTjcg9cFk8ADIAvPD2qbFUAQNYdlquZmyO/iizce62DCyWlRg4Q2Hs3EBg8KWLmV56OBDDyuXxEhayVrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoD5DjPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoD5DjPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36B2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766422433;
	bh=W2McM7uFUMv4qQ+BAQMUX1ayTaWSIjcGRcSZBqA+ag0=;
	h=To:Subject:From:Date:From;
	b=AoD5DjPcVuN5MrLOggOGjAgM/qe5WvCKaQ3CUe9jES+PzIPhGPTWx8RfwCsCP+cv5
	 O0EGthcUWJwMHUrDlNtjPlle4d/1kL7lYjo5qqW+NDkPRJDHOGLVrzdI+r+QOGN0Py
	 jayCKy5Pb1vdiOSq6SYg0ebPg084MsetBtYtaeH29HB1SDrFXC4KmZl3Jhoucm0vtb
	 SiXWf8F0H8KlSL/Y2buINNOoZ3/tCffy9SnFtk7tVjPjW8QefRXru+tMf+/+qArLSn
	 oi4ApnEpLPHB1B1M83e2XcmZ0H6bTDsppntmrWkQ7pJSaBJAXhHJLFBZnyNZ7y7Wwn
	 uWhYhkIv1MZSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91992E67803
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642243358.25149.17008599754397245135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9791f0a56fe3f7c53881f02b07e8161fdbd94ce25ffb52a4f76ffdc15b7ef1
Date: Mon, 22 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766422433
