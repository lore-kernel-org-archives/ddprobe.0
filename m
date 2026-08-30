Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4FA25B0AA
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788064234; cv=none; b=paPqEQ53ePEi4oh+aDxqJCRzmW+Mh5CnYMUOMvsPMldAtR0QD0m89MJQRyLwqFZGTn7c8Bh5kgBTdk+tGFQDxscegi7qg5ilSwws7FxCjRA/GTFy9KkskX5Ocx9pXtk5ta+UUo/LS2KhTWYy5NEHDyUpUJvVRqub56Ek3q5hMiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788064234; c=relaxed/simple;
	bh=0aQXxStEF69dwnGUMK5bFPcXjZj6IndPcaB95oNU9Yw=;
	h=To:Subject:From:Message-Id:Date; b=aaGWLL0xlb9G4yKiij7Hu8BTvJol+YB9QH/7ri1nl9KVfek+LmqRRYi6JOttrNlJB66BXqGUDHA+Nq+lnMw77ijhb10Fl8RI/pBRZjSPX8zmoey5Z2rXCGNQgeMKjBvr9zXS/h6o1OpgRJQUfh2ze+F2FENF3lTAJufMlE5qSHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cau4x8eD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cau4x8eD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDF12C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788064234;
	bh=0aQXxStEF69dwnGUMK5bFPcXjZj6IndPcaB95oNU9Yw=;
	h=To:Subject:From:Date:From;
	b=cau4x8eDoO3SZDltNAlAMdpo9oQhfZnMd167XUqh4+ZS9+FQEg84OQ7rIjcchnrms
	 r1fsQaa3E0mrVBMRJ4wG4CdFen6TIQGcBxjssbPK+j85/oJ0hVxCb5zPtULIJ390Te
	 /8m2viWhb4MjMJ06DNKyGM4NHJxLXNPGrewANo0MGoe0hr7QQwxw9YBWoIHo8kEM5F
	 dKVabSgPKyFCkxvvdEzY/HAcjlP6KdhDGbhunQemtUz9I/Y9pjLDKq2wfVmzn78XYR
	 6t5jynR1+e5Bk6Qw71y4gQHB46uTM676rRqSu41XvpxQYBYMvwAKv22oe088Y1JCNx
	 OLwuLf+vFLQ7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0C1C61DD9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806423369.3620.8258085352353348660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f54e93544b84a6d65b2bccca1747330f74fab7a46dc72f0738fd87d74b81a4
Date: Sun, 30 Aug 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788064233
