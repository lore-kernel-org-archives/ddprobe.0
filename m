Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128F127A913
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753984794; cv=none; b=CM+NgR9k8J+2c6XvFgch17UVFsLNvFbsqzTPUKi3YpgKkuxzYIcLt4z21F9lZp/jCjFfLLFrOuiP+nArB7LVrSATvYY7fxAmcFhUzTMB8RmIZYap9eydE3mx28rykkvPQIYjNJU/kRUF2PxdP/pYKn3AVQXgkEntHsqXP6MauCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753984794; c=relaxed/simple;
	bh=FWXgtDV6GcEOjkhlpdDyrEMpECxeneHrfW77ASB40QA=;
	h=To:Subject:From:Message-Id:Date; b=sAYo2iPUkDMEvivT267pGxBPMqC8jT0ENASa+MDPVk7FrYVw4pd4+5/kHwYmZkArzqJ0p6HTTtMdskt1fLF/fkCnwlDT2sQMJ3eNfDL7u5lrodNPZgsxysEQ13GXCprxjL30nCx+q23jfvWfF2TfbG8hEmoZEAyt85zlFqGrCVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxxvtiYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxxvtiYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E49AC4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753984793;
	bh=FWXgtDV6GcEOjkhlpdDyrEMpECxeneHrfW77ASB40QA=;
	h=To:Subject:From:Date:From;
	b=WxxvtiYUneXL9alDpV37tr7hh5ygE8y5B4zSc39fsTDo0V4qw9MFEgx8T9kI+gaxj
	 E4oLOgNZYQCXQrEw7Yb1cFEJnJYI5lJIqKdaAb2ZlGvdsFJBmu+DTwvxkzj7x4f3qd
	 x08JAO9Y5nfMd44hBAskdbOZqCJ92F/dwJtMACRd7SkSj5SqF64aTvdJ/sEkHyCer1
	 yfbgGSo06fv7RCe5Z2ROoX6ZvO+PHg7xgzV4W8M+/q9FszDGn6WjbKuqGK3afLGwxV
	 rRZX66fPxP1Qr1B1bE3kVf4ObTkfnQxbgHGj9kP4hIIuc5o0DYigvzhYg5Dby7EIhr
	 UZhmQpqOl7NhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9005AC87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175398479358.14991.2785682309640710378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89d01a08b6955b80e94ef8c7f82b602bc7e52dee9fb339952c478089abf8223
Date: Thu, 31 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753984793
