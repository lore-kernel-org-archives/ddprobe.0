Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4461924679C
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752533394; cv=none; b=jlhBD7T0A1LoCdWwFDRKmc4ag6he2lRxGUx3VVSyY0IynuKBBgZmbU1luDD8jyObq3FAA+vrqMHSDBs7FoOXtdNlANSlXRS8txDsKrfrqqU3TtW/6rP1/4t52WCLFtE78CjgDUUbssPvHgTvaeJrzlboP66B/F5lqFczvAlzPiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752533394; c=relaxed/simple;
	bh=kE0jpXBZEgO0kom9uMipQ/L5o0y6J5dIRAsoEhSLcQA=;
	h=To:Subject:From:Message-Id:Date; b=ogezZE9Gx/mzDsT/ELtoJl0WDdcyVwuCf+NWvndpdgcX9vm0052Q4hwmkEFGL2lusz1unHWzohBYvIS3GW4CDXGqTwPaUIgwpK5iVPRebRiVpJ4EhrUTxmvJ+Y09V5DicfOm11uZnmC3X4f9Q+jHlvfjvB8KoEbORoDnfed0GCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6xyVsIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6xyVsIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECB9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752533393;
	bh=kE0jpXBZEgO0kom9uMipQ/L5o0y6J5dIRAsoEhSLcQA=;
	h=To:Subject:From:Date:From;
	b=F6xyVsIMu4mXclYK7h8MW4O2cWYzp0jdOqAYOi7X1BBxH2ocsoHJK4Sk7LLz2z9UO
	 oAjYoOGrgJKi3FLv7jKNNZaF0p+6chuotTl0PxbUiihl3KWd/flwFBnBzl7qPbXULt
	 GXX4GHLFaYsY6zlkvssBDtkUVJm04uvqVFiBDHZnNF1zNLIJTd5WOVHINZTFWaFCUQ
	 hDFsnB5PYvw39ihxGEMXUD7kbOddVCsA1xg4schmYWbV4zkjjdYIotkx2+dxBG8068
	 vhbwVwK2w30v34jA2X7bd9BYma57K0XTVxsNrhfHgM0KVGuaJpWQOfH/lwICt7hguS
	 m9nWeYpwI9bnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B856C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253339362.9050.17435519642691318782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6288dc32849b7abe09b2228c2ecf00d18128e97b3a08e66b7fda815d0063a560
Date: Mon, 14 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752533393
