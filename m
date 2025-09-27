Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBBA1A267
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758969594; cv=none; b=RrSkpgVzGrOkqV/9fj1wpQzNewcLqtfuYGkpkT1fL5Z+UorrUhXdHrL0PvUUvp13iOSfGzXrRFQnhSTqKTiunTzYnQ6wjDT8g6IUx6c7qZqYPw1r+d4ulZsh0RP3wU0gB4VznffknWYtF1G76s2t08u3vX7KXgdA+njqRjw9Ij8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758969594; c=relaxed/simple;
	bh=nq8OH0SPATXarCqufsENYvHKnXPgWAjlabV+gOYWPbA=;
	h=To:Subject:From:Message-Id:Date; b=ZmzWT8xcVKQEHcLI3jAzTdGQrlba5d6m49ZrBSqetBunO52XY+bTiz7YFzyRRMGlYHttXpjx7F2vTr37EbRBaru70CjWNYtxwbdEbYvZ2x84UOkteobJ92aRrF+Cwj+awExujZ+koMYNtEpFgWVDUgNQU2RtN6b3M3FapGZp60A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIoXDOUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIoXDOUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5370C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758969593;
	bh=nq8OH0SPATXarCqufsENYvHKnXPgWAjlabV+gOYWPbA=;
	h=To:Subject:From:Date:From;
	b=WIoXDOUXLfxhVgUkqZJawoEc41cEPeCkPQoRKntD9YjowyTkB3VU5KPZjTeRt0/mh
	 s1MY0uDZP1VDdkeROM9BEcgOV+9v7Yh1xqO3oGyJoopr0sFE2nSgJU+VXd2pwn+Foo
	 GN0fED4AbUrLbu+DFmRB3R/poyw8G81QyiKELKYgha4UvlBf9kJEogmiVgf7un666g
	 k4WCb5iVm0Sd2qIQ8RIvFwBpQPFSyjVvCvTFr5l78C7w1AlO7ga1oRuQcBg5upubNl
	 WRMnFqVnKboCphqjkcbebdLAGvHS7u3R59d3Sld5QOIJdMTXmWEBivoNE9Hd25aFrN
	 JQ71lKSdTfjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9376ECAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896959359.11260.3929852234388666666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e0cffca9ab19863382936f18e3c8f43b7dbd49abe7b2e999f9f3e6d80b7718
Date: Sat, 27 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758969593
