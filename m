Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF55406281
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779886354; cv=none; b=tRgSxMgkKdl1y2LHxHhDZCC655fp6xWCiPzkYr50cJRvT1femEdRgp46YnhZBAmbpTRfrpY3AZ4ZaO+Jl8+8noQz8WNckfEh5FWu79RTh+CWBf5a2YuohivzjelAixKlEblNaRTtqSEjq0sW/RYj1BclDKD0HtPPAXZmrNQQrZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779886354; c=relaxed/simple;
	bh=XYBPu0r4g4oFLeYB+RM4Wsmne9eI7O591UosvyyFAL0=;
	h=To:Subject:From:Message-Id:Date; b=Ch2dudKsP372D69xH3osNaWgzjVSu39/QKNfLNWiJjvgu384twfZJ/dIRriOv5lYnXYP57FmjofKw3c24nCjgdCrltUwdG9Y+2dhe91KrY/zMwuqMzCUnz5AZZ2sy70/p4YeB51aI1vi7+C+TRKnqw9PnJacRZUDubc9CnwDi3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXLSqM07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXLSqM07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF0AC2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779886353;
	bh=XYBPu0r4g4oFLeYB+RM4Wsmne9eI7O591UosvyyFAL0=;
	h=To:Subject:From:Date:From;
	b=bXLSqM07dEdzCdGffloRIx1xhRAhPb4UWKn80pSy+IJyhZMHdTOx4VK+AqH7hzKJH
	 X8/oJZbBHr1S3SJqmZRi8Q6vuvEbkhNsAUEJRmx6hZ6uV8ICgqzIij5tkCa5F1kHg5
	 lE1GmzhSyce+j8Ga4QDQNLORDir63rJKFzmSYhEWyfBhGF2DN3iEOQhrydsthSFk7E
	 HW4XcO5CEUmEKuJJqNGdHS7svHnx+zpOl2Y5QknDbgz5+CGM2fcLWv8y2xweuOAuQD
	 IQSWgwl6bIcMg7XUXLmOaiMc4+c9em6mJsPrhAiZ6jUHk2BBd83VqCa5tIwaw1gIvJ
	 gwCGy1TPD7l/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9996CD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 12:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988635368.21787.16879942197357525562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708917e09f3e7534db4187f19378b97dd63dda5cdff78a44c959505717068e06
Date: Wed, 27 May 2026 12:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779886353
