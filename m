Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F52330B2C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769424834; cv=none; b=bxdkVtHxXU0MHowUhnht8IaOcwHB/Qf7clGZrZsns20ONis0eKTPvPXDw7a02i7Q3ChQlpYV1q2mDZbMbgu0PIm6I/Q9j3BfX5qne9SVOHmYcrEJbCdIO4KfIRgRBFzn9sX5IrT9iEb0DVeOpQnijstHQN9UH/zgB+WQJUcAfZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769424834; c=relaxed/simple;
	bh=ACWh5V1IZbZ6KRRkDj1/qWlGw/U8Jrle7m4z1Lic55Y=;
	h=To:Subject:From:Message-Id:Date; b=Dx5QworMINNVucT8p3hrPNIOgLFDjLNF7rEvqHsC6tJPIi6sfK4BvI+kWDH0jsD9Aqj89P2ZXgzYrVVedt3dBcWA4n9vbN5DKruk8QOLaGnbdh2Cxji15v8tdWz5dKefjMDd2/yyuDGiKrBqvNyL0KsWXvZ8pu3yL9AmL2G8lfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rijS3DM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rijS3DM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42D9C19422
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769424833;
	bh=ACWh5V1IZbZ6KRRkDj1/qWlGw/U8Jrle7m4z1Lic55Y=;
	h=To:Subject:From:Date:From;
	b=rijS3DM2sKrqIp1btPlDzl+VRrM52+AymU8L61DRY8WA6l/AdkCxLptp9oMtRZXNl
	 kIZ1owuo0xuYwtfkTHoNMs3LtCBd14u7hXud7+d/eS5/ZfyYTDjRXcusROiFYkSx2L
	 tXBjzC0pn9IuiQZ2lpSkUuB7LtNuH8DZFVQrIq5gvYe3z+ZjEUN/PM+961xNDHdfZx
	 +GvNnaqMtVHlFqeMmuTWP6Rmnp4bCrEMwjCUxxnoNj/2wDX73d6NBrBNJ+FytMc1DE
	 8QZSulBLeQcA3bIb9X3GJgSErO6U2cdKRRdgwDPgo6JnlRc8DjR5BEo8IaO9lrw9DQ
	 yxvqPesdRGFyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C26CF65DB
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942483360.12600.7753030045765758335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e41561e95f2b737052b3cabb5c84a5d34bc2afc4a00d6e2592008de45155bcc0
Date: Mon, 26 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769424833
