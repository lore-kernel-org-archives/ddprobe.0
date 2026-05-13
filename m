Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9256F3AE707
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778700034; cv=none; b=JXu8+TsaZobbe25TgX7RvoDplPzmE0IisQ0EFvcWv+40GE9mWwC3z1B3YeUZQjycc23mfcBpy3U61z7413r3+CwWUCZQGeBV8c2iUpcumJfQGBmetvOlvGobftsdI1GV2HZNMUS0sqhsMK4dPW0ztH4b5J2gfhmvQGneyQlzlwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778700034; c=relaxed/simple;
	bh=antBSvRb2JDPrgurRJyobdNIsPLN29dQreIYiYQmy/M=;
	h=To:Subject:From:Message-Id:Date; b=g8iFevIff7UgdfnyrUUlNIgt2fMWE5gsiA74pB1/TmriiPQYFR+meAXcLg0XrNsmtSwzj2ySwxB0qE8hX5+nFL0y0fo0Ylv/Fls1U6Q46kERJ/oawTnu1hwTZy4EDTElXq66uXESKqz4etFIP5JB/4ZareZcmX19gAFnjwPZzVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktgB4hDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktgB4hDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1821C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778700033;
	bh=antBSvRb2JDPrgurRJyobdNIsPLN29dQreIYiYQmy/M=;
	h=To:Subject:From:Date:From;
	b=ktgB4hDTV79Dk5CX9fZar/bircUCHk2E5vDbe6xdHmlVG/N45f4Yjsx4OVrI/+9vD
	 6ywop4UrUrMVwZiQ/BDkZ2aUiW51zhFtA0CFuoVDYa96HMVeMViSKjIZyxWq3fi1Fx
	 5IoG6Ts1rCQN0B7o8RxepjXyUMG2KP6ulA2zHkQJNdk5wt928VaJEz/tJ+Xt1R1WMP
	 fV3vR0/iMJOaDn3AZOZE1CEgjflsNicIOP+44ffIfDbFT3uWNzGw+6X3w0HyNRvtDf
	 nDxj1XKZVmAWXrqAtJoeAuX+jKZQMxtCWNccmIMn4vp1plrc8StOxgQZfxGjaiIhG3
	 1wd/rgujyRXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D86CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870003368.20038.13970445164982345952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d90a239ef18e99d9f8ee846900acf71dc39197d3913c10557b6e4f930878e30
Date: Wed, 13 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778700033
