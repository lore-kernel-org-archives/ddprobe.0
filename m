Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3397714EC5E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727472354; cv=none; b=X0+Klkqqr/3k0mDoVkQGS6dQszree1MfMXnt9no3wY9/E1MRTwLJKN+DKSH8TllbAwbbDy0HppkO6kwXvXF8KXuvCbv2AVh2Nsq3WsyEepjqtgv9dmlJUe0N/vRsAgs3GNqFW3w6U7Oer2Xf3/cGlOfxwQU6dZ20Bk04WglLLyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727472354; c=relaxed/simple;
	bh=9gIzEzdSppn1t0nHchaeixpJ9317k/IuH51VZ67pncQ=;
	h=To:Subject:From:Message-Id:Date; b=QvB88P8W/8WVdNPP9ZMEeo26Hl31oqNVc34EFQaE4WUGjNc1ruT5iwTfng6nIHCyDfm0QHK1ADpbv9jSVJ7L4QAjgMc4OS/sZ6Mg0UmJfe1u9X+5Fx+CX7Nqq+efZfxahcjsDlfdZz7hGGSQwc3bpi4tObkV87gyGSZlsC87HqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdfbYS5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdfbYS5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB0C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727472353;
	bh=9gIzEzdSppn1t0nHchaeixpJ9317k/IuH51VZ67pncQ=;
	h=To:Subject:From:Date:From;
	b=LdfbYS5kFXupYE4nygljSw3AdhsURRkJCtv/Jc1xhXPZk5lOjAdlTtTC3kjwOO2Cs
	 4iHmSKx48s4tIXdp5ZW0TwXi0amuHH1YCKt+meJRwtqRins3+1OpHDVWh4a/cvCV/s
	 T7MEtuzRTaa/TETYpD5sI7ZGdFQsv5pF/AJfhUD0WNW14qJ9kveEGKUqw+mkXOe+wc
	 Iy1MWUi6F1nEzyyGcy2BrsWl1ZU5i9wKjEzAZ4ZJSubCc7E5L38wLUUoDlZbcFG7Oo
	 Lwyf6oZl8s6OMR1Kpapf9rAaNdEp0oDRZKZf8fsdOL58adXMTLpSCUTLpN9fmVOslm
	 mO6w/reQBoCiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963A9CF6481
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172747235360.24608.9987098908577970491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e42a36c9f2bb7123d93ca567b369d653b933ead9f5b6aa4e4606a8fd594e8375
Date: Fri, 27 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727472353
