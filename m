Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280B82629D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764103974; cv=none; b=jo5wmqEi5qPnABHhuqEnteq9rkcE9ibcadOnpuGC93pWp8bCQNuQn4YWWC6PFcnmjxJeUyah5FroxEUJieJTMcDOHHrY8l/ZsFZnYf04t+z73azC6drMZhW74z0A8SUfBrxVexJ1KyNg5fyd3hUURaY+o3kc1v+0wnw+HaWv1OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764103974; c=relaxed/simple;
	bh=Naa5Uj4jXoyxXR9s46z483vt0oj+XXXdYs24ud8XT2c=;
	h=To:Subject:From:Message-Id:Date; b=Yy38cQQW1EhzIj6/ndB/FifU4Xz3DliEHi87YflUkPjHz9ppUNfN/Lfo5wJdVCfY+2bEBJ6o5lq0NKhXzeGu7YWZjtSHqKt9kFzqWeLPzga4u+m9NuJfZd/WBZW/1Iu927aKD+OpBO97oMyLXPqkPK1TnbYSrFjoqH3qhifZq3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pX+p0GrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pX+p0GrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB849C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764103973;
	bh=Naa5Uj4jXoyxXR9s46z483vt0oj+XXXdYs24ud8XT2c=;
	h=To:Subject:From:Date:From;
	b=pX+p0GrQeKGSOoPVIT+u5TZAB0iQsfEmVBw2/mUzgScip2uAVECobxo8Dsv9OIvUE
	 N/7qx1gXOeLZqIBWWV0Q/fay5QMkBUjQTfbXihfB/s1VXDfCvaIeUkoqbQCjJvaeOS
	 uGmOUorwwxjqaALwf/KPGpL1bNJhYCt87l9fpvclScW2q7xC+XSg0yuckaKFT7m+xR
	 NbeAvHQjhgX2jT7oXa8MGbILaPhE75odF43gUTsMSfCjfKknnUgqPvwsFTvQohuH8N
	 D+Ov8plPE5x3tFyuHtt0kBQ5NaX9+o8qK3/dm0QUKebpO68xBJWEtvuaYS0BQyBV+K
	 4JEjrVTZA/DTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EF2D0EE1C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 20:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410397358.1713.12662746784502803396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06cca39c5a5c0d2e1b2cf78a1bea6b8bcf1723ec8508339cd9c489ad79d8bd81
Date: Tue, 25 Nov 2025 20:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764103973
