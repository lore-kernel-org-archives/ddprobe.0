Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836C3347FFE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790047234; cv=none; b=ZjzV9fnBKOOx4xUXqg+9PFzxXYo95OmdJ1Oz8uCJgnMvJpvbZqSLNn0ZoETmFQ4/3WpoebRcsUZm0uiM1uvuWHYzzRcXf82Cam7I+JLp0rZxKWrDpPzNh6CXO8VcqKpyi6Y82QqBD7ltiGmJ/adUXs4RQgIxkk4ENYmi0kOfVbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790047234; c=relaxed/simple;
	bh=+3kl1jISnvh780AmhwP3v+S2Cgv9ruPABW5uxZbqLc0=;
	h=To:Subject:From:Message-Id:Date; b=OfxDgkAF8WPKRbosxIMreEsAghddkGQ/4YRunp9F63sR7m0tSQBmh/hJGm41WnBzk3VqXsOVcqUx0RY/DMnc+pEqxawYjE7VuAWUoCrIJ1vmyXfqO1Y28Zw42BslnWZxWReqDE94GtFA+E4MMhMBKGAYdIbdIGDfwN/DjzqAfDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCNDDj6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCNDDj6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC864C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790047234;
	bh=+3kl1jISnvh780AmhwP3v+S2Cgv9ruPABW5uxZbqLc0=;
	h=To:Subject:From:Date:From;
	b=ZCNDDj6c/v9s4HSrPKoXWGK++CVdH+s9u0NyDDLBSqiUP9tX0XP00HrfQ5G8ZtYsw
	 mhBK9NEaTY7E5cZMQufLy9/KhCLE6+OIMeE3k7zhx+wOGpElBMXB9Z+ydq4JyUt8xo
	 H5NQMn8890nZurglviCohbHmXsqNEJXqoOGh+s9sSUJgV0GWTLb7nrMW5J0PBc5l3V
	 fF3q6wgbzlCSCX0PKzqYOykcFPqbnYJb6iNkv9D80DyUX8+KwUWtOTVDUgo5IqleX1
	 rWxJWx8gTGaMKjdCN/q+cLz2g2pIxZmtbVlX5SXNcjsHGwe35sDA7PXSSxhmzuEp/1
	 VxcyYQ4wa7V0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEF2C982F1
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004723369.8192.1097048155631723202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 375cc3a8edd71f0f35512330d65c77e6ec88e78967e96ac0cd4ec6c5364cdbaf
Date: Tue, 22 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790047233
