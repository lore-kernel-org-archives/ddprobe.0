Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370AA476699
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786476634; cv=none; b=XIEZNybu8WUbK/FrZRTFdGr6J1WzPloFaXa8lOUR5txQhinvFvFe8bLqtf1KvrO5GMWh0rFlb8v6zO9/7Rm7vwTVzqlSjPlYUVME47OiVTYltrWKG6avMqN5NIntc4QUPUqZFjX+5tBq0M/KL3k+1jLSGcv7rmw0EvhIq9r77l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786476634; c=relaxed/simple;
	bh=xFbTSvoUGo6Lgl1jN1eKLzSmi2y+3Z7ER/1OU8y+rko=;
	h=To:Subject:From:Message-Id:Date; b=eyXSzWr0/RV20iLB8jSST4ZlaJfOY2/48b27Bk8G94BY82zx27v1+hETE/U2gXYwHkRo+fmvtmKSoU47xu7vKr6VLnFHUWrMV76vWaAuYbkvHoRA/DhdGRReNxt2xWOB1ajb7rtJL88flxcvPJ/Knmds7M/bu5deEfMkSPQoDxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUB7ihV+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUB7ihV+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D373CC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786476633;
	bh=xFbTSvoUGo6Lgl1jN1eKLzSmi2y+3Z7ER/1OU8y+rko=;
	h=To:Subject:From:Date:From;
	b=SUB7ihV+ECu7a946RnNUsNu17T2exfJZqDxO6u3K+rEUBw1ctz4e3uh6HCXxCsoHD
	 C+If37Ruij7ufO4XyuetDFWt3VzTkgUpdZx9iDj+s9914nOauYry6d7aBNonTWvriz
	 tiVMyIBGDi/w1Q9yrKW5rhQiqrl36Vc1XjhCx/B58mlPSvU6A85kxQ9l/thwkutz15
	 KsKkWNOCSeXbOEMlV21MnUuL+zjVqgdhr2vw9EVItOSUCXGDe6LrLn6OzJJ7/tPguN
	 cQCWRoQJHcBK0M9KUoHdOixKmG77TBkDQy4IqHPa2Sgnlx+zFKws/qZoVwiOpBsmwM
	 BiRnU2HbyNPhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA75C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647663369.18692.4173191502486431871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476e040adff5befc57e25071fb68d5a942a4328fcbcba1b870a77074cd5cf223
Date: Tue, 11 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786476633
