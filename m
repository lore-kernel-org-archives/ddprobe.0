Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05E4189F43
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763777513; cv=none; b=acXMrjuGlHw50fgcvDj6TijOPBxL1FytAE1O7W+X34Ns4lGQYF8EqiFk5EYUoYy0bW9A5FOhaft+xbO858u/P2kVgV9QhcoqwyyxQNp0aZBYsfAR71p6mqSXyJrHzf0O9cnNkaVYztI3FspkybzRGC19wkQJrIeHqpWlr90Kgi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763777513; c=relaxed/simple;
	bh=GGM2dSl5RJTHnhNLYuMa6p2ONY0Hb5A2xXNzN+1lXZ0=;
	h=To:Subject:From:Message-Id:Date; b=ZDqVqtQxZdFh3kmeStvLC4OAeJ1GMbogbpsSCTVb/FhYS3ozPXMDGeVamZGDfa0etJP5RqftNvfE7CTNoC/S0Yj1G+DIG7QUddD1keTV1FkP65wijrOGRDdgcgRHdMYGqZSjtG9lEPxsuAGU01ITtghhJy279BoCezMQOEPN9ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3wRIw0k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3wRIw0k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C38C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763777513;
	bh=GGM2dSl5RJTHnhNLYuMa6p2ONY0Hb5A2xXNzN+1lXZ0=;
	h=To:Subject:From:Date:From;
	b=S3wRIw0kZmRuJTs5CbNtCf6xOzeqIYUv1X/fflvDOktFLewyLGvhMHI2x3HGYvzvy
	 D7MYqvob9jUZslUeZomP3aGoT+4gerOizTq3AYzMw28zr2XmkqvL5eqZDr2udG9fZw
	 JztCXDmY9iD7V5/fEwpYLD1qjcHnjhYu2IQUTMkPiF8hjCscLDgpERchqkhhxTf2ft
	 njIjKc0aJS4E1nqQIW9wpRpyC6ICCABG6VddZWI+U/TNzH6V5B5jp7bCGMHB5wKcil
	 pciVUTH8EFNQgaOB2uM5iOYeZxblOneJFiFRWzrXTAtpmgPWlB9zHRj321t421BohB
	 cY6LeULUuz5vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91547CFC518
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377751358.2778.5614029720524201174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07b6a6f47283b48bc44247ec550c3dc8a6c607373dad164298e183eecc2871c8
Date: Sat, 22 Nov 2025 02:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763777513
