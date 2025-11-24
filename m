Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E013256D
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763965314; cv=none; b=im12UP3odkZy+N4zQPjAvPP8Yj/qaCTEfzqju/oucZlTog3bq60aPCnoXcLPTPNvhx8xZzGlZrUORSrPEZtQHvmeBXzn+gQmiOncXRj9TVPd2xaohSIQgKTlPUmOt/uk3xcr9/nUAwf4wPm3WpF0gtlDPjFqoTcLa/nBNkIu4uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763965314; c=relaxed/simple;
	bh=QtttWHEO8Zw5UZuaBh1SXdNsSxbBUH2p+94tpybWxjQ=;
	h=To:Subject:From:Message-Id:Date; b=rekfLC27KbfmXeGYxjfYViJ1d7BK3yTCJE6PFdXjjb70mEgJIuAYXp2+OLQI1V+RnqikLQMQhVntysuXCWfSqRqdvPS4KB1BQ2WmA6paiuLR897Zdg+KWFHHpzkz/57/ze/ypdajyyEFpOb3l18P47f/IZ/yfuXh72TAsVQzPJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auxmjAvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auxmjAvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763965313;
	bh=QtttWHEO8Zw5UZuaBh1SXdNsSxbBUH2p+94tpybWxjQ=;
	h=To:Subject:From:Date:From;
	b=auxmjAvFGr1H6Cgs2GxRs42yvbM7lyZwOFrokaaiTW+BngM+D3dTcY5fzlWCHYbc/
	 BV2d2qmw61MsBwl1ea6CGCuH5tcXVLrLjTj5ex6OepYuAYVzjoL3k5U7zqPe2VmOFA
	 VtMjgHTvCu2767uiYAwKuaw7XitILK7tV4/YIZvThSHMgflxBbrQsEIYozmpSedCca
	 rm5EaPlyshMiJhNL+5DjWwpexEs9IPJCF8snz3q9PEcLBJwYIzvujpniZr5qLCq2m+
	 nRpa7HjmBTYX5jdROlVRKlkSviueRwh/g/wMsj2Cu4oX92J6rKJ5bm025capUw8TK2
	 7inngrF9Jyk3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921CFCFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 06:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396531358.32155.4571433227267064684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8c0de730c092c920c320eca5d066ae27b3f41dd97f387b9dd1dfd056e690868
Date: Mon, 24 Nov 2025 06:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763965313
