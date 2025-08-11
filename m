Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231372E5430
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754951394; cv=none; b=aAhG8Pi+UwirccPAgTm484zIYKZVq5d6mFyZc4wogHj4ioMtyYEJvazEFCV0xEAVr19mjc5NUituGjncfbgNTJgL1hMsMffXIZZ/qqBTfMQK3NLyRnkWMpTfGc9nxJ0qHxKBu4b7hBMsBD1Skx4w9w9h3SyU5tehehefaXrGO0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754951394; c=relaxed/simple;
	bh=dywOJelaQMv7pQKfSvEyM6WIeyUVl54f2LACJi2yD8w=;
	h=To:Subject:From:Message-Id:Date; b=b0YCOIr/yv941Vb8e+WNfhNS4JtYt/1OTuhmHDn0E8zwewJbpPex1H1ing5+MnrExu/0ld/slJKec4pN65NaJ+EnV544i7SyByQV8bGIXCoyxR183guzDVzaD/0tnnah7I+7LvYVlPQ211GmiVdgiaacemh3PkBS2/NWHEkO3Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhnzU2Lu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhnzU2Lu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DB0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754951393;
	bh=dywOJelaQMv7pQKfSvEyM6WIeyUVl54f2LACJi2yD8w=;
	h=To:Subject:From:Date:From;
	b=AhnzU2LuOy7VIavz3PxQMIB56su2U1jjj1a866b2sm4CPpu773M3uGHeVZEPQqCpi
	 Nr/LTAJYUNWXYlMzKIEqanMr9LWOLoJa0u9/4zbCBq6K+2oc3zGkXKBRONA+KMy3Zw
	 AD6Um5JxEyEu4wQ3+3heQwel882rGoVbuYEWnLSFgN6IxlcAE/8be/J2TKq5SfzWa7
	 dVdZBwWr0MW5UZcIzer1tnSe7WXn4cdczkB1H22QY9XiwLxGl6VuECqBEB37dCekZx
	 INndSPV8LdsqUIC7EHqm7ifVufiAlhd7mm0K8ILEmfYwvp4zpdJAW0jm0qmFn4DUGh
	 alg3Mz9Q+YrRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95881CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495139358.16637.3079163891229488589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b0ddebd7ff5bf95e00f810315a48dc2fb3092baa732f7d54240506ad16069d7
Date: Mon, 11 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754951393
