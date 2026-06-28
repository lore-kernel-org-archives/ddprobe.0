Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B1F6FC5
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782679714; cv=none; b=N7iDkUnbEar7g4hwk6l4qCcJN5ctLZUeq4Dm4LupjeqrEmjeLr90FhmKJ3v9fPBh4OFUWyIso+F5jMwxn9BkjA2/hVq08+BZac+XTeGWVQ9pdDOIGxa1E8dlOOs2CvOav75ZqWAdL0/wnjOC/OSVMAct4Zr7YbHMgjpgdxZVIwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782679714; c=relaxed/simple;
	bh=UpPNil0i34h4qK133V+yqcuK4K0d1r6AB0EhUVizF6c=;
	h=To:Subject:From:Message-Id:Date; b=LXWHp/GVvbrFO8xHP8nOrKi6PK8rFGVSA1q9SsE1z0kEszpQZtp0a9YGVJgH3WgmZhyEnq6jdISguwY4yAkw37JUaIojZd6uORc/UUFHBqSIvQRqiimwT0wRi3XbpkxuZyh5XOtOeImO2/SdHIDw5wM9XMe8wvYGwyE4FIzPHAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upmjB4Nf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upmjB4Nf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E139EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782679713;
	bh=UpPNil0i34h4qK133V+yqcuK4K0d1r6AB0EhUVizF6c=;
	h=To:Subject:From:Date:From;
	b=upmjB4NfZRH2SX4YZtoKCFI+3vQmXX0OEWxC1qQjlw12CWQhh7eL6kyddH9Lgdz7m
	 Iy9mcpV9s6xvYhZ2b03VJqf5aj1wvhEkIUx4kNobnM0ORKmBMIJc7+HkQVdv2jJCbm
	 ZULjlCejiCDTMpNIkCNRLXYTjmYB3T2voZ/c6u9u5IG0MHXCeyt49IOVBdX8N85SdA
	 8xITnJinAi1e/0M5Qa4nwcL4vF3AR1mMOk7kgsGWbH/qtLQb6x2tHuZXrFebdhNA00
	 1gbcPLxxf5mLRHLFOi+qLazDaIFDW2ACZiH9u8LzQxKACDmEffIuBwcvRLGtQQlXQj
	 MRJJXO/y1GCqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E16C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267971372.5208.12683428035622736569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac7d0fc080d5546b50bc4adda4bd20537ad72a1d6055c40ed9a4c1090603091
Date: Sun, 28 Jun 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782679713
