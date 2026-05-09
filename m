Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4A7231A23
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778299654; cv=none; b=DhAm/f3oTCaP/L9mGlzqGQpGr6RHfrEsHZCM8G115S+sPGyVyrW0VfybiOmmyZZ5H1DJAQ0P/NDroUb2qau8ZpqCoJufrNTJumm2aQ14Dmee7yhQMvUrfpmNUnnxP9OgkAJdD8JfL/b1ZDj8tny+BYo73mc93rriOJXpIfy6Kb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778299654; c=relaxed/simple;
	bh=rQ56KGxkaRKL96una9n25HPz5VKdT3MI4deihfHOt4o=;
	h=To:Subject:From:Message-Id:Date; b=a1nmDGaptffIbIpM683Xc0N0vj1KCDGKfUINy5UMAEbI86uH+LIwCW5vdkz2sWI0S6Sy/uDbI7fP/Y2vX+I9zfU3UVwVSs9TL6ghq4oVDOgVRGqGKrPOFB8y63+dE1GIGMAPdFK2PMvIknxmA86x0B2ITM4P4Rom/tzpf/tCseo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psCQ7f/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psCQ7f/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B9DC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778299653;
	bh=rQ56KGxkaRKL96una9n25HPz5VKdT3MI4deihfHOt4o=;
	h=To:Subject:From:Date:From;
	b=psCQ7f/P7OyylqF2jGVfqp2Tu4bdk9ZG+/dUPK4WvnLrKtJMrIBRVQJp3Ngw2vBZt
	 Zw8pElCgGMBdNXFNPARPrnpHFXh8kD+7/HDVV58kLVYldZCY1zk+YrhNxtzctCK/jy
	 70x1q1HnFtk2GR6fxgXSbnsLloiLzpWlQmr5cc1qiZS8OBaIRdKIaMyISTZ4dGysVo
	 cFJRgUKhrnVD868lH8HHE60CAPeKbInQ+k933Eyjl3i+b41Gftlm+gMIKRnM53A5ve
	 sYxn6CHjCzOg6SpO6LSiG00BYA7xg1op4BkSgyHnmR6fn540NNIeQlsUsacIeFJD/2
	 fyf+z8vTlm98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5A8DCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177829965370.19701.17395591015118905076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1641726914c5c571689bc6185abdfc28755de4ed9ebc9f50625630dffd4312bf
Date: Sat, 09 May 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778299653
