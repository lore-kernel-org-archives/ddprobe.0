Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 168D61FFC6D
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762220394; cv=none; b=VgOUxeVd6ti0LOdwJPUrhqr/Xj72GAtDNDrUbyz+ogaBj4QAR0ervsmLlwbEJQaliN0kMJD89s+R8vOfGqtCEaqJiyUDEo8jneWVxKOlUmWpFpDJ03bRNsf3gEHGsGyPsdu4tY0CVAU7j6tlttLD6Htsqnr6ehxBMhom15WuTFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762220394; c=relaxed/simple;
	bh=lrf2p3wJLMh4Lws+O6DmRYXbEp0+akOE3cbX0GPVpQ0=;
	h=To:Subject:From:Message-Id:Date; b=HZ4TstzN3Lv2Hcz/2K0xyQN8fhuBM1R+PuJOc8FRPsvHKIlKCswlHit+fyMK2CQ0KqV5ee2MbgVX/vbD43M9ZBQckCp0kEUoFUqvv6YILaJHdld5xmZAzHdnoBv/kjAbXIbcL2DL5EEunK/oxxOF7vQ/eMmb3gXpb4kdgg7HHK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8Jrwqs1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8Jrwqs1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B0AC4CEFD
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762220393;
	bh=lrf2p3wJLMh4Lws+O6DmRYXbEp0+akOE3cbX0GPVpQ0=;
	h=To:Subject:From:Date:From;
	b=J8Jrwqs1lJ0WmrA5KBa+Iqi55/gkc4L/IC+Q1siqIFVLriE4MOSvVDgJgR8IJeXQN
	 /XPjD/VHOs/74iQE1RQzoAGdWD/ulOghkhrgsheh2Zqy8whvYFg44EjPtAiiFOcHDQ
	 uhNagCIP6pM0hGDCO8xQcLRPYxgjkkAjl8bKyY9nSfwQ1ORKji7yHLL9+5nh4twXHC
	 QceKR9QcjZPerb53VO9TKQiQEnTyhhmvB8xvkrsY6zAtnLc/cyw71ApAtZcU8vAy0u
	 wWTHcz4zwUApSffIUm7OD9aCJdzhbgyI05X8nlr9Astb4/T4x369Qxiyk8LJx1MIGt
	 tHblYyGkweNeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCDCCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222039359.4263.2180007799221632584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97883eacf2ea0bf544dae6092cea90b49c89a8acb12cd503b110b605491ef3a1
Date: Tue, 04 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762220393
