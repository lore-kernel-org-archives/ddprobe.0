Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF5A31B10B
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791151234; cv=none; b=s60vlfLBe7R9mqIOY7fYmguHxaCScMpMFvOLFAI9ov212SpXXq/gGx5l0wyylLt/yjvnuvv0uLV/dHuqbnGp85taZ4ZAql44iCF66pcYdgUwdVnh//ZPtnTuZBVUteh8noQ5ekeqDxLmqit2sfo/q90k21U0oL/6fjXgZCVr13g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791151234; c=relaxed/simple;
	bh=KhTQ3ULZ/I/a5p85k9dGQuq9EVfnj8tBpWkplpgQ1Do=;
	h=To:Subject:From:Message-Id:Date; b=c3b9YNeGS3MmJEGHyOoTDaJ8UJwjk2lv+nW/IfV0JirmDeKGjsCGVLcJZMOtTI+D2JEPVHi0wk364VicqdulVOL6hQ+/t/pBG+A4TvPIYrgZLS9ZsraWb6P21DDjxHcYpRAISW5kO0LWAEnOtyx8mARagNasQP6PmVlc02ywuKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FXKhNcyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FXKhNcyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE79AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791151233;
	bh=KhTQ3ULZ/I/a5p85k9dGQuq9EVfnj8tBpWkplpgQ1Do=;
	h=To:Subject:From:Date:From;
	b=FXKhNcyDevwe4WmAksHszK1EXVJTgeJNXyT4CFqzzelAv4zM5DeZV3rvLVf6SEEb3
	 JVfqw9tDsuXi1JG+yFDwgkos2GWqqYkJ+x4E5Xa+yztRMw4wS+40FC8Aihj8gzoDRK
	 1abVyD0uO7buMmhCAcF1l0VWMbmTSg0V+rYbnFg7TLoA1wbyYboL1Fbdmy03AXSh0F
	 4wu/SIfmsp/Eyb3JNTPceUDSQYIJ2KdWA+IsoBNrIRUw1kJTu9JzNBWh2TnP02TqeM
	 ebf+Hh2o4AH2/Vn/P/lWirpxypTnUFc1+4o4ipCiEauEz2z7xGlErOmeFA+2qgF6Zc
	 RQndXw8S7x5kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAD4CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179115123369.22399.10867675748375628805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8a1f52843a2c2f711538aa757aa83d368c15cb1428a4d4823aea20d32e70b1
Date: Sun, 04 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791151233
