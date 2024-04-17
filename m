Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736E86A037
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713341363; cv=none; b=d4OPEGLtNuiGfyCzyG8AN/z+1ljzS0XE4am75mdMeBD9OgBkixPphgCeyGcP8rSJ5/DzKwE14eiUMJUoLH5Nbqm7rr+OSjh5Kmm23KI8ERYG6ytdpmQG2jc2fjTSIL3unLbx1S1/Stpbg4Z2iodziNmFFT06OLOYYqZYqv3mCbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713341363; c=relaxed/simple;
	bh=f8CsIMjXgP7rLmV3UTKwfp3Wgj3Ev7dr2DSil6WraWw=;
	h=To:Subject:From:Message-Id:Date; b=B0EYMxjQ+KkhbbwtuHyv7NSueZ5/FKajj2Q/pThtgi132Jv5L4QJbxkwvsigNRK71w6HytRd22Nam7LH8QYz+AXRzeKa2ZTem6+Zueiycf7kf7aIgLIIi/wYkXlwSqEZURsA5GCplt2F0/e0/XimwW0fzsRjj9d2nipk+N/baBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqJ8JYPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqJ8JYPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9D4C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713341362;
	bh=f8CsIMjXgP7rLmV3UTKwfp3Wgj3Ev7dr2DSil6WraWw=;
	h=To:Subject:From:Date:From;
	b=aqJ8JYPH3r65P5RGKrke5UxbxLvNCy9USxnSHYAIxHGrcAl+tdbvZySnLL/zdl3pF
	 kATO+AvsSZpGkwT/RgyzeUcLu0+jYiQd1HFRd811PwuvvEO+HV3ONP2XfyRjaxyRPA
	 IzMEZJ0i7Zz3C6FxYHap/q+GeoBSg+KE3OGx8/hF6oymZ0LYMhDCZeSk1tCi6HiXkN
	 RS+l79Q2qK2HWpWVvL10mb7wQC8fJW9qqQQFgICMSM3lQgAyDN08qIQBvgtVlud+U/
	 7YkQAD8CCnn4niQhqOUWNQMX7OOVa7/KFc0BtSTX4jYRscLZiHprbFsf5yTCyshHRo
	 kUg/xhBPpU4/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C10C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171334136279.22218.3122796381267684880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba68a6892ce20f0cfce28986264dca5aa6d7d7a86365c5849ce6d1183cdc8ba8
Date: Wed, 17 Apr 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713341362
