Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4509A365A0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790859634; cv=none; b=hhb2Zn8e1thOyEnBKrfQD1BeWtbc6p6saPbnde2VKjlPBeSs5hPWq4yjZzCjVkoYVGBykB71FPxkSqguILOLnbkNxtasax9unI92eHKk9VmIcfgy76yPVyo/9BrGt1TnV9C0zOvELeK6zhjNUR68h5PktHDA2fN9cJ7cQyL+b1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790859634; c=relaxed/simple;
	bh=gTdWxqYYX5uCxRoUE1e1ni5lNUlsV/gYiTBYcttRnLI=;
	h=To:Subject:From:Message-Id:Date; b=H+169stjDCTtU+O3rLOgbtK6/JlglWX5LcTzOjkh8gtEmx04XftOhuGj+7h43gQ2bQJRUPYFI9ZyvhQZkFhGEqf62Wr3RcGEtDaJld/nzfKjwBfYXJ+8nvTuZFrbQRz8t/MuJb9m/Oa98mtbJ3oIe/oUQrDhcc6Rp9obznN3p5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkYIfUK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkYIfUK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE870C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790859633;
	bh=gTdWxqYYX5uCxRoUE1e1ni5lNUlsV/gYiTBYcttRnLI=;
	h=To:Subject:From:Date:From;
	b=tkYIfUK8DX2m0sswjJYlnIHsuM2/3tiftYfZJcNQ8gTHpngAjpxAxB/3VfnPs6Ucu
	 iM0RVDuTxdMyMmznTT+Gf9pdaNu9rPL5Rc6FamAhGcpF725+7Dg5qbw4q2Gq947MAO
	 Plxd40x8xc5w0Pc0MDbSQXkGJMPfrOz4Acz8WV+Sfa0aOyy+sXvLtSz9Jlfl3l9T4f
	 VHS/GwVru4W5EFnHddPh8gFjfOcehlodWV06W2XrMxsT2kA+9plV/T8YNfgcXrKD3F
	 9UhxPibfEa4czOcBw9PGP/YAFyZlhydMTDqi9f3JRdXXDfd2opsbjG6XVihnBurnjw
	 XFIgfY6kJ+EYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE67CA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085963369.22961.8360620698951760621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd7fef55a93c819f43002fb64defbdbdd6cc5cbaf37b40d7580b52709671752
Date: Thu, 01 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790859633
