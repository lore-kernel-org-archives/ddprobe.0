Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08C130B514
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768040634; cv=none; b=HOfb7qZ018/3zOn9JpplrcQa5WMmbca/J9wTIX7q1MO4CrxYoPu9Uk+cMIX3TBP1pimYoARa0jnZ5DatCAD6cGjqmk+f3balGJZfzQv9fkL98PtCLAjvirq52nR1w0op2JOOu0GVNEyl6iLY3LGDFq+aX9+RLYGW+/Uh10Sy3Hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768040634; c=relaxed/simple;
	bh=wyZODoQrMpgQ9T1giT+uX0GHVVJVoWytrGJ7Kps4P+0=;
	h=To:Subject:From:Message-Id:Date; b=JB3l1mjNDcpz4zNSmDf7AZDpU06Hfnx+wTzlsCOakZ1A5nGpsd5uv9zpq4BmXC+tmlwQZcOFFQMRh21Qa8G2L1/WHp6AcBeJ57VCFforKviIb+s5b5uPPIZHaqRAU5OuJreit8+UiDqYFzCdqMYllDzQ70QrRWCwiHTsRFfV97M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGIW98aQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGIW98aQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9F7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768040633;
	bh=wyZODoQrMpgQ9T1giT+uX0GHVVJVoWytrGJ7Kps4P+0=;
	h=To:Subject:From:Date:From;
	b=EGIW98aQgJ70xy2DsKr6X0a9+MBG2UCjtOAhe8aF++bsKnoCnZhaEDhbwdyZjGPCK
	 O7KEGKzHYEsLOyuwPfiwbrfMNHe431fv1HqFp3wK9yuQsICm7sAYnJwAqrVEE6DWFD
	 8NR3C+jik0JXgABS5DBdwDNnd6ASj0X5s/4faykgB9pvD1JHhSa15TP6S8YufEPSs4
	 soL1ucLGWYiG5+xLSMHUwzawoErsPrnrHYKvsF/YqOrGp+4InNfw1xgt6gKwk3GyxK
	 39b1ooPdNKjhJxJ9mL0eYXH6HYyJ9JDrI3VJIRGGMYNnMwQRbpdLpeL7jdjrp2nJVk
	 X6/mCsCYrLoSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90229D277DA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804063358.29145.14356659128332830731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0024ac9df9da32f6ab0140df8bae6c88380531cf63b30fbcbf594816da408967
Date: Sat, 10 Jan 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768040633
