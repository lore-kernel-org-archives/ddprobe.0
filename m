Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593BD3DB325
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789153234; cv=none; b=BMhXE5UKNwcbKBsYRiFedwf9bO3lP9WzR3t9PkFAqPkOVPkMjTjjuvwSxWCkY1/7Uh7q4TW5rYmIW9wOernEnFSMYioc2/vnSVtRN7SWYfkxXAzVgZSha80VGyPUPeoH6HjR2PUTfG3dqO6BM94ZpMQZi2XHSrNei9v5qn7MnSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789153234; c=relaxed/simple;
	bh=hKsSug/URZspATAmNhqfG9nGg69ysF8QYEXGxTSv6dk=;
	h=To:Subject:From:Message-Id:Date; b=Seo5V8HY66loOYMRch4Qc/euF+efL3I+ROZiXrQQ5OHDERUsWjFHWy1v07Z7P5ODG0CjANf8a4iRkAJU5TOHmymc6hWogdYFvJdI/tZPQvPb1MrHIQRsg+arGRsTcQ5rFe+nCBJYgpodDg4Mh63icLlNvpEHQGiwVJeHP5Fffz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwKj635t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwKj635t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B1BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789153233;
	bh=hKsSug/URZspATAmNhqfG9nGg69ysF8QYEXGxTSv6dk=;
	h=To:Subject:From:Date:From;
	b=UwKj635tsx5VImkkX5EMBoCiaVVV/mxhv/YFHauBGD7bSKVafYoQ/1tYxSS2eZYTv
	 cruweiIafq7ZzGWkswd5poIihbSf+CEKCgMHwPhOi4RtJUUgHncm8EFR9LDQIFKMPT
	 RGTnKNzFY/f/ghiOopJnbA7Q7n7Gdavx4ImopcKQlgtCGG/Uxk61T9jYQkoTMAzie+
	 9Sqz/8GIrUK9I7hvGOA+dVi9gKuTdxQXe2hFIQm6yODcNiglQobCM3H0cAXGaQWL34
	 Tx1vmfHC6AOdd6DBwt4szmM/05lftdS/zgy5gItMuLg4IBd2CWzYHmq9Tt/VcGGdx0
	 EmnT3iRH2MAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EB7C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915323371.9106.7363961774852336321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb430d10fb388ff00460ab6fc5cd232e035cc5dce314e0b33f1b63346cdd9c3
Date: Fri, 11 Sep 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789153233
