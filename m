Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47318137750
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749611994; cv=none; b=r8jWEal09zAUivdJR+P9TaAxpKSjqqic1vjA6T7Br3ncM0zKiwnscHmupcfPwvMOk43hpP30k5NSWq/VMqw5NXg2FmUmECeWSgHhmQeUPL6GnOGchKggtSlR8F3p+CoYXsQr3MdoQ8aa5GREqn66OWPUdA4oSZO+loY3hrn2uXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749611994; c=relaxed/simple;
	bh=3lM5EcQ5uMEIYrZFwTtPkNwsSq4KcbaMYguy02Y7LMU=;
	h=To:Subject:From:Message-Id:Date; b=i5JDpehczLNJW1Bn3jK+zq/k3Vc8yAWyOSfRYPJDDXqkRMHZdPr4gKY+SsH6SUgq4KIJTKmBuPYr76AanvaU4GGsFY0za8HLVIxynurtFrVwM3nuS6MiA1lnYnGylR9Rxn0xn+0ecU64ilElJiPbaz3PLJsqPWkBUg2cX3SA+H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+LhJRq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+LhJRq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D9CC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749611993;
	bh=3lM5EcQ5uMEIYrZFwTtPkNwsSq4KcbaMYguy02Y7LMU=;
	h=To:Subject:From:Date:From;
	b=m+LhJRq/4fcxkTjVb13bx2WZNEYsczJ7IyYZymlTyg0MPDohM+s0fS27eJJwnmXD8
	 PCk17eR6iwkf+a3PtDijXGcqHEcJ3rTu9EUkpbTi/JQqvNswgoQkwmoQHT2H0StX5N
	 H2wOZHefPFvU0FnbmPNyH/oumMHdczs7WuFgaa/+lGc88O9jAEQhRzZT68/Dh/vpR+
	 725PCBybUukjP75YIteI2SoU4kH2oC+MTsi9cRVzB2EOhn0fJEIdIATeXYs/SNlaqE
	 rV4IvLzNxJn2/8JDxWXrEs2nTESkB0YFWNn//GG+6yQHZCoBz6gcMOI4Rl8ivWdBTC
	 i8ydah7WIdarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B739C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961199362.19769.306287691519561039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b9c8f55362f76ee3e4b0555a6ad27eaa63896ae62b9a6fc928ff1051b0fcbf
Date: Wed, 11 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749611993
