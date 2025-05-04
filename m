Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2344738DD1
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746364194; cv=none; b=HLV8Mxzqo4OyLDc8KxefV1PdjSRp9taVfSD6b674aREwj0s/yDXltF+wFqztSoyehoW4ZBLHJdT3VuNzS6A9StwdETKG5o2kZPoVVnw+USKqkMTet+EQLm6dslll23eHKiLOWKAgcg3ROMtTpFAElrqmADM+0IONzPuss+xBLVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746364194; c=relaxed/simple;
	bh=Xnm/0frzO6eUU00Ovim9MzKdCNuCHHZkUBG4CueNql8=;
	h=To:Subject:From:Message-Id:Date; b=KqN8pyShDp250SDgUWV5I9oUIAf+ic3qwVd5q5LtHtm7Y0dim9Lrwg9H0brA1uaWHUQ/Mv2bdYSHlULTkcychwBISLgJZg8TjvV9sEgVZ4PRhwYI9mFGTkl80n2nOmrXfD6Mz2ReoLMgC/f8QLJ9jN33aoBnSfofRm/M0hRSt9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1YGyjuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1YGyjuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD4DC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746364193;
	bh=Xnm/0frzO6eUU00Ovim9MzKdCNuCHHZkUBG4CueNql8=;
	h=To:Subject:From:Date:From;
	b=P1YGyjujHPwp26JI91VC9/cpK1yEybSZYPlxb2CX/7fWjpeQRgO+gFwXeGRPWcZ7m
	 j7Y1cv7VLsvucotigx7C3UNqHlJLxqIyK4T6IGq8GgPbwmim5a+mqkE7EeyugXl+YJ
	 9g/xdPTG0z3MGFrbDerT0VhBfiNMq+UGz/MjAVkf6jml0ygxmuyc8Ip49V9M7n+GSc
	 eL5j8ZfORo9EvhlXyDfP44l63Urpmo1bD3joIP5JMeIBNBjm7WPb86EXBJhH2P5C/5
	 5lGQSjtBZVYwt89UhEFdV93dg45Ab/9HO9JTCI3si2dyEBUKSE+4naDc/Zp3Vu40q4
	 SOnGkzbgdZXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90732C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174636419357.25189.2416958707227238772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b04182d153405f64fcd63c42d95912eec688d82f05673a954fde922f6a42483
Date: Sun, 04 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746364193
