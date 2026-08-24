Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D28355819
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787583034; cv=none; b=UD6t+N2afxOb1wPnTlIoJQsJuN4SZmMRI989fj3omOY/XKMA+s5mDoBzeBqzdEtNyY7TiRuMpOF8mApvYSRX/XFRLp98rQtUnKNhR2c80PfWbHzXDuy/cYWzW24ZGEcIMvrpamFugzfAQ7/iRcRuluSvNH0GduS+FI/RlFHqAgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787583034; c=relaxed/simple;
	bh=JeEgYkpkKaUYdGsxvNnZc2e/KGv/VWyB3pVR4hw04sE=;
	h=To:Subject:From:Message-Id:Date; b=gwXB1OZObs3seLpqI4B3aDaHNySbAS6lKluFkTurVi8i8RA3NJDPqhnvkQxyxuPnOX/WT9KpJU+fWS7QsaCa1rwOjqjb6A3072lsVoFL6BMNxye1fo0jKh+qzQV+u9y/NIk/ulbY/rPPnZ7NHORQ8fbm10cS0isTpd37wxiUcQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jx4zkyri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx4zkyri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FE0C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787583033;
	bh=JeEgYkpkKaUYdGsxvNnZc2e/KGv/VWyB3pVR4hw04sE=;
	h=To:Subject:From:Date:From;
	b=jx4zkyrizHl15diVRaDO48HG7CCL0YeY+2FFNmXqpdTYdOKhGeb0JNFd+y1Cd5KGd
	 czpzEwdVNOgYMJnYDrtIKWI3BeTlUgIDq5VtnXJJSBwsl5pXPxCHeMjfQa78UPm0Ph
	 wxzTeMKWlFpK+FxOH1ltgcd3LakrI8Jo8NNVbpisfTdHKiES0kAPyZ8TTcJNSOj0sl
	 481mc+9g5RMFsubr1HX3lKeDQ9DBr90e3XPoxcbnTEbdZn7hheG985k6NJ3D5C2kWZ
	 3Xd8TYXOszposzGXHNrmYiqaNyJdMqX3Dy2UDbq32HQ9wg+h1CBUbMtHMYqplvNRwx
	 eHu+KqHtj9/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEBAC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758303370.10986.14430526563470884124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5828f6ca1c0897b3c842a88257e54112377b3bc7d81e4b25fbc1d556d36306fc
Date: Mon, 24 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787583033
