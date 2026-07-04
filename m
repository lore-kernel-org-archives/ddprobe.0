Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F813914E5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783163914; cv=none; b=GTeyXnFjmwd0BZnBmICbQYIhaPzKP4uvuVj7zpasHZSX0GI1PSQeRpUitNYgWbpiFp0f/pVyC9QjnxJYvzhGB7nYIQgDbHOzbO9c0IxSIiGelTsz+eW/U+ASRbdfraWkzuBNyHo1RxI0gy/Ha8HETSpDLQ5C+ZoQW+miST+aMRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783163914; c=relaxed/simple;
	bh=4yL/Rm2hcoVQFme/0yOVo+9GIW+bEa7C320UFO+tNxE=;
	h=To:Subject:From:Message-Id:Date; b=qwbglIgNpl6AM3t4mHLz2OYCq0SLPPP7kbL7roZNA25KBIAQzP9juCMV7ya/ZpJMspZRaBIakSWRdqTzkvxcUEoe5hJR2nEIQWaXH9dUkyVdX41CNXjeR/zF33qAxioOhDF+n03yoLprbzTIVVNcLyJwwoQlb2y8flTwz2sOWro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBB3khAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBB3khAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE645C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783163913;
	bh=4yL/Rm2hcoVQFme/0yOVo+9GIW+bEa7C320UFO+tNxE=;
	h=To:Subject:From:Date:From;
	b=VBB3khAWWq2UI1QO5WJxVjqLW5rqncXGGoMhgyh3HsIs6iTOF7V5J1k/sx6FErryS
	 baD9Ev/TZi6OHQGoX55KcLm3VL2bvkrOzxxk+dxIB9SU12upyfgVqZWD74OjpCdqqs
	 6gUtqaiyh4+RqI3ZzVVMtVjX8yFvhBf0RgpDghvKmNkcFxkYEr6BqnHmlzux3Ose5U
	 GaUSG6GdUZqDvXYXT2UkE5yhL51kU2Mic6XI6ejmNK5wk/J95nACaj1OslDmDalN1Y
	 GVIlDYdJZFXMx9PgBbe4JHNVVJhweHN0Y0h2ZB/FlHbfysVRHZa/897HZkKQQMkKoC
	 G7CScBrQesUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE00AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178316391368.14914.2445982254980977393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3013c79eb3b4843ac4333d1d932e2020a4fcd07cbc28091b18311b29a746189e
Date: Sat, 04 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783163913
