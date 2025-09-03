Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EBB3074A6
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756904995; cv=none; b=ah2kaL++JyejuCwZA0fVktZdx8ym/gBPHD6UYI1GrgU7O5S1y3xAVzirHwP+00Z4bFqQuscOa3GTDZxMGJLXTUzrmujsw6J0jut3OS6NZ5ZRKtxOXgTkuPGWM+jEMQ2WYAhEO3pWt0JI9IQ+dOKnwlftDpPizDeIv0wPLqfo+Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756904995; c=relaxed/simple;
	bh=4Jy607lqPiT5CZ/ogXgLGLEEmY8xF7pS+U80UlFDJ30=;
	h=To:Subject:From:Message-Id:Date; b=LcJv7uRf90LqadZ4BzUKs1ItrH0K/qSb8QNZlo1PHPmSAS0Te/Zj/DZ7j8m+msWFOeoV+91Qcqg1E7Xj3caFrsNSwYeOCEY5yixIoOi4ZpKtcM+3VFunAMVELOpl5p1PM+g/oupojryvkuQdn7JaQylIWKXREJgn84ozhddyhYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTEdb3Ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTEdb3Ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFB9C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756904993;
	bh=4Jy607lqPiT5CZ/ogXgLGLEEmY8xF7pS+U80UlFDJ30=;
	h=To:Subject:From:Date:From;
	b=rTEdb3RofmfzDc0QZIeI4PxyIH46LmsoY9014yWEsmjGue5tH1wG5nwktYB8mHo/T
	 hJFhKW4aL3hqTxZj37GQOSFmPWxjr1OgH+5zPZYnq4yEhrfy6JBYWlIt8O50tQv/aP
	 aYwEUrhfLQ7Y6XobUyVxMyvwFLJv7ZEL9rWkIL1O5Jh13DT4Jsp/ZAy98teX7/geCp
	 ijIjLluV/lWOe3YnqlNVrcqNN414+YXG9dKhfmjpoT/F8AyQY7/TbkJQxzjCFC8qNa
	 DpyB0HjYYbtn4gS2wnXbHySYSOcHmJDdJ1htDdXZIS0N9v1Hf6fZAeVhjQZPq/Tp2v
	 CBt4I62iVgEWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E1CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690499357.10536.18050349926076326795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1b7c16da399debc573e2c3a1e126cf45cf89f3bedbed645fa9044718d3b3c7
Date: Wed, 03 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756904993
