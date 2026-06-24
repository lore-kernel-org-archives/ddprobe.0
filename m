Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5AD274658
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782267394; cv=none; b=Zs6YGr3volQUk2OXjwlLIoW3Y46yt/4+gnYYNV0NAsDR8IJ9H5V+rs6idm0qMn1Pir3QkebqQ8vaISLMvA/JEUA1kFHap4CK+IC1yx4i/2xlk7k5cc6mQ4LBFhJyh1R94ostCXIRtQZlrq/k4r4IxM0tFm0bIG66IY9l2hdTmk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782267394; c=relaxed/simple;
	bh=pcnPwWakDJpiYcG/zgeJW3ZbV9CHL7XKWTWaKh46928=;
	h=To:Subject:From:Message-Id:Date; b=gpgz4tF502YN+ThYoQhXie4VYHZRG/HEDY5zOQIaeVl0trHU9AS/mzS2ZAmlpV19IYP2gP6g3Uu0eGNMPRNtgUHXM1t29FdeFIfXGyAQDuLkEJ2SY6/J4q/k2p3tKTY4e/0QX9pC0VcSkg4jwNqY6H4X7uo6fmkcXkqOJqJolbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcRZC3IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcRZC3IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5218C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782267393;
	bh=pcnPwWakDJpiYcG/zgeJW3ZbV9CHL7XKWTWaKh46928=;
	h=To:Subject:From:Date:From;
	b=gcRZC3IONogVMMQ8qoH+HQnsB3zuQESTsisNEelXAo6qZkB9jWVvd/GX6725Kvsz9
	 A8MFG/wS49LnO9hHarGU/VjhYnTGF6jksumEOj07Nyc9HAVAZnzwCsoL42EWP7dgXo
	 b+A1r/NOQ0FKyNm714pu7UkFt2+SEntk5wv7jGAZYO1PiiyMCnaXUQE7oMB31NDDLM
	 t5LpimXVPceiEoe5G0ZHzw+8CFrA+tZH4v6p+qVHXh/C9mTZWgcjYqOFgpPxVbyd/p
	 NKVqrs0F1bNRR5DjLsFvTMPab7fJ93es7Ah9AGZG0Yo5oEmvST4GrcvooVP6KquXqK
	 thxE4WPOYe07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80C2CD4F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178226739374.3541.9624466016990602436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14d5087027c7e9da45afd34a1fe42818032b78c490519cffaec3ee87936859e2
Date: Wed, 24 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782267393
