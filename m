Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222761F03DE
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772030094; cv=none; b=YNHU3PMwiKDuqO+ieBJPQsuW/Ooh4pUtlLD7Us6vJS+GuZopuqrjldPIJaWNTmqE1VMCNv+3on+9pa3+txrrWnAtWc/MkXCNaBb5ibovXlwQCcl+UULsMqy4ohyVrh2Tx9Ux6O1WR5I9Bq5N5AU9zRUOpMSUznEQofO2ZE4kEvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772030094; c=relaxed/simple;
	bh=3CaL9gf33BUcFGfMcIXCwS5qZ7L8H6+1S+zyafvS2Bw=;
	h=To:Subject:From:Message-Id:Date; b=tWty8KEJfhiLisMIgMyf1t/XubMzVA+ZYPT7cZl/yWplLcH6a+v1R2x7QQelWmEi9xdO4uU71lwm9Bp6L5NEz0ewdcNALa3TAm7Ia4thrPUw8g0S/S9W/zn0UbwkxsP/WhiNmezJP3p1OJzjxYkUU/LN4isZE0/j5x7iW+daxyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Msg7/EB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Msg7/EB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B061EC19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772030093;
	bh=3CaL9gf33BUcFGfMcIXCwS5qZ7L8H6+1S+zyafvS2Bw=;
	h=To:Subject:From:Date:From;
	b=Msg7/EB5Lyblg/PyJgL/O4ZWoNCIpXZR7EFwt4X6Pjlcr1CkZyYr7EOg3KO5zuiM9
	 8xMUAySd3G/tqT6YxtevsovPPSD1c+uYUDrHuI9ylUNKwHc9pa0Xmwrj0yIick1k4F
	 VyBDu5DKgUGYnJvAibip9DfIqSRGXjzb3FFqCqc93ZxOJwRmYfM3G0QJAisIFPDlhb
	 4+XChGp1mYaVAQX02KeAHDdEfXD9lTFu5MvZ0t1E2+BcH7yNOPlh7Z5F/vSTDitBdB
	 7zkLMIFUT1Ntpn27dBsWA05SDLBp6e3hXnnT7vPsKgEGd54xa/PY5usS8pv7C0wKzj
	 9lMA//Tyane5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E984FD3762
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203009361.828.16702577535767898405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2973ff1cdf17dc50ce09ab24e150a69eb444cec3bcac76a4b046206776274847
Date: Wed, 25 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772030093
