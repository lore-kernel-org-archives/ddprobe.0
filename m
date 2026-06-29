Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24367358378
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782710914; cv=none; b=oYp3M/VC9Vpp3pdqMALl3azvMkuVRR7qP/0X9k6WP7rvndSrPtnf6zbdXsfN9LxKJiCAYcUnQzRvS1AjJMQCSLObgZbfRgc/4P5RP6DOMSpgCHSs5PRF/lOTd5uIX6psdZB3ixIl6goLXbMqmqw6H9g0mjtn4oluHYWaMqMFAgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782710914; c=relaxed/simple;
	bh=VKN9FyUfn3p/bgqH47TWBU3sKOhJ71btBGLvqpZPCQI=;
	h=To:Subject:From:Message-Id:Date; b=ePvQldTnspZw6peUZzeLOopKcgi0J+smaPgSrrM21+VgkJDTinEdMlmEwr8ZWXMEGYZq5gNR/XakhU5agZ+YNk2TaW0AJo9BIYLN2sRvZxUT0KSijxc/4Y8gozPZl4ruLbK0I0AOuqwftC2afZgE4VfUOJA/wKdnRu9U/l3e4go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ar+xyVKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ar+xyVKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8420C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782710913;
	bh=VKN9FyUfn3p/bgqH47TWBU3sKOhJ71btBGLvqpZPCQI=;
	h=To:Subject:From:Date:From;
	b=ar+xyVKLEICz+/QrIl7VWd66H0r2CMyGFJCbiyyxZ+lTEZSyes2KFqTm7gatOx+h3
	 zbZ6icYl/kXPIAHFNmOt94xMZetf/9FBMCLAQMdw6ty9A5RDBWsYJR0WXsr+Vqf66B
	 BKk2QszPd7aEFvizMi3MWuAulCxalg0FnZ2wyslQZDahvOeyBl9YMSmKw4VaRyDFsE
	 H1ObLelhmwLDbhoMQyZIuk1famoqe7b4V53jFJLfxO0iulksbDzJbm8DojkRrJZq+r
	 7svVoqM6/Qn7ChLfZ6Z7xBWYnYhZ+nFQ3Ls3hH+J2yW2d1CR0uhBS2k+1KA+iXsN0A
	 eYTTE/anVJv4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3E9C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178271091370.11628.17062362744590259554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3d3e7cb9543cb234c9590987cc9fdf3a6d4e6645d9206d7809780351841dae
Date: Mon, 29 Jun 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782710913
