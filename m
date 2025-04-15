Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414392951D8
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744716594; cv=none; b=AhrDkwgrcMOlc2sDsizvDOX0gDjzV7JRGiY4wYQtARDELxh0MSJjDmXWBF30JeRD+zEbgGfrEuYgUbqJnQHiLkjuVjd4rj/xjDGyZY8FSgqFSKKoaqFV+qqyrgi9SO9qbS+tI72jtzfLkPdjPWrWtNXvAQUba794/kN1iGQnWeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744716594; c=relaxed/simple;
	bh=Xxvfu0fwJclLk923Wu6riTQSVxNWVhNxVz82yxTCfTM=;
	h=To:Subject:From:Message-Id:Date; b=dGqMIcHkBorrPCAOuz9Ju11n4lXqzyc0Y3riH2YBg1tHSz7HqqcJ1/DiLUmSrcIun7mPxN0OppRQbwbk2UKi8W1RFQ/qXArSgjX9Ha6H8B6G7oulMLdKMnYQPxLUbhFfrHX8KuKhURyTjuvH2P1SiNTWOuY45sT9ITuRzyjR5Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1jCX4EY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1jCX4EY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1593C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744716593;
	bh=Xxvfu0fwJclLk923Wu6riTQSVxNWVhNxVz82yxTCfTM=;
	h=To:Subject:From:Date:From;
	b=l1jCX4EYEPh1W9N3BmLj/bO/nTSyRwXTU7QnO9fWm9u5haQg/sGO2NmcZDNqUzo42
	 9JmxgsGUvy9WzkgR1qnokIe4m/wgxKNFr+fm+8mFCqyZSrFoQ3TT7NyBGbE1Y8DnlJ
	 VNA94Fxc1d+a/7A4PGeEbgh7/54I/XxG5P2WOgFpYpoSkkwELcoHwSZ6vyI4w4GxXX
	 svQHRBuZaH66wcwpYT2JXnYTkppx/Mcn9m9/jJveE1iM7nifus/DACQ2yOAPgRpY5P
	 akoJN73/hHQXhWOAQgX2ok7uNAqFN+iRiPOaK/lsC6aL5BkrgbN0994AqjYSXgOeob
	 jlZMP/Ej7U4Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E416C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174471659363.23482.2751300590183384557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d682f25e578c5368c1f8f23b29d337545ffb8966ccbee5988b5233c752d58e
Date: Tue, 15 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744716593
