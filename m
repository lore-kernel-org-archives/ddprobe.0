Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F15478F2E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784515714; cv=none; b=r72duYimSd+zPILKC8vx/myJbOM6nN/ZoubjFRyoG2fIgTn5s7mwpWT/VqVNUkgzTVXC2aZJGQaXVkPb537JTPgxhlaOvmmH9Ie8sKO78iO9ANjWZmZMZQyfb0jobLPLt8jaXxIcbXtaHnTn/Lvqgmyb/W1CaTpOICcI90ck4d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784515714; c=relaxed/simple;
	bh=ymOzTeK/cpAfHasR9v/caf9umX57ulM9zaAnZZxooxo=;
	h=To:Subject:From:Message-Id:Date; b=cdV6XXTUeR7CHIvcfswZPbKWwdNZOpMu2qYACTMMkJv5vHUSnQQA0FFTllHLtCfl3oR6ipaGuPNYUfbHwqRnyIecBH5NyVVxN2y4pkerpPL0JR0HBYWLX4Rj2+rG/EbRPgT8rtonfLqVnGEz2Q8hp3uUo9Rva9DqqdM7WRtxySE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rs9TQoy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rs9TQoy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94C9C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784515713;
	bh=ymOzTeK/cpAfHasR9v/caf9umX57ulM9zaAnZZxooxo=;
	h=To:Subject:From:Date:From;
	b=rs9TQoy/Xwv1zS3FiALGunqNDOo47EVPUjC+rh+BFl+2UhX5OfRiUKXU/vQsu9axE
	 0jNqrQrxJAz4hHoi7e2ex3bzWPeL3POpXcpBRqIUUGNxOlzF3yh5ribu/AvecyPEaX
	 Hw/kIo55UgbTGRyk2jElx6Bb9YcSa41q6dp6dfpNkubrS/i7ajT87qfOJkAL+GZY6X
	 6osHk28XTFMmYOEKfRQzwHs9dgvzCYMcL8dSY3OZKRF+23UVrnXdpe+6vFZipwiqgp
	 noklvtvAargxoZPmJBv+Ju+c9iTEw69FRpJdWEnbgNc1Y1g445GsaUKUXkN5BvFG4a
	 PzyCtM0ApzeFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3512C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451571370.11562.12276797161903308909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2986a22c3b4bffdd1f24b6f454c2af2bba876deb1ec9fa7b0de959610e764f58
Date: Mon, 20 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784515713
