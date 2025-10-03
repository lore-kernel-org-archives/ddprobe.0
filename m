Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DC617A2EA
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759482594; cv=none; b=PK/mHb/ayV9RlcMvZW1umVHe1uMVK1d20MklrUKLY6zsjILn85ItENI+eEMq84aHBzZVO5o31TeH4yrx3QjsHyyPTOkUONnREKkNUp3w37xfq8OhDQobXgbwqqXBrDZfS2EMS354eV+A/5NkHtA9l2Kb8yoaZxLxnTmJHJkZGl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759482594; c=relaxed/simple;
	bh=cu1TddguZR8VxlzIvCSiq3vBQStRiDuuOaUb1sNGLWk=;
	h=To:Subject:From:Message-Id:Date; b=Z2fF9H9ItZL6w9VmnfzeoR5lNfo048rQ0FeEoKkD+sk/dPTHWb1z/u3uXpVzVXFKvWp1mfg47Jt3vE6GT88UVYbyDEAmfnSDKlZyR2OgjFtkt4T33jkF2WJq8cE+KQkRwQ+WAidO45UIDr2S8xsFuYNSY9yzmlM8I2P8uKqF2Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIgyM9Ix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIgyM9Ix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10C2C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759482593;
	bh=cu1TddguZR8VxlzIvCSiq3vBQStRiDuuOaUb1sNGLWk=;
	h=To:Subject:From:Date:From;
	b=iIgyM9IxrJAu1ZNuhniftTCCHQ52DGdmdJRm8OYMh0PK2aRg9OoYmIAT0ZkVW8X6s
	 9r/kCxUR4heE2w4satd0s5YwgBpMDgwgzY6TQOtQ4svB0uwml3C0CkqFYK5ZSvoKRS
	 9bgHi5QeLruV6mLAbyW7XdesjGUmRyCQbiUbhW8+UaIHct+S4Uskxh3f7GAKXL3J6H
	 MK1yfvwR2apOm2hMsXs5+powNJWxTDlMq+zngawdKoVgql0yGbFQVvBOTaxBu/P/Jr
	 AS+h2I+LtFxetFaMtmBbgYvJCVsJ/OHPG8Li5rQeDB7EmxtsZ3DmBX+ktnW76mWhsL
	 t/mZPzljuqKwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB5CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175948259358.1213.17701328321053794772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c32d495a661722fad07a92a7e3a598d60f665d5f49df3d5f58572a5c45121df8
Date: Fri, 03 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759482593
