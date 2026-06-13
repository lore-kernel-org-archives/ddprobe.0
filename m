Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5139A33CEA7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781349994; cv=none; b=tW4YPtwOw/7aUoq0shJ7GHoRC91jeYK5LX/o7pdogwJDv+G/SUbOtWGzpMaRhOPeJr4lY1XdNDTj3kfJ9of+rg2Ygzm8rsjFRjodGX0TKsy5kG/9XYef6npAe1dSntilggT8oOlnRTPZrJWZemRCTGs213jFGrdJ2VdccjaVR3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781349994; c=relaxed/simple;
	bh=cmGU759kDxMWVgtPQgDeIxVXFmAv93I6uqZEeqV93lw=;
	h=To:Subject:From:Message-Id:Date; b=P+NeS/aZvr7Rr6gbn55fmHMy9/VVJ3OEXYLzpB3UQ1Bw/5QNvtibn01gl5QvoBZSRz4SbbiEU7CgR5R89KqNLe5oborJB96wDNOUASZAtnI5FWybU+QpC/4Jw66VGldfrmqUA4yGBBSWFZFvPHBDHuPLGZ2OCiwmz4407pw298w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NScIHl6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NScIHl6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28B6C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781349993;
	bh=cmGU759kDxMWVgtPQgDeIxVXFmAv93I6uqZEeqV93lw=;
	h=To:Subject:From:Date:From;
	b=NScIHl6zVKg5KQjw6gjKePtJnfx3ieXwihY4WeYIH4k52fhmNHDTp0zPW7eVhnTjc
	 tTK2p4QT9SRHBridU79FN5vfoEkdVaIxEQPi4X8ON2whp0RxRnGb19Wx/2faubn9eO
	 v+1Yr03TzcUOK2ipvYSuxyau5Xa7JI8DDVMPNZYbBrNpxRegFendAjk1LBlP2noUXX
	 sopqMY4MEx+F458/I3GPwNBRj4R3fK+m9AAAMO5/zI6PodxUg9t5fOWR146s6C0XQ5
	 GuD7UrxJBrGu1GDoVXcAdDG5HvwTz9vt7GIX2wOiKL8mp0mS+ZA2eBzSmj1kj4nXG+
	 uh2ZBoKSKCm4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDAFCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178134999370.28673.7029763269150285071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9296801c896107f7756b2f4891579de4695c15b0ade831de61e19464d51185a
Date: Sat, 13 Jun 2026 11:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781349993
