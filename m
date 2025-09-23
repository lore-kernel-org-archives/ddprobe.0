Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9392DE70D
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758665994; cv=none; b=kaukW3t+6hBHeSeNZHA/VJPDLQW+9kb7IHd9w2gxW4E4ooMUYEC/rNv7zZRjxxZ7XE+qhb435CbTbT+4A0LKbkpwnW+Jd5UHFeIJbmvLA87+mfAxN+TcVyTOlZyV4VcFR0nT65Jnz5osO/6UR5i18JvOi/CFbnMyHRWaXk3HKWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758665994; c=relaxed/simple;
	bh=svKIjwzREOu5YPGpTzZbrtCyqLs8+JWZ4E1phGcYpRE=;
	h=To:Subject:From:Message-Id:Date; b=raWCXYRFoiqkkeC70Ix2lu8OA67/x+MV1n/5D9eVva7DxdGX//Ctsuey93cUsCsQEXJLJimGE1AaBV3g9C6v5BDT+DE+UCB6QGbrwNIVXOurmjhTGXlZbIKhO0C68tVCn6GYxOzl2mnS02mEHihWMmTJr5en17nQjBdCn1e3Bw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVJX4S2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVJX4S2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A51C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758665993;
	bh=svKIjwzREOu5YPGpTzZbrtCyqLs8+JWZ4E1phGcYpRE=;
	h=To:Subject:From:Date:From;
	b=QVJX4S2eyw+2E/u2l2wIAOW9xeXEGjpMO49d+voGzGJbbnu/iFZXBBRDMXF0IOAy0
	 9msp1CKouZjvA6hZZ5tQSXSWdna53sBs3zxzvt/vvBn0cNKZYvVEsWsJTDiyWG9UVn
	 j2R6p+Vc2lnkA/wrSvOlmHRPcQYooKUFJD5szzDGkYf2qjqcNiIXAZm/8EGkg5YUs6
	 mcsebdhU9iFlbbdj2DiG4NQCDK/C8bqfi/d/oGdejY95c8ZRQD0A3MDeuf7pBXMqfH
	 mBrhoL1SZQZBfABszKbaLA/EfPpsVCz63VpPnfc/g5NfAyyXxfWn1fmqyYGeJxKlAm
	 Lo0EUVZcSjsqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93956CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175866599358.11400.7207915507258053530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e2c1472f97fcad2a26d9de084624349fb6ff55fd6f3f09643ef48c42760141
Date: Tue, 23 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758665993
